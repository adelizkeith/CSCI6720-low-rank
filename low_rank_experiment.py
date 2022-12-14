# -*- coding: utf-8 -*-
"""Low rank experiment

Automatically generated by Colaboratory.

Original file is located at
    https://colab.research.google.com/drive/1MPI2w5g5lpaZ-maVVp0HncV_fsyLJVwZ

A experiment for low-rank layers built on an existing MNIST example.
Original example taken from https://keras.io/examples/vision/mnist_convnet/. Original author is [fchollet.](https://twitter.com/fchollet)<br>

## Setup
"""

import numpy as np
import tensorflow
from tensorflow import keras
from tensorflow.keras import layers
import matplotlib.pyplot as plt

"""## Define a low-rank layer class"""

class LowRankLayer(keras.layers.Layer):

    def __init__(self, vector_length, rank):
      super(LowRankLayer, self).__init__()
      self.vectors_u = []
      self.vectors_v = []

      # create `rank` number of (u, v) vectors
      for x in range(rank):
        # Make a new vector pair.
        # We have to use the add_weight function because we're not setting the weights directly as properties of the model object. Otherwise keras doesn't know about them.
        nameu = f"weightu_{x}"
        namev = f"weightv_{x}"
        vector_u = self.add_weight(shape=(vector_length,), initializer = "random_normal", trainable=True, name=nameu)
        vector_v = self.add_weight(shape=(vector_length,), initializer = "random_normal", trainable=True, name=namev)
        self.vectors_u.append(vector_u)
        self.vectors_v.append(vector_v)
    def call(self, inputs):
      # create low rank matrix by summing up outer products of u and v
      # I'm a machine learning newbie, so I don't really understand GPU parallelization.
      # That said, I'm surprised this code is easily parallelized - I still observe massive speedups running on GPU?
      W_lowrank = None
      for x in range(len(self.vectors_u)):
        outer_product = tensorflow.tensordot(self.vectors_u[x],self.vectors_v[x], axes=0)
        if (W_lowrank == None):
          W_lowrank = outer_product
        else:
          W_lowrank += outer_product
      return W_lowrank @ inputs

"""## Prepare the data"""

# Model / data parameters
num_classes = 10
input_shape = (28, 28, 1)

# Load the data and split it between train and test sets
(x_train, y_train), (x_test, y_test) = keras.datasets.mnist.load_data()

# Scale images to the [0, 1] range
x_train = x_train.astype("float32") / 255
x_test = x_test.astype("float32") / 255
# Make sure images have shape (28, 28, 1)
x_train = np.expand_dims(x_train, -1)
x_test = np.expand_dims(x_test, -1)
print("x_train shape:", x_train.shape)
print(x_train.shape[0], "train samples")
print(x_test.shape[0], "test samples")


# convert class vectors to binary class matrices
y_train = keras.utils.to_categorical(y_train, num_classes)
y_test = keras.utils.to_categorical(y_test, num_classes)

"""## Build the models"""

# I want my low-rank layer to be two-dimensional - a normal matrix, in other words. (This is so the lessons we're learning in linear algebra are clear and easy.)
# We can do this by putting the low-rank layer after something that has a 2d shape. If we want to put it after/between our convolutional layers though,
# we can do this by also putting in a layers.Reshape() layer.

# I really should have just made a constructor that does stuff like setting my_rank and my_layer, but I don't feel like fixing it right now.
# Also, all the variable names are off because I used to have custom high-rank numbers for each model, then decided that was dumb. Should be fixed but I'm not going to.

models = []

model_control = keras.Sequential(
    [
        keras.Input(shape=input_shape),
        layers.Conv2D(4, kernel_size=(3, 3), activation="relu"), # Output shape: (None, 26, 26, 32) 
        layers.MaxPooling2D(pool_size=(2, 2)), # Output shape: (None, 13, 13, 32)
        layers.Conv2D(16, kernel_size=(3, 3), activation="relu"), # Output shape: (None, 11, 11, 64)
        layers.MaxPooling2D(pool_size=(2, 2)), # Output shape: (None, 5, 5, 64)
        layers.Conv2D(16, kernel_size=(3, 3), activation="relu"), # Output shape: (None, 3, 3, 64)
        layers.Flatten(),
        layers.Dropout(0.5),
        layers.Dense(num_classes, activation="softmax"),
    ]
)

model_control.my_rank = 'control'
model_control.my_layer = 'control'
models.append(model_control)

model_2_128 = keras.Sequential(
    [
        keras.Input(shape=input_shape),
        layers.Reshape((784, 1)), # Reshape to a two-dimensional matrix. 784 = 28*28.
        LowRankLayer(784, 32),
        layers.Reshape((28, 28, 1)),
        layers.Conv2D(4, kernel_size=(3, 3), activation="relu"), # Output shape: (None, 26, 26, 32) 
        layers.MaxPooling2D(pool_size=(2, 2)), # Output shape: (None, 13, 13, 32)
        layers.Conv2D(16, kernel_size=(3, 3), activation="relu"), # Output shape: (None, 11, 11, 64)
        layers.MaxPooling2D(pool_size=(2, 2)), # Output shape: (None, 5, 5, 64)
        layers.Conv2D(16, kernel_size=(3, 3), activation="relu"), # Output shape: (None, 3, 3, 64)
        layers.Flatten(),
        layers.Dropout(0.5),
        layers.Dense(num_classes, activation="softmax"),
    ]
)

model_2_128.my_rank = 32
model_2_128.my_layer = 2
#model_2_128.summary()
models.append(model_2_128)

model_2_1 = keras.Sequential(
    [
        keras.Input(shape=input_shape),
        layers.Reshape((784, 1)), # Reshape to a two-dimensional matrix. 784 = 28*28.
        LowRankLayer(784, 1),
        layers.Reshape((28, 28, 1)),
        layers.Conv2D(4, kernel_size=(3, 3), activation="relu"), # Output shape: (None, 26, 26, 32) 
        layers.MaxPooling2D(pool_size=(2, 2)), # Output shape: (None, 13, 13, 32)
        layers.Conv2D(16, kernel_size=(3, 3), activation="relu"), # Output shape: (None, 11, 11, 64)
        layers.MaxPooling2D(pool_size=(2, 2)), # Output shape: (None, 5, 5, 64)
        layers.Conv2D(16, kernel_size=(3, 3), activation="relu"), # Output shape: (None, 3, 3, 64)
        layers.Flatten(),
        layers.Dropout(0.5),
        layers.Dense(num_classes, activation="softmax"),
    ]
)

model_2_1.my_rank = 1
model_2_1.my_layer = 2
#model_2_1.summary()
models.append(model_2_1)




model_3_32 = keras.Sequential(
    [
        keras.Input(shape=input_shape),
        layers.Conv2D(4, kernel_size=(3, 3), activation="relu"), # Output shape: (None, 26, 26, 32) 
        layers.Reshape((2704, 1)), # Reshape to a two-dimensional matrix. 676 = 26*26.
        LowRankLayer(2704, 32),
        layers.Reshape((26, 26, 4)),
        layers.MaxPooling2D(pool_size=(2, 2)), # Output shape: (None, 13, 13, 32)
        layers.Conv2D(16, kernel_size=(3, 3), activation="relu"), # Output shape: (None, 11, 11, 64)
        layers.MaxPooling2D(pool_size=(2, 2)), # Output shape: (None, 5, 5, 64)
        layers.Conv2D(16, kernel_size=(3, 3), activation="relu"), # Output shape: (None, 3, 3, 64)
        layers.Flatten(),
        layers.Dropout(0.5),
        layers.Dense(num_classes, activation="softmax"),
    ]
)

model_3_32.my_rank = 32
model_3_32.my_layer = 3
#model_3_32.summary()
models.append(model_3_32)

model_3_1 = keras.Sequential(
    [
        keras.Input(shape=input_shape),
        layers.Conv2D(4, kernel_size=(3, 3), activation="relu"), # Output shape: (None, 26, 26, 32) 
        layers.Reshape((2704, 1)), # Reshape to a two-dimensional matrix. 676 = 26*26.
        LowRankLayer(2704, 1),
        layers.Reshape((26, 26, 4)),
        layers.MaxPooling2D(pool_size=(2, 2)), # Output shape: (None, 13, 13, 32)
        layers.Conv2D(16, kernel_size=(3, 3), activation="relu"), # Output shape: (None, 11, 11, 64)
        layers.MaxPooling2D(pool_size=(2, 2)), # Output shape: (None, 5, 5, 64)
        layers.Conv2D(16, kernel_size=(3, 3), activation="relu"), # Output shape: (None, 3, 3, 64)
        layers.Flatten(),
        layers.Dropout(0.5),
        layers.Dense(num_classes, activation="softmax"),
    ]
)



model_3_1.my_rank = 1
model_3_1.my_layer = 3
#model_3_1.summary()
models.append(model_3_1)


model_4_13 = keras.Sequential(
    [
        keras.Input(shape=input_shape),
        layers.Conv2D(4, kernel_size=(3, 3), activation="relu"), # Output shape: (None, 26, 26, 32) 
        layers.MaxPooling2D(pool_size=(2, 2)), # Output shape: (None, 13, 13, 32)
        layers.Reshape((676, 1)), # Reshape to a two-dimensional matrix. 169 = 13*13.
        LowRankLayer(676, 32),
        layers.Reshape((13, 13, 4)),
        layers.Conv2D(16, kernel_size=(3, 3), activation="relu"), # Output shape: (None, 11, 11, 64)
        layers.MaxPooling2D(pool_size=(2, 2)), # Output shape: (None, 5, 5, 64)
        layers.Conv2D(16, kernel_size=(3, 3), activation="relu"), # Output shape: (None, 3, 3, 64)
        layers.Flatten(),
        layers.Dropout(0.5),
        layers.Dense(num_classes, activation="softmax"),
    ]
)

model_4_13.my_rank = 32
model_4_13.my_layer = 4
#model_4_13.summary()
models.append(model_4_13)

model_4_1 = keras.Sequential(
    [
        keras.Input(shape=input_shape),
        layers.Conv2D(4, kernel_size=(3, 3), activation="relu"), # Output shape: (None, 26, 26, 32) 
        layers.MaxPooling2D(pool_size=(2, 2)), # Output shape: (None, 13, 13, 32)
        layers.Reshape((676, 1)), # Reshape to a two-dimensional matrix. 169 = 13*13.
        LowRankLayer(676, 1),
        layers.Reshape((13, 13, 4)),
        layers.Conv2D(16, kernel_size=(3, 3), activation="relu"), # Output shape: (None, 11, 11, 64)
        layers.MaxPooling2D(pool_size=(2, 2)), # Output shape: (None, 5, 5, 64)
        layers.Conv2D(16, kernel_size=(3, 3), activation="relu"), # Output shape: (None, 3, 3, 64)
        layers.Flatten(),
        layers.Dropout(0.5),
        layers.Dense(num_classes, activation="softmax"),
    ]
)

model_4_1.my_rank = 1
model_4_1.my_layer = 4
#model_4_1.summary()
models.append(model_4_1)

model_5_64 = keras.Sequential(
    [
        keras.Input(shape=input_shape),
        layers.Conv2D(4, kernel_size=(3, 3), activation="relu"), # Output shape: (None, 26, 26, 32) 
        layers.MaxPooling2D(pool_size=(2, 2)), # Output shape: (None, 13, 13, 32)
        layers.Conv2D(16, kernel_size=(3, 3), activation="relu"), # Output shape: (None, 11, 11, 64)
        layers.Reshape((1936, 1)), # Reshape to a two-dimensional matrix. 121 = 11*11.
        LowRankLayer(1936, 32),
        layers.Reshape((11, 11, 16)),
        layers.MaxPooling2D(pool_size=(2, 2)), # Output shape: (None, 5, 5, 64)
        layers.Conv2D(16, kernel_size=(3, 3), activation="relu"), # Output shape: (None, 3, 3, 64)
        layers.Flatten(),
        layers.Dropout(0.5),
        layers.Dense(num_classes, activation="softmax"),
    ]
)
model_5_64.my_rank = 32
model_5_64.my_layer = 5
#model_5_64.summary()
models.append(model_5_64)

model_5_1 = keras.Sequential(
    [
        keras.Input(shape=input_shape),
        layers.Conv2D(4, kernel_size=(3, 3), activation="relu"), # Output shape: (None, 26, 26, 32) 
        layers.MaxPooling2D(pool_size=(2, 2)), # Output shape: (None, 13, 13, 32)
        layers.Conv2D(16, kernel_size=(3, 3), activation="relu"), # Output shape: (None, 11, 11, 64)
        layers.Reshape((1936, 1)), # Reshape to a two-dimensional matrix. 121 = 11*11.
        LowRankLayer(1936, 1),
        layers.Reshape((11, 11, 16)),
        layers.MaxPooling2D(pool_size=(2, 2)), # Output shape: (None, 5, 5, 64)
        layers.Conv2D(16, kernel_size=(3, 3), activation="relu"), # Output shape: (None, 3, 3, 64)
        layers.Flatten(),
        layers.Dropout(0.5),
        layers.Dense(num_classes, activation="softmax"),
    ]
)
model_5_1.my_rank = 1
model_5_1.my_layer = 5
#model_5_1.summary()
models.append(model_5_1)

model_6_25 = keras.Sequential(
    [
        keras.Input(shape=input_shape),
        layers.Conv2D(4, kernel_size=(3, 3), activation="relu"), # Output shape: (None, 26, 26, 32) 
        layers.MaxPooling2D(pool_size=(2, 2)), # Output shape: (None, 13, 13, 32)
        layers.Conv2D(16, kernel_size=(3, 3), activation="relu"), # Output shape: (None, 11, 11, 64)
        layers.MaxPooling2D(pool_size=(2, 2)), # Output shape: (None, 5, 5, 64)
        layers.Reshape((400, 1)), # Reshape to a two-dimensional matrix. 25 = 5*5.
        LowRankLayer(400, 32),
        layers.Reshape((5, 5, 16)),
        layers.Conv2D(16, kernel_size=(3, 3), activation="relu"), # Output shape: (None, 3, 3, 64)
        layers.Flatten(),
        layers.Dropout(0.5),
        layers.Dense(num_classes, activation="softmax"),
    ]
)
model_6_25.my_rank = 32
model_6_25.my_layer = 6
#model_6_25.summary()
models.append(model_6_25)

model_6_1 = keras.Sequential(
    [
        keras.Input(shape=input_shape),
        layers.Conv2D(4, kernel_size=(3, 3), activation="relu"), # Output shape: (None, 26, 26, 32) 
        layers.MaxPooling2D(pool_size=(2, 2)), # Output shape: (None, 13, 13, 32)
        layers.Conv2D(16, kernel_size=(3, 3), activation="relu"), # Output shape: (None, 11, 11, 64)
        layers.MaxPooling2D(pool_size=(2, 2)), # Output shape: (None, 5, 5, 64)
        layers.Reshape((400, 1)), # Reshape to a two-dimensional matrix. 25 = 5*5.
        LowRankLayer(400, 1),
        layers.Reshape((5, 5, 16)),
        layers.Conv2D(16, kernel_size=(3, 3), activation="relu"), # Output shape: (None, 3, 3, 64)
        layers.Flatten(),
        layers.Dropout(0.5),
        layers.Dense(num_classes, activation="softmax"),
    ]
)
model_6_1.my_rank = 1
model_6_1.my_layer = 6
#model_6_1.summary()
models.append(model_6_1)



model_7_128 = keras.Sequential(
    [
        keras.Input(shape=input_shape),
        layers.Conv2D(4, kernel_size=(3, 3), activation="relu"), # Output shape: (None, 26, 26, 32) 
        layers.MaxPooling2D(pool_size=(2, 2)), # Output shape: (None, 13, 13, 32)
        layers.Conv2D(16, kernel_size=(3, 3), activation="relu"), # Output shape: (None, 11, 11, 64)
        layers.MaxPooling2D(pool_size=(2, 2)), # Output shape: (None, 5, 5, 64)
        layers.Conv2D(16, kernel_size=(3, 3), activation="relu"), # Output shape: (None, 3, 3, 64)
        layers.Reshape((144, 1)), # Reshape to a two-dimensional matrix. 9 = 3*3
        LowRankLayer(144, 32),
        layers.Reshape((3, 3, 16)),
        layers.Flatten(), # I recognize this flatten layer invalidates the need for the prior reshape but I'm just being consistent here
        layers.Dropout(0.5),
        layers.Dense(num_classes, activation="softmax"),
    ]
)
model_7_128.my_rank = 32
model_7_128.my_layer = 7
#model_7_128.summary()
models.append(model_7_128)

model_7_1 = keras.Sequential(
    [
        keras.Input(shape=input_shape),
        layers.Conv2D(4, kernel_size=(3, 3), activation="relu"), # Output shape: (None, 26, 26, 32) 
        layers.MaxPooling2D(pool_size=(2, 2)), # Output shape: (None, 13, 13, 32)
        layers.Conv2D(16, kernel_size=(3, 3), activation="relu"), # Output shape: (None, 11, 11, 64)
        layers.MaxPooling2D(pool_size=(2, 2)), # Output shape: (None, 5, 5, 64)
        layers.Conv2D(16, kernel_size=(3, 3), activation="relu"), # Output shape: (None, 3, 3, 64)
        layers.Reshape((144, 1)), # Reshape to a two-dimensional matrix. 9 = 3*3
        LowRankLayer(144, 1),
        layers.Reshape((3, 3, 16)),
        layers.Flatten(), # I recognize this flatten layer invalidates the need for the prior reshape but I'm just being consistent here
        layers.Dropout(0.5),
        layers.Dense(num_classes, activation="softmax"),
    ]
)
model_7_1.my_rank = 1
model_7_1.my_layer = 7
#model_7_1.summary()
models.append(model_7_1)

"""## Train the model"""

batch_size = 4
epochs = 20
histories = []

count = 0
for model in models:
  """
  #Quick and dirty way of testing single models. Uncomment this and set the constant to your desired model number.
  count+=1
  model_to_evaluate = 2
  if(count!=model_to_evaluate):
    continue
  """

  rank = model.my_rank
  layer = model.my_layer
  print(f"Current model rank: {rank}. Rank layer is on layer: {layer}")
  model.compile(loss="categorical_crossentropy", optimizer="adam", metrics=["accuracy"])
  history = model.fit(x_train, y_train, batch_size=batch_size, epochs=epochs, validation_split=0.1)
  history.my_rank = rank
  history.my_layer = layer
  histories.append(history)
  model.save(f'model_{layer}_{rank}')
  print("")

#Graph model training curves

plt.figure(figsize=(15, 12), dpi=80)
color = ''
ax = plt.gca()

for history in histories:
  if (history.my_rank == 1):
      plt.plot(history.history['val_accuracy'], '--',  label = f"layer {history.my_layer}, rank {history.my_rank}", color=color)
  else:
    color = next(ax._get_lines.prop_cycler)['color']
    plt.plot(history.history['val_accuracy'], label = f"layer {history.my_layer}, rank {history.my_rank}", color=color)

plt.title('model validation accuracy')
plt.ylabel('accuracy (%)')
plt.xlabel('epoch')

plt.legend(bbox_to_anchor=(1.1, 1.05))
plt.show(block=True)

"""## Evaluate the trained model"""

scores_low = []
scores_high = []


for model in models:
  
  print(f"Testing layer: {model.my_layer}. Current layer rank: {model.my_rank}. ")
  score = model.evaluate(x_test, y_test, verbose=0)
  print("Test loss:", score[0])
  print("Test accuracy:", score[1])
  print("")
  if ((model.my_rank == 128) or (model.my_rank == 32)):
    scores_high.append(score)
  if (model.my_rank == 1):
    scores_low.append(score)
  
for i in range(len(scores_low)):
  score_dif = (scores_low[i][1] - scores_high[i][1]) * 100
  score_dif = round(score_dif, 3)
  layer = i + 2 # should probably do this in a smarter way but whatever
  print(f"Percentile impact of low-rank layer being placed on layer {layer}: {score_dif}%")

# Evaluate the difference in accuracies between models of the same layer