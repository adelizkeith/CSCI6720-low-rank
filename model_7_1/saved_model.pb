ý
æ¹
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
l
BatchMatMulV2
x"T
y"T
output"T"
Ttype:
2		"
adj_xbool( "
adj_ybool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
Á
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
÷
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.10.12v2.10.0-76-gfdfc646704c8ÌØ	

Adam/dense_12/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_12/bias/v
y
(Adam/dense_12/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_12/bias/v*
_output_shapes
:
*
dtype0

Adam/dense_12/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
*'
shared_nameAdam/dense_12/kernel/v

*Adam/dense_12/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_12/kernel/v*
_output_shapes
:	
*
dtype0
y
Adam/weightv_0/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/weightv_0/v
r
$Adam/weightv_0/v/Read/ReadVariableOpReadVariableOpAdam/weightv_0/v*
_output_shapes	
:*
dtype0
y
Adam/weightu_0/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/weightu_0/v
r
$Adam/weightu_0/v/Read/ReadVariableOpReadVariableOpAdam/weightu_0/v*
_output_shapes	
:*
dtype0

Adam/conv2d_38/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_38/bias/v
{
)Adam/conv2d_38/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_38/bias/v*
_output_shapes
:*
dtype0

Adam/conv2d_38/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_38/kernel/v

+Adam/conv2d_38/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_38/kernel/v*&
_output_shapes
:*
dtype0

Adam/conv2d_37/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_37/bias/v
{
)Adam/conv2d_37/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_37/bias/v*
_output_shapes
:*
dtype0

Adam/conv2d_37/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_37/kernel/v

+Adam/conv2d_37/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_37/kernel/v*&
_output_shapes
:*
dtype0

Adam/conv2d_36/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_36/bias/v
{
)Adam/conv2d_36/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_36/bias/v*
_output_shapes
:*
dtype0

Adam/conv2d_36/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_36/kernel/v

+Adam/conv2d_36/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_36/kernel/v*&
_output_shapes
:*
dtype0

Adam/dense_12/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_12/bias/m
y
(Adam/dense_12/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_12/bias/m*
_output_shapes
:
*
dtype0

Adam/dense_12/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
*'
shared_nameAdam/dense_12/kernel/m

*Adam/dense_12/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_12/kernel/m*
_output_shapes
:	
*
dtype0
y
Adam/weightv_0/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/weightv_0/m
r
$Adam/weightv_0/m/Read/ReadVariableOpReadVariableOpAdam/weightv_0/m*
_output_shapes	
:*
dtype0
y
Adam/weightu_0/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/weightu_0/m
r
$Adam/weightu_0/m/Read/ReadVariableOpReadVariableOpAdam/weightu_0/m*
_output_shapes	
:*
dtype0

Adam/conv2d_38/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_38/bias/m
{
)Adam/conv2d_38/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_38/bias/m*
_output_shapes
:*
dtype0

Adam/conv2d_38/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_38/kernel/m

+Adam/conv2d_38/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_38/kernel/m*&
_output_shapes
:*
dtype0

Adam/conv2d_37/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_37/bias/m
{
)Adam/conv2d_37/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_37/bias/m*
_output_shapes
:*
dtype0

Adam/conv2d_37/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_37/kernel/m

+Adam/conv2d_37/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_37/kernel/m*&
_output_shapes
:*
dtype0

Adam/conv2d_36/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_36/bias/m
{
)Adam/conv2d_36/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_36/bias/m*
_output_shapes
:*
dtype0

Adam/conv2d_36/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_36/kernel/m

+Adam/conv2d_36/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_36/kernel/m*&
_output_shapes
:*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
r
dense_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_12/bias
k
!dense_12/bias/Read/ReadVariableOpReadVariableOpdense_12/bias*
_output_shapes
:
*
dtype0
{
dense_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
* 
shared_namedense_12/kernel
t
#dense_12/kernel/Read/ReadVariableOpReadVariableOpdense_12/kernel*
_output_shapes
:	
*
dtype0
k
	weightv_0VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	weightv_0
d
weightv_0/Read/ReadVariableOpReadVariableOp	weightv_0*
_output_shapes	
:*
dtype0
k
	weightu_0VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	weightu_0
d
weightu_0/Read/ReadVariableOpReadVariableOp	weightu_0*
_output_shapes	
:*
dtype0
t
conv2d_38/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_38/bias
m
"conv2d_38/bias/Read/ReadVariableOpReadVariableOpconv2d_38/bias*
_output_shapes
:*
dtype0

conv2d_38/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_38/kernel
}
$conv2d_38/kernel/Read/ReadVariableOpReadVariableOpconv2d_38/kernel*&
_output_shapes
:*
dtype0
t
conv2d_37/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_37/bias
m
"conv2d_37/bias/Read/ReadVariableOpReadVariableOpconv2d_37/bias*
_output_shapes
:*
dtype0

conv2d_37/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_37/kernel
}
$conv2d_37/kernel/Read/ReadVariableOpReadVariableOpconv2d_37/kernel*&
_output_shapes
:*
dtype0
t
conv2d_36/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_36/bias
m
"conv2d_36/bias/Read/ReadVariableOpReadVariableOpconv2d_36/bias*
_output_shapes
:*
dtype0

conv2d_36/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_36/kernel
}
$conv2d_36/kernel/Read/ReadVariableOpReadVariableOpconv2d_36/kernel*&
_output_shapes
:*
dtype0

serving_default_input_13Placeholder*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*$
shape:ÿÿÿÿÿÿÿÿÿ
è
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_13conv2d_36/kernelconv2d_36/biasconv2d_37/kernelconv2d_37/biasconv2d_38/kernelconv2d_38/bias	weightu_0	weightv_0dense_12/kerneldense_12/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 */
f*R(
&__inference_signature_wrapper_15689558

NoOpNoOp
³_
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*î^
valueä^Bá^ BÚ^
Þ
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
	layer-8

layer-9
layer_with_weights-4
layer-10
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
È
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op*

	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses* 
È
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses

*kernel
+bias
 ,_jit_compiled_convolution_op*

-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses* 
È
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses

9kernel
:bias
 ;_jit_compiled_convolution_op*

<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses* 
Ì
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses
H	vectors_u
I	vectors_v
J	weightu_0
K	weightv_0*

L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P__call__
*Q&call_and_return_all_conditional_losses* 

R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses* 
¥
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses
^_random_generator* 
¦
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses

ekernel
fbias*
J
0
1
*2
+3
94
:5
J6
K7
e8
f9*
J
0
1
*2
+3
94
:5
J6
K7
e8
f9*
* 
°
gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
ltrace_0
mtrace_1
ntrace_2
otrace_3* 
6
ptrace_0
qtrace_1
rtrace_2
strace_3* 
* 

titer

ubeta_1

vbeta_2
	wdecay
xlearning_ratemÔmÕ*mÖ+m×9mØ:mÙJmÚKmÛemÜfmÝvÞvß*và+vá9vâ:vãJväKvåevæfvç*

yserving_default* 

0
1*

0
1*
* 

znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

trace_0* 

trace_0* 
`Z
VARIABLE_VALUEconv2d_36/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_36/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses* 

trace_0* 

trace_0* 

*0
+1*

*0
+1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses*

trace_0* 

trace_0* 
`Z
VARIABLE_VALUEconv2d_37/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_37/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses* 

trace_0* 

trace_0* 

90
:1*

90
:1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses*

trace_0* 

trace_0* 
`Z
VARIABLE_VALUEconv2d_38/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_38/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

non_trainable_variables
layers
metrics
  layer_regularization_losses
¡layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses* 

¢trace_0* 

£trace_0* 

J0
K1*

J0
K1*
* 

¤non_trainable_variables
¥layers
¦metrics
 §layer_regularization_losses
¨layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses*

©trace_0* 

ªtrace_0* 

J0*

K0*
\V
VARIABLE_VALUE	weightu_09layer_with_weights-3/weightu_0/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUE	weightv_09layer_with_weights-3/weightv_0/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

«non_trainable_variables
¬layers
­metrics
 ®layer_regularization_losses
¯layer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses* 

°trace_0* 

±trace_0* 
* 
* 
* 

²non_trainable_variables
³layers
´metrics
 µlayer_regularization_losses
¶layer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses* 

·trace_0* 

¸trace_0* 
* 
* 
* 

¹non_trainable_variables
ºlayers
»metrics
 ¼layer_regularization_losses
½layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses* 

¾trace_0
¿trace_1* 

Àtrace_0
Átrace_1* 
* 

e0
f1*

e0
f1*
* 

Ânon_trainable_variables
Ãlayers
Ämetrics
 Ålayer_regularization_losses
Ælayer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses*

Çtrace_0* 

Ètrace_0* 
_Y
VARIABLE_VALUEdense_12/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_12/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
R
0
1
2
3
4
5
6
7
	8

9
10*

É0
Ê1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
Ë	variables
Ì	keras_api

Ítotal

Îcount*
M
Ï	variables
Ð	keras_api

Ñtotal

Òcount
Ó
_fn_kwargs*

Í0
Î1*

Ë	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

Ñ0
Ò1*

Ï	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
}
VARIABLE_VALUEAdam/conv2d_36/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_36/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_37/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_37/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_38/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_38/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/weightu_0/mUlayer_with_weights-3/weightu_0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/weightv_0/mUlayer_with_weights-3/weightv_0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_12/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_12/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_36/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_36/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_37/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_37/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_38/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_38/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/weightu_0/vUlayer_with_weights-3/weightu_0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/weightv_0/vUlayer_with_weights-3/weightv_0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_12/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_12/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_36/kernel/Read/ReadVariableOp"conv2d_36/bias/Read/ReadVariableOp$conv2d_37/kernel/Read/ReadVariableOp"conv2d_37/bias/Read/ReadVariableOp$conv2d_38/kernel/Read/ReadVariableOp"conv2d_38/bias/Read/ReadVariableOpweightu_0/Read/ReadVariableOpweightv_0/Read/ReadVariableOp#dense_12/kernel/Read/ReadVariableOp!dense_12/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/conv2d_36/kernel/m/Read/ReadVariableOp)Adam/conv2d_36/bias/m/Read/ReadVariableOp+Adam/conv2d_37/kernel/m/Read/ReadVariableOp)Adam/conv2d_37/bias/m/Read/ReadVariableOp+Adam/conv2d_38/kernel/m/Read/ReadVariableOp)Adam/conv2d_38/bias/m/Read/ReadVariableOp$Adam/weightu_0/m/Read/ReadVariableOp$Adam/weightv_0/m/Read/ReadVariableOp*Adam/dense_12/kernel/m/Read/ReadVariableOp(Adam/dense_12/bias/m/Read/ReadVariableOp+Adam/conv2d_36/kernel/v/Read/ReadVariableOp)Adam/conv2d_36/bias/v/Read/ReadVariableOp+Adam/conv2d_37/kernel/v/Read/ReadVariableOp)Adam/conv2d_37/bias/v/Read/ReadVariableOp+Adam/conv2d_38/kernel/v/Read/ReadVariableOp)Adam/conv2d_38/bias/v/Read/ReadVariableOp$Adam/weightu_0/v/Read/ReadVariableOp$Adam/weightv_0/v/Read/ReadVariableOp*Adam/dense_12/kernel/v/Read/ReadVariableOp(Adam/dense_12/bias/v/Read/ReadVariableOpConst*4
Tin-
+2)	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 **
f%R#
!__inference__traced_save_15690085

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_36/kernelconv2d_36/biasconv2d_37/kernelconv2d_37/biasconv2d_38/kernelconv2d_38/bias	weightu_0	weightv_0dense_12/kerneldense_12/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/conv2d_36/kernel/mAdam/conv2d_36/bias/mAdam/conv2d_37/kernel/mAdam/conv2d_37/bias/mAdam/conv2d_38/kernel/mAdam/conv2d_38/bias/mAdam/weightu_0/mAdam/weightv_0/mAdam/dense_12/kernel/mAdam/dense_12/bias/mAdam/conv2d_36/kernel/vAdam/conv2d_36/bias/vAdam/conv2d_37/kernel/vAdam/conv2d_37/bias/vAdam/conv2d_38/kernel/vAdam/conv2d_38/bias/vAdam/weightu_0/vAdam/weightv_0/vAdam/dense_12/kernel/vAdam/dense_12/bias/v*3
Tin,
*2(*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *-
f(R&
$__inference__traced_restore_15690212
ß
f
H__inference_dropout_12_layer_call_and_return_conditional_losses_15689211

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ì

+__inference_dense_12_layer_call_fn_15689934

inputs
unknown:	

	unknown_0:

identity¢StatefulPartitionedCallÞ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_12_layer_call_and_return_conditional_losses_15689224o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó
¡
,__inference_conv2d_36_layer_call_fn_15689756

inputs!
unknown:
	unknown_0:
identity¢StatefulPartitionedCallç
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_36_layer_call_and_return_conditional_losses_15689105w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


G__inference_conv2d_36_layer_call_and_return_conditional_losses_15689767

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


G__inference_conv2d_37_layer_call_and_return_conditional_losses_15689123

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

j
N__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_15689777

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
í

d
H__inference_reshape_22_layer_call_and_return_conditional_losses_15689845

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:i
ReshapeReshapeinputsReshape/shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
IdentityIdentityReshape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ð


0__inference_sequential_12_layer_call_fn_15689455
input_13!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:
	unknown_5:	
	unknown_6:	
	unknown_7:	

	unknown_8:

identity¢StatefulPartitionedCallÍ
StatefulPartitionedCallStatefulPartitionedCallinput_13unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_sequential_12_layer_call_and_return_conditional_losses_15689407o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_13
0
×
K__inference_sequential_12_layer_call_and_return_conditional_losses_15689407

inputs,
conv2d_36_15689375: 
conv2d_36_15689377:,
conv2d_37_15689381: 
conv2d_37_15689383:,
conv2d_38_15689387: 
conv2d_38_15689389:)
low_rank_layer_11_15689393:	)
low_rank_layer_11_15689395:	$
dense_12_15689401:	

dense_12_15689403:

identity¢!conv2d_36/StatefulPartitionedCall¢!conv2d_37/StatefulPartitionedCall¢!conv2d_38/StatefulPartitionedCall¢ dense_12/StatefulPartitionedCall¢"dropout_12/StatefulPartitionedCall¢)low_rank_layer_11/StatefulPartitionedCall
!conv2d_36/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_36_15689375conv2d_36_15689377*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_36_layer_call_and_return_conditional_losses_15689105ù
 max_pooling2d_24/PartitionedCallPartitionedCall*conv2d_36/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_15689072¨
!conv2d_37/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_24/PartitionedCall:output:0conv2d_37_15689381conv2d_37_15689383*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_37_layer_call_and_return_conditional_losses_15689123ù
 max_pooling2d_25/PartitionedCallPartitionedCall*conv2d_37/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_15689084¨
!conv2d_38/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_25/PartitionedCall:output:0conv2d_38_15689387conv2d_38_15689389*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_38_layer_call_and_return_conditional_losses_15689141ê
reshape_22/PartitionedCallPartitionedCall*conv2d_38/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_reshape_22_layer_call_and_return_conditional_losses_15689160¿
)low_rank_layer_11/StatefulPartitionedCallStatefulPartitionedCall#reshape_22/PartitionedCall:output:0low_rank_layer_11_15689393low_rank_layer_11_15689395*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_low_rank_layer_11_layer_call_and_return_conditional_losses_15689176õ
reshape_23/PartitionedCallPartitionedCall2low_rank_layer_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_reshape_23_layer_call_and_return_conditional_losses_15689196ß
flatten_12/PartitionedCallPartitionedCall#reshape_23/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_flatten_12_layer_call_and_return_conditional_losses_15689204ï
"dropout_12/StatefulPartitionedCallStatefulPartitionedCall#flatten_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_12_layer_call_and_return_conditional_losses_15689284
 dense_12/StatefulPartitionedCallStatefulPartitionedCall+dropout_12/StatefulPartitionedCall:output:0dense_12_15689401dense_12_15689403*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_12_layer_call_and_return_conditional_losses_15689224x
IdentityIdentity)dense_12/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¦
NoOpNoOp"^conv2d_36/StatefulPartitionedCall"^conv2d_37/StatefulPartitionedCall"^conv2d_38/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall#^dropout_12/StatefulPartitionedCall*^low_rank_layer_11/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2F
!conv2d_36/StatefulPartitionedCall!conv2d_36/StatefulPartitionedCall2F
!conv2d_37/StatefulPartitionedCall!conv2d_37/StatefulPartitionedCall2F
!conv2d_38/StatefulPartitionedCall!conv2d_38/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2H
"dropout_12/StatefulPartitionedCall"dropout_12/StatefulPartitionedCall2V
)low_rank_layer_11/StatefulPartitionedCall)low_rank_layer_11/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
þ	
g
H__inference_dropout_12_layer_call_and_return_conditional_losses_15689284

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?§
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
þ	
g
H__inference_dropout_12_layer_call_and_return_conditional_losses_15689925

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?§
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
þ
f
-__inference_dropout_12_layer_call_fn_15689908

inputs
identity¢StatefulPartitionedCallÇ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_12_layer_call_and_return_conditional_losses_15689284p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¦

ø
F__inference_dense_12_layer_call_and_return_conditional_losses_15689224

inputs1
matmul_readvariableop_resource:	
-
biasadd_readvariableop_resource:

identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


O__inference_low_rank_layer_11_layer_call_and_return_conditional_losses_15689868

inputs0
!tensordot_readvariableop_resource:	2
#tensordot_readvariableop_1_resource:	
identity¢Tensordot/ReadVariableOp¢Tensordot/ReadVariableOp_1w
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes	
:*
dtype0{
Tensordot/ReadVariableOp_1ReadVariableOp#tensordot_readvariableop_1_resource*
_output_shapes	
:*
dtype0h
Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
Tensordot/ReshapeReshape Tensordot/ReadVariableOp:value:0 Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	j
Tensordot/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
Tensordot/Reshape_1Reshape"Tensordot/ReadVariableOp_1:value:0"Tensordot/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot/MatMulMatMulTensordot/Reshape:output:0Tensordot/Reshape_1:output:0*
T0* 
_output_shapes
:
r
matmulBatchMatMulV2Tensordot/MatMul:product:0inputs*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
IdentityIdentitymatmul:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
NoOpNoOp^Tensordot/ReadVariableOp^Tensordot/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 24
Tensordot/ReadVariableOpTensordot/ReadVariableOp28
Tensordot/ReadVariableOp_1Tensordot/ReadVariableOp_1:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


O__inference_low_rank_layer_11_layer_call_and_return_conditional_losses_15689176

inputs0
!tensordot_readvariableop_resource:	2
#tensordot_readvariableop_1_resource:	
identity¢Tensordot/ReadVariableOp¢Tensordot/ReadVariableOp_1w
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes	
:*
dtype0{
Tensordot/ReadVariableOp_1ReadVariableOp#tensordot_readvariableop_1_resource*
_output_shapes	
:*
dtype0h
Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
Tensordot/ReshapeReshape Tensordot/ReadVariableOp:value:0 Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	j
Tensordot/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
Tensordot/Reshape_1Reshape"Tensordot/ReadVariableOp_1:value:0"Tensordot/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot/MatMulMatMulTensordot/Reshape:output:0Tensordot/Reshape_1:output:0*
T0* 
_output_shapes
:
r
matmulBatchMatMulV2Tensordot/MatMul:product:0inputs*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
IdentityIdentitymatmul:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
NoOpNoOp^Tensordot/ReadVariableOp^Tensordot/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 24
Tensordot/ReadVariableOpTensordot/ReadVariableOp28
Tensordot/ReadVariableOp_1Tensordot/ReadVariableOp_1:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
O
Í
K__inference_sequential_12_layer_call_and_return_conditional_losses_15689674

inputsB
(conv2d_36_conv2d_readvariableop_resource:7
)conv2d_36_biasadd_readvariableop_resource:B
(conv2d_37_conv2d_readvariableop_resource:7
)conv2d_37_biasadd_readvariableop_resource:B
(conv2d_38_conv2d_readvariableop_resource:7
)conv2d_38_biasadd_readvariableop_resource:B
3low_rank_layer_11_tensordot_readvariableop_resource:	D
5low_rank_layer_11_tensordot_readvariableop_1_resource:	:
'dense_12_matmul_readvariableop_resource:	
6
(dense_12_biasadd_readvariableop_resource:

identity¢ conv2d_36/BiasAdd/ReadVariableOp¢conv2d_36/Conv2D/ReadVariableOp¢ conv2d_37/BiasAdd/ReadVariableOp¢conv2d_37/Conv2D/ReadVariableOp¢ conv2d_38/BiasAdd/ReadVariableOp¢conv2d_38/Conv2D/ReadVariableOp¢dense_12/BiasAdd/ReadVariableOp¢dense_12/MatMul/ReadVariableOp¢*low_rank_layer_11/Tensordot/ReadVariableOp¢,low_rank_layer_11/Tensordot/ReadVariableOp_1
conv2d_36/Conv2D/ReadVariableOpReadVariableOp(conv2d_36_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0®
conv2d_36/Conv2DConv2Dinputs'conv2d_36/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

 conv2d_36/BiasAdd/ReadVariableOpReadVariableOp)conv2d_36_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_36/BiasAddBiasAddconv2d_36/Conv2D:output:0(conv2d_36/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
conv2d_36/ReluReluconv2d_36/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
max_pooling2d_24/MaxPoolMaxPoolconv2d_36/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides

conv2d_37/Conv2D/ReadVariableOpReadVariableOp(conv2d_37_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0É
conv2d_37/Conv2DConv2D!max_pooling2d_24/MaxPool:output:0'conv2d_37/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

 conv2d_37/BiasAdd/ReadVariableOpReadVariableOp)conv2d_37_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_37/BiasAddBiasAddconv2d_37/Conv2D:output:0(conv2d_37/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
conv2d_37/ReluReluconv2d_37/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
max_pooling2d_25/MaxPoolMaxPoolconv2d_37/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides

conv2d_38/Conv2D/ReadVariableOpReadVariableOp(conv2d_38_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0É
conv2d_38/Conv2DConv2D!max_pooling2d_25/MaxPool:output:0'conv2d_38/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

 conv2d_38/BiasAdd/ReadVariableOpReadVariableOp)conv2d_38_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_38/BiasAddBiasAddconv2d_38/Conv2D:output:0(conv2d_38/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
conv2d_38/ReluReluconv2d_38/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
reshape_22/ShapeShapeconv2d_38/Relu:activations:0*
T0*
_output_shapes
:h
reshape_22/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 reshape_22/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 reshape_22/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
reshape_22/strided_sliceStridedSlicereshape_22/Shape:output:0'reshape_22/strided_slice/stack:output:0)reshape_22/strided_slice/stack_1:output:0)reshape_22/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
reshape_22/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :\
reshape_22/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :»
reshape_22/Reshape/shapePack!reshape_22/strided_slice:output:0#reshape_22/Reshape/shape/1:output:0#reshape_22/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:
reshape_22/ReshapeReshapeconv2d_38/Relu:activations:0!reshape_22/Reshape/shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*low_rank_layer_11/Tensordot/ReadVariableOpReadVariableOp3low_rank_layer_11_tensordot_readvariableop_resource*
_output_shapes	
:*
dtype0
,low_rank_layer_11/Tensordot/ReadVariableOp_1ReadVariableOp5low_rank_layer_11_tensordot_readvariableop_1_resource*
_output_shapes	
:*
dtype0z
)low_rank_layer_11/Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      À
#low_rank_layer_11/Tensordot/ReshapeReshape2low_rank_layer_11/Tensordot/ReadVariableOp:value:02low_rank_layer_11/Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	|
+low_rank_layer_11/Tensordot/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      Æ
%low_rank_layer_11/Tensordot/Reshape_1Reshape4low_rank_layer_11/Tensordot/ReadVariableOp_1:value:04low_rank_layer_11/Tensordot/Reshape_1/shape:output:0*
T0*
_output_shapes
:	µ
"low_rank_layer_11/Tensordot/MatMulMatMul,low_rank_layer_11/Tensordot/Reshape:output:0.low_rank_layer_11/Tensordot/Reshape_1:output:0*
T0* 
_output_shapes
:
«
low_rank_layer_11/matmulBatchMatMulV2,low_rank_layer_11/Tensordot/MatMul:product:0reshape_22/Reshape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
reshape_23/ShapeShape!low_rank_layer_11/matmul:output:0*
T0*
_output_shapes
:h
reshape_23/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 reshape_23/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 reshape_23/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
reshape_23/strided_sliceStridedSlicereshape_23/Shape:output:0'reshape_23/strided_slice/stack:output:0)reshape_23/strided_slice/stack_1:output:0)reshape_23/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
reshape_23/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :\
reshape_23/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :\
reshape_23/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :à
reshape_23/Reshape/shapePack!reshape_23/strided_slice:output:0#reshape_23/Reshape/shape/1:output:0#reshape_23/Reshape/shape/2:output:0#reshape_23/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:
reshape_23/ReshapeReshape!low_rank_layer_11/matmul:output:0!reshape_23/Reshape/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
flatten_12/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
flatten_12/ReshapeReshapereshape_23/Reshape:output:0flatten_12/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
dropout_12/IdentityIdentityflatten_12/Reshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0
dense_12/MatMulMatMuldropout_12/Identity:output:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
h
dense_12/SoftmaxSoftmaxdense_12/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
i
IdentityIdentitydense_12/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
´
NoOpNoOp!^conv2d_36/BiasAdd/ReadVariableOp ^conv2d_36/Conv2D/ReadVariableOp!^conv2d_37/BiasAdd/ReadVariableOp ^conv2d_37/Conv2D/ReadVariableOp!^conv2d_38/BiasAdd/ReadVariableOp ^conv2d_38/Conv2D/ReadVariableOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp+^low_rank_layer_11/Tensordot/ReadVariableOp-^low_rank_layer_11/Tensordot/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2D
 conv2d_36/BiasAdd/ReadVariableOp conv2d_36/BiasAdd/ReadVariableOp2B
conv2d_36/Conv2D/ReadVariableOpconv2d_36/Conv2D/ReadVariableOp2D
 conv2d_37/BiasAdd/ReadVariableOp conv2d_37/BiasAdd/ReadVariableOp2B
conv2d_37/Conv2D/ReadVariableOpconv2d_37/Conv2D/ReadVariableOp2D
 conv2d_38/BiasAdd/ReadVariableOp conv2d_38/BiasAdd/ReadVariableOp2B
conv2d_38/Conv2D/ReadVariableOpconv2d_38/Conv2D/ReadVariableOp2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2X
*low_rank_layer_11/Tensordot/ReadVariableOp*low_rank_layer_11/Tensordot/ReadVariableOp2\
,low_rank_layer_11/Tensordot/ReadVariableOp_1,low_rank_layer_11/Tensordot/ReadVariableOp_1:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó
¡
,__inference_conv2d_38_layer_call_fn_15689816

inputs!
unknown:
	unknown_0:
identity¢StatefulPartitionedCallç
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_38_layer_call_and_return_conditional_losses_15689141w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¦

ø
F__inference_dense_12_layer_call_and_return_conditional_losses_15689945

inputs1
matmul_readvariableop_resource:	
-
biasadd_readvariableop_resource:

identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
é.
²
K__inference_sequential_12_layer_call_and_return_conditional_losses_15689231

inputs,
conv2d_36_15689106: 
conv2d_36_15689108:,
conv2d_37_15689124: 
conv2d_37_15689126:,
conv2d_38_15689142: 
conv2d_38_15689144:)
low_rank_layer_11_15689177:	)
low_rank_layer_11_15689179:	$
dense_12_15689225:	

dense_12_15689227:

identity¢!conv2d_36/StatefulPartitionedCall¢!conv2d_37/StatefulPartitionedCall¢!conv2d_38/StatefulPartitionedCall¢ dense_12/StatefulPartitionedCall¢)low_rank_layer_11/StatefulPartitionedCall
!conv2d_36/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_36_15689106conv2d_36_15689108*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_36_layer_call_and_return_conditional_losses_15689105ù
 max_pooling2d_24/PartitionedCallPartitionedCall*conv2d_36/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_15689072¨
!conv2d_37/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_24/PartitionedCall:output:0conv2d_37_15689124conv2d_37_15689126*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_37_layer_call_and_return_conditional_losses_15689123ù
 max_pooling2d_25/PartitionedCallPartitionedCall*conv2d_37/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_15689084¨
!conv2d_38/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_25/PartitionedCall:output:0conv2d_38_15689142conv2d_38_15689144*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_38_layer_call_and_return_conditional_losses_15689141ê
reshape_22/PartitionedCallPartitionedCall*conv2d_38/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_reshape_22_layer_call_and_return_conditional_losses_15689160¿
)low_rank_layer_11/StatefulPartitionedCallStatefulPartitionedCall#reshape_22/PartitionedCall:output:0low_rank_layer_11_15689177low_rank_layer_11_15689179*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_low_rank_layer_11_layer_call_and_return_conditional_losses_15689176õ
reshape_23/PartitionedCallPartitionedCall2low_rank_layer_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_reshape_23_layer_call_and_return_conditional_losses_15689196ß
flatten_12/PartitionedCallPartitionedCall#reshape_23/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_flatten_12_layer_call_and_return_conditional_losses_15689204ß
dropout_12/PartitionedCallPartitionedCall#flatten_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_12_layer_call_and_return_conditional_losses_15689211
 dense_12/StatefulPartitionedCallStatefulPartitionedCall#dropout_12/PartitionedCall:output:0dense_12_15689225dense_12_15689227*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_12_layer_call_and_return_conditional_losses_15689224x
IdentityIdentity)dense_12/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

NoOpNoOp"^conv2d_36/StatefulPartitionedCall"^conv2d_37/StatefulPartitionedCall"^conv2d_38/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall*^low_rank_layer_11/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2F
!conv2d_36/StatefulPartitionedCall!conv2d_36/StatefulPartitionedCall2F
!conv2d_37/StatefulPartitionedCall!conv2d_37/StatefulPartitionedCall2F
!conv2d_38/StatefulPartitionedCall!conv2d_38/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2V
)low_rank_layer_11/StatefulPartitionedCall)low_rank_layer_11/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ï.
´
K__inference_sequential_12_layer_call_and_return_conditional_losses_15689490
input_13,
conv2d_36_15689458: 
conv2d_36_15689460:,
conv2d_37_15689464: 
conv2d_37_15689466:,
conv2d_38_15689470: 
conv2d_38_15689472:)
low_rank_layer_11_15689476:	)
low_rank_layer_11_15689478:	$
dense_12_15689484:	

dense_12_15689486:

identity¢!conv2d_36/StatefulPartitionedCall¢!conv2d_37/StatefulPartitionedCall¢!conv2d_38/StatefulPartitionedCall¢ dense_12/StatefulPartitionedCall¢)low_rank_layer_11/StatefulPartitionedCall
!conv2d_36/StatefulPartitionedCallStatefulPartitionedCallinput_13conv2d_36_15689458conv2d_36_15689460*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_36_layer_call_and_return_conditional_losses_15689105ù
 max_pooling2d_24/PartitionedCallPartitionedCall*conv2d_36/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_15689072¨
!conv2d_37/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_24/PartitionedCall:output:0conv2d_37_15689464conv2d_37_15689466*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_37_layer_call_and_return_conditional_losses_15689123ù
 max_pooling2d_25/PartitionedCallPartitionedCall*conv2d_37/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_15689084¨
!conv2d_38/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_25/PartitionedCall:output:0conv2d_38_15689470conv2d_38_15689472*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_38_layer_call_and_return_conditional_losses_15689141ê
reshape_22/PartitionedCallPartitionedCall*conv2d_38/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_reshape_22_layer_call_and_return_conditional_losses_15689160¿
)low_rank_layer_11/StatefulPartitionedCallStatefulPartitionedCall#reshape_22/PartitionedCall:output:0low_rank_layer_11_15689476low_rank_layer_11_15689478*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_low_rank_layer_11_layer_call_and_return_conditional_losses_15689176õ
reshape_23/PartitionedCallPartitionedCall2low_rank_layer_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_reshape_23_layer_call_and_return_conditional_losses_15689196ß
flatten_12/PartitionedCallPartitionedCall#reshape_23/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_flatten_12_layer_call_and_return_conditional_losses_15689204ß
dropout_12/PartitionedCallPartitionedCall#flatten_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_12_layer_call_and_return_conditional_losses_15689211
 dense_12/StatefulPartitionedCallStatefulPartitionedCall#dropout_12/PartitionedCall:output:0dense_12_15689484dense_12_15689486*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_12_layer_call_and_return_conditional_losses_15689224x
IdentityIdentity)dense_12/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

NoOpNoOp"^conv2d_36/StatefulPartitionedCall"^conv2d_37/StatefulPartitionedCall"^conv2d_38/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall*^low_rank_layer_11/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2F
!conv2d_36/StatefulPartitionedCall!conv2d_36/StatefulPartitionedCall2F
!conv2d_37/StatefulPartitionedCall!conv2d_37/StatefulPartitionedCall2F
!conv2d_38/StatefulPartitionedCall!conv2d_38/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2V
)low_rank_layer_11/StatefulPartitionedCall)low_rank_layer_11/StatefulPartitionedCall:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_13
¶Q
ì
!__inference__traced_save_15690085
file_prefix/
+savev2_conv2d_36_kernel_read_readvariableop-
)savev2_conv2d_36_bias_read_readvariableop/
+savev2_conv2d_37_kernel_read_readvariableop-
)savev2_conv2d_37_bias_read_readvariableop/
+savev2_conv2d_38_kernel_read_readvariableop-
)savev2_conv2d_38_bias_read_readvariableop(
$savev2_weightu_0_read_readvariableop(
$savev2_weightv_0_read_readvariableop.
*savev2_dense_12_kernel_read_readvariableop,
(savev2_dense_12_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_conv2d_36_kernel_m_read_readvariableop4
0savev2_adam_conv2d_36_bias_m_read_readvariableop6
2savev2_adam_conv2d_37_kernel_m_read_readvariableop4
0savev2_adam_conv2d_37_bias_m_read_readvariableop6
2savev2_adam_conv2d_38_kernel_m_read_readvariableop4
0savev2_adam_conv2d_38_bias_m_read_readvariableop/
+savev2_adam_weightu_0_m_read_readvariableop/
+savev2_adam_weightv_0_m_read_readvariableop5
1savev2_adam_dense_12_kernel_m_read_readvariableop3
/savev2_adam_dense_12_bias_m_read_readvariableop6
2savev2_adam_conv2d_36_kernel_v_read_readvariableop4
0savev2_adam_conv2d_36_bias_v_read_readvariableop6
2savev2_adam_conv2d_37_kernel_v_read_readvariableop4
0savev2_adam_conv2d_37_bias_v_read_readvariableop6
2savev2_adam_conv2d_38_kernel_v_read_readvariableop4
0savev2_adam_conv2d_38_bias_v_read_readvariableop/
+savev2_adam_weightu_0_v_read_readvariableop/
+savev2_adam_weightv_0_v_read_readvariableop5
1savev2_adam_dense_12_kernel_v_read_readvariableop3
/savev2_adam_dense_12_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*ª
value B(B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-3/weightu_0/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-3/weightv_0/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-3/weightu_0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-3/weightv_0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-3/weightu_0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-3/weightv_0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH½
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ¹
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_36_kernel_read_readvariableop)savev2_conv2d_36_bias_read_readvariableop+savev2_conv2d_37_kernel_read_readvariableop)savev2_conv2d_37_bias_read_readvariableop+savev2_conv2d_38_kernel_read_readvariableop)savev2_conv2d_38_bias_read_readvariableop$savev2_weightu_0_read_readvariableop$savev2_weightv_0_read_readvariableop*savev2_dense_12_kernel_read_readvariableop(savev2_dense_12_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_conv2d_36_kernel_m_read_readvariableop0savev2_adam_conv2d_36_bias_m_read_readvariableop2savev2_adam_conv2d_37_kernel_m_read_readvariableop0savev2_adam_conv2d_37_bias_m_read_readvariableop2savev2_adam_conv2d_38_kernel_m_read_readvariableop0savev2_adam_conv2d_38_bias_m_read_readvariableop+savev2_adam_weightu_0_m_read_readvariableop+savev2_adam_weightv_0_m_read_readvariableop1savev2_adam_dense_12_kernel_m_read_readvariableop/savev2_adam_dense_12_bias_m_read_readvariableop2savev2_adam_conv2d_36_kernel_v_read_readvariableop0savev2_adam_conv2d_36_bias_v_read_readvariableop2savev2_adam_conv2d_37_kernel_v_read_readvariableop0savev2_adam_conv2d_37_bias_v_read_readvariableop2savev2_adam_conv2d_38_kernel_v_read_readvariableop0savev2_adam_conv2d_38_bias_v_read_readvariableop+savev2_adam_weightu_0_v_read_readvariableop+savev2_adam_weightv_0_v_read_readvariableop1savev2_adam_dense_12_kernel_v_read_readvariableop/savev2_adam_dense_12_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *6
dtypes,
*2(	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*à
_input_shapesÎ
Ë: :::::::::	
:
: : : : : : : : : :::::::::	
:
:::::::::	
:
: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::!

_output_shapes	
::!

_output_shapes	
::%	!

_output_shapes
:	
: 


_output_shapes
:
:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::!

_output_shapes	
::!

_output_shapes	
::%!

_output_shapes
:	
: 

_output_shapes
:
:,(
&
_output_shapes
:: 

_output_shapes
::, (
&
_output_shapes
:: !

_output_shapes
::,"(
&
_output_shapes
:: #

_output_shapes
::!$

_output_shapes	
::!%

_output_shapes	
::%&!

_output_shapes
:	
: '

_output_shapes
:
:(

_output_shapes
: 
a
¿

#__inference__wrapped_model_15689063
input_13P
6sequential_12_conv2d_36_conv2d_readvariableop_resource:E
7sequential_12_conv2d_36_biasadd_readvariableop_resource:P
6sequential_12_conv2d_37_conv2d_readvariableop_resource:E
7sequential_12_conv2d_37_biasadd_readvariableop_resource:P
6sequential_12_conv2d_38_conv2d_readvariableop_resource:E
7sequential_12_conv2d_38_biasadd_readvariableop_resource:P
Asequential_12_low_rank_layer_11_tensordot_readvariableop_resource:	R
Csequential_12_low_rank_layer_11_tensordot_readvariableop_1_resource:	H
5sequential_12_dense_12_matmul_readvariableop_resource:	
D
6sequential_12_dense_12_biasadd_readvariableop_resource:

identity¢.sequential_12/conv2d_36/BiasAdd/ReadVariableOp¢-sequential_12/conv2d_36/Conv2D/ReadVariableOp¢.sequential_12/conv2d_37/BiasAdd/ReadVariableOp¢-sequential_12/conv2d_37/Conv2D/ReadVariableOp¢.sequential_12/conv2d_38/BiasAdd/ReadVariableOp¢-sequential_12/conv2d_38/Conv2D/ReadVariableOp¢-sequential_12/dense_12/BiasAdd/ReadVariableOp¢,sequential_12/dense_12/MatMul/ReadVariableOp¢8sequential_12/low_rank_layer_11/Tensordot/ReadVariableOp¢:sequential_12/low_rank_layer_11/Tensordot/ReadVariableOp_1¬
-sequential_12/conv2d_36/Conv2D/ReadVariableOpReadVariableOp6sequential_12_conv2d_36_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ì
sequential_12/conv2d_36/Conv2DConv2Dinput_135sequential_12/conv2d_36/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
¢
.sequential_12/conv2d_36/BiasAdd/ReadVariableOpReadVariableOp7sequential_12_conv2d_36_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Å
sequential_12/conv2d_36/BiasAddBiasAdd'sequential_12/conv2d_36/Conv2D:output:06sequential_12/conv2d_36/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_12/conv2d_36/ReluRelu(sequential_12/conv2d_36/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿÊ
&sequential_12/max_pooling2d_24/MaxPoolMaxPool*sequential_12/conv2d_36/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
¬
-sequential_12/conv2d_37/Conv2D/ReadVariableOpReadVariableOp6sequential_12_conv2d_37_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0ó
sequential_12/conv2d_37/Conv2DConv2D/sequential_12/max_pooling2d_24/MaxPool:output:05sequential_12/conv2d_37/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
¢
.sequential_12/conv2d_37/BiasAdd/ReadVariableOpReadVariableOp7sequential_12_conv2d_37_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Å
sequential_12/conv2d_37/BiasAddBiasAdd'sequential_12/conv2d_37/Conv2D:output:06sequential_12/conv2d_37/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_12/conv2d_37/ReluRelu(sequential_12/conv2d_37/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿÊ
&sequential_12/max_pooling2d_25/MaxPoolMaxPool*sequential_12/conv2d_37/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
¬
-sequential_12/conv2d_38/Conv2D/ReadVariableOpReadVariableOp6sequential_12_conv2d_38_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0ó
sequential_12/conv2d_38/Conv2DConv2D/sequential_12/max_pooling2d_25/MaxPool:output:05sequential_12/conv2d_38/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
¢
.sequential_12/conv2d_38/BiasAdd/ReadVariableOpReadVariableOp7sequential_12_conv2d_38_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Å
sequential_12/conv2d_38/BiasAddBiasAdd'sequential_12/conv2d_38/Conv2D:output:06sequential_12/conv2d_38/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_12/conv2d_38/ReluRelu(sequential_12/conv2d_38/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
sequential_12/reshape_22/ShapeShape*sequential_12/conv2d_38/Relu:activations:0*
T0*
_output_shapes
:v
,sequential_12/reshape_22/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_12/reshape_22/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_12/reshape_22/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Î
&sequential_12/reshape_22/strided_sliceStridedSlice'sequential_12/reshape_22/Shape:output:05sequential_12/reshape_22/strided_slice/stack:output:07sequential_12/reshape_22/strided_slice/stack_1:output:07sequential_12/reshape_22/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
(sequential_12/reshape_22/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :j
(sequential_12/reshape_22/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :ó
&sequential_12/reshape_22/Reshape/shapePack/sequential_12/reshape_22/strided_slice:output:01sequential_12/reshape_22/Reshape/shape/1:output:01sequential_12/reshape_22/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:¿
 sequential_12/reshape_22/ReshapeReshape*sequential_12/conv2d_38/Relu:activations:0/sequential_12/reshape_22/Reshape/shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ·
8sequential_12/low_rank_layer_11/Tensordot/ReadVariableOpReadVariableOpAsequential_12_low_rank_layer_11_tensordot_readvariableop_resource*
_output_shapes	
:*
dtype0»
:sequential_12/low_rank_layer_11/Tensordot/ReadVariableOp_1ReadVariableOpCsequential_12_low_rank_layer_11_tensordot_readvariableop_1_resource*
_output_shapes	
:*
dtype0
7sequential_12/low_rank_layer_11/Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      ê
1sequential_12/low_rank_layer_11/Tensordot/ReshapeReshape@sequential_12/low_rank_layer_11/Tensordot/ReadVariableOp:value:0@sequential_12/low_rank_layer_11/Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	
9sequential_12/low_rank_layer_11/Tensordot/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      ð
3sequential_12/low_rank_layer_11/Tensordot/Reshape_1ReshapeBsequential_12/low_rank_layer_11/Tensordot/ReadVariableOp_1:value:0Bsequential_12/low_rank_layer_11/Tensordot/Reshape_1/shape:output:0*
T0*
_output_shapes
:	ß
0sequential_12/low_rank_layer_11/Tensordot/MatMulMatMul:sequential_12/low_rank_layer_11/Tensordot/Reshape:output:0<sequential_12/low_rank_layer_11/Tensordot/Reshape_1:output:0*
T0* 
_output_shapes
:
Õ
&sequential_12/low_rank_layer_11/matmulBatchMatMulV2:sequential_12/low_rank_layer_11/Tensordot/MatMul:product:0)sequential_12/reshape_22/Reshape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
sequential_12/reshape_23/ShapeShape/sequential_12/low_rank_layer_11/matmul:output:0*
T0*
_output_shapes
:v
,sequential_12/reshape_23/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_12/reshape_23/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_12/reshape_23/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Î
&sequential_12/reshape_23/strided_sliceStridedSlice'sequential_12/reshape_23/Shape:output:05sequential_12/reshape_23/strided_slice/stack:output:07sequential_12/reshape_23/strided_slice/stack_1:output:07sequential_12/reshape_23/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
(sequential_12/reshape_23/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :j
(sequential_12/reshape_23/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :j
(sequential_12/reshape_23/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :¦
&sequential_12/reshape_23/Reshape/shapePack/sequential_12/reshape_23/strided_slice:output:01sequential_12/reshape_23/Reshape/shape/1:output:01sequential_12/reshape_23/Reshape/shape/2:output:01sequential_12/reshape_23/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:Ç
 sequential_12/reshape_23/ReshapeReshape/sequential_12/low_rank_layer_11/matmul:output:0/sequential_12/reshape_23/Reshape/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
sequential_12/flatten_12/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ²
 sequential_12/flatten_12/ReshapeReshape)sequential_12/reshape_23/Reshape:output:0'sequential_12/flatten_12/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!sequential_12/dropout_12/IdentityIdentity)sequential_12/flatten_12/Reshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
,sequential_12/dense_12/MatMul/ReadVariableOpReadVariableOp5sequential_12_dense_12_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0»
sequential_12/dense_12/MatMulMatMul*sequential_12/dropout_12/Identity:output:04sequential_12/dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
-sequential_12/dense_12/BiasAdd/ReadVariableOpReadVariableOp6sequential_12_dense_12_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0»
sequential_12/dense_12/BiasAddBiasAdd'sequential_12/dense_12/MatMul:product:05sequential_12/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

sequential_12/dense_12/SoftmaxSoftmax'sequential_12/dense_12/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
w
IdentityIdentity(sequential_12/dense_12/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
À
NoOpNoOp/^sequential_12/conv2d_36/BiasAdd/ReadVariableOp.^sequential_12/conv2d_36/Conv2D/ReadVariableOp/^sequential_12/conv2d_37/BiasAdd/ReadVariableOp.^sequential_12/conv2d_37/Conv2D/ReadVariableOp/^sequential_12/conv2d_38/BiasAdd/ReadVariableOp.^sequential_12/conv2d_38/Conv2D/ReadVariableOp.^sequential_12/dense_12/BiasAdd/ReadVariableOp-^sequential_12/dense_12/MatMul/ReadVariableOp9^sequential_12/low_rank_layer_11/Tensordot/ReadVariableOp;^sequential_12/low_rank_layer_11/Tensordot/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2`
.sequential_12/conv2d_36/BiasAdd/ReadVariableOp.sequential_12/conv2d_36/BiasAdd/ReadVariableOp2^
-sequential_12/conv2d_36/Conv2D/ReadVariableOp-sequential_12/conv2d_36/Conv2D/ReadVariableOp2`
.sequential_12/conv2d_37/BiasAdd/ReadVariableOp.sequential_12/conv2d_37/BiasAdd/ReadVariableOp2^
-sequential_12/conv2d_37/Conv2D/ReadVariableOp-sequential_12/conv2d_37/Conv2D/ReadVariableOp2`
.sequential_12/conv2d_38/BiasAdd/ReadVariableOp.sequential_12/conv2d_38/BiasAdd/ReadVariableOp2^
-sequential_12/conv2d_38/Conv2D/ReadVariableOp-sequential_12/conv2d_38/Conv2D/ReadVariableOp2^
-sequential_12/dense_12/BiasAdd/ReadVariableOp-sequential_12/dense_12/BiasAdd/ReadVariableOp2\
,sequential_12/dense_12/MatMul/ReadVariableOp,sequential_12/dense_12/MatMul/ReadVariableOp2t
8sequential_12/low_rank_layer_11/Tensordot/ReadVariableOp8sequential_12/low_rank_layer_11/Tensordot/ReadVariableOp2x
:sequential_12/low_rank_layer_11/Tensordot/ReadVariableOp_1:sequential_12/low_rank_layer_11/Tensordot/ReadVariableOp_1:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_13



&__inference_signature_wrapper_15689558
input_13!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:
	unknown_5:	
	unknown_6:	
	unknown_7:	

	unknown_8:

identity¢StatefulPartitionedCall¥
StatefulPartitionedCallStatefulPartitionedCallinput_13unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *,
f'R%
#__inference__wrapped_model_15689063o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_13
Á
O
3__inference_max_pooling2d_25_layer_call_fn_15689802

inputs
identityß
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_15689084
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


G__inference_conv2d_38_layer_call_and_return_conditional_losses_15689827

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
í

4__inference_low_rank_layer_11_layer_call_fn_15689854

inputs
unknown:	
	unknown_0:	
identity¢StatefulPartitionedCallì
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_low_rank_layer_11_layer_call_and_return_conditional_losses_15689176t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ù
d
H__inference_reshape_23_layer_call_and_return_conditional_losses_15689887

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :©
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:l
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


G__inference_conv2d_37_layer_call_and_return_conditional_losses_15689797

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Á
O
3__inference_max_pooling2d_24_layer_call_fn_15689772

inputs
identityß
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_15689072
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ß
f
H__inference_dropout_12_layer_call_and_return_conditional_losses_15689913

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó
¡
,__inference_conv2d_37_layer_call_fn_15689786

inputs!
unknown:
	unknown_0:
identity¢StatefulPartitionedCallç
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_37_layer_call_and_return_conditional_losses_15689123w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
æV
Í
K__inference_sequential_12_layer_call_and_return_conditional_losses_15689747

inputsB
(conv2d_36_conv2d_readvariableop_resource:7
)conv2d_36_biasadd_readvariableop_resource:B
(conv2d_37_conv2d_readvariableop_resource:7
)conv2d_37_biasadd_readvariableop_resource:B
(conv2d_38_conv2d_readvariableop_resource:7
)conv2d_38_biasadd_readvariableop_resource:B
3low_rank_layer_11_tensordot_readvariableop_resource:	D
5low_rank_layer_11_tensordot_readvariableop_1_resource:	:
'dense_12_matmul_readvariableop_resource:	
6
(dense_12_biasadd_readvariableop_resource:

identity¢ conv2d_36/BiasAdd/ReadVariableOp¢conv2d_36/Conv2D/ReadVariableOp¢ conv2d_37/BiasAdd/ReadVariableOp¢conv2d_37/Conv2D/ReadVariableOp¢ conv2d_38/BiasAdd/ReadVariableOp¢conv2d_38/Conv2D/ReadVariableOp¢dense_12/BiasAdd/ReadVariableOp¢dense_12/MatMul/ReadVariableOp¢*low_rank_layer_11/Tensordot/ReadVariableOp¢,low_rank_layer_11/Tensordot/ReadVariableOp_1
conv2d_36/Conv2D/ReadVariableOpReadVariableOp(conv2d_36_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0®
conv2d_36/Conv2DConv2Dinputs'conv2d_36/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

 conv2d_36/BiasAdd/ReadVariableOpReadVariableOp)conv2d_36_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_36/BiasAddBiasAddconv2d_36/Conv2D:output:0(conv2d_36/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
conv2d_36/ReluReluconv2d_36/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
max_pooling2d_24/MaxPoolMaxPoolconv2d_36/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides

conv2d_37/Conv2D/ReadVariableOpReadVariableOp(conv2d_37_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0É
conv2d_37/Conv2DConv2D!max_pooling2d_24/MaxPool:output:0'conv2d_37/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

 conv2d_37/BiasAdd/ReadVariableOpReadVariableOp)conv2d_37_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_37/BiasAddBiasAddconv2d_37/Conv2D:output:0(conv2d_37/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
conv2d_37/ReluReluconv2d_37/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
max_pooling2d_25/MaxPoolMaxPoolconv2d_37/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides

conv2d_38/Conv2D/ReadVariableOpReadVariableOp(conv2d_38_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0É
conv2d_38/Conv2DConv2D!max_pooling2d_25/MaxPool:output:0'conv2d_38/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

 conv2d_38/BiasAdd/ReadVariableOpReadVariableOp)conv2d_38_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_38/BiasAddBiasAddconv2d_38/Conv2D:output:0(conv2d_38/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
conv2d_38/ReluReluconv2d_38/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
reshape_22/ShapeShapeconv2d_38/Relu:activations:0*
T0*
_output_shapes
:h
reshape_22/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 reshape_22/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 reshape_22/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
reshape_22/strided_sliceStridedSlicereshape_22/Shape:output:0'reshape_22/strided_slice/stack:output:0)reshape_22/strided_slice/stack_1:output:0)reshape_22/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
reshape_22/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :\
reshape_22/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :»
reshape_22/Reshape/shapePack!reshape_22/strided_slice:output:0#reshape_22/Reshape/shape/1:output:0#reshape_22/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:
reshape_22/ReshapeReshapeconv2d_38/Relu:activations:0!reshape_22/Reshape/shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*low_rank_layer_11/Tensordot/ReadVariableOpReadVariableOp3low_rank_layer_11_tensordot_readvariableop_resource*
_output_shapes	
:*
dtype0
,low_rank_layer_11/Tensordot/ReadVariableOp_1ReadVariableOp5low_rank_layer_11_tensordot_readvariableop_1_resource*
_output_shapes	
:*
dtype0z
)low_rank_layer_11/Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      À
#low_rank_layer_11/Tensordot/ReshapeReshape2low_rank_layer_11/Tensordot/ReadVariableOp:value:02low_rank_layer_11/Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	|
+low_rank_layer_11/Tensordot/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      Æ
%low_rank_layer_11/Tensordot/Reshape_1Reshape4low_rank_layer_11/Tensordot/ReadVariableOp_1:value:04low_rank_layer_11/Tensordot/Reshape_1/shape:output:0*
T0*
_output_shapes
:	µ
"low_rank_layer_11/Tensordot/MatMulMatMul,low_rank_layer_11/Tensordot/Reshape:output:0.low_rank_layer_11/Tensordot/Reshape_1:output:0*
T0* 
_output_shapes
:
«
low_rank_layer_11/matmulBatchMatMulV2,low_rank_layer_11/Tensordot/MatMul:product:0reshape_22/Reshape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
reshape_23/ShapeShape!low_rank_layer_11/matmul:output:0*
T0*
_output_shapes
:h
reshape_23/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 reshape_23/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 reshape_23/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
reshape_23/strided_sliceStridedSlicereshape_23/Shape:output:0'reshape_23/strided_slice/stack:output:0)reshape_23/strided_slice/stack_1:output:0)reshape_23/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
reshape_23/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :\
reshape_23/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :\
reshape_23/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :à
reshape_23/Reshape/shapePack!reshape_23/strided_slice:output:0#reshape_23/Reshape/shape/1:output:0#reshape_23/Reshape/shape/2:output:0#reshape_23/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:
reshape_23/ReshapeReshape!low_rank_layer_11/matmul:output:0!reshape_23/Reshape/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
flatten_12/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
flatten_12/ReshapeReshapereshape_23/Reshape:output:0flatten_12/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
dropout_12/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @
dropout_12/dropout/MulMulflatten_12/Reshape:output:0!dropout_12/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
dropout_12/dropout/ShapeShapeflatten_12/Reshape:output:0*
T0*
_output_shapes
:£
/dropout_12/dropout/random_uniform/RandomUniformRandomUniform!dropout_12/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0f
!dropout_12/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?È
dropout_12/dropout/GreaterEqualGreaterEqual8dropout_12/dropout/random_uniform/RandomUniform:output:0*dropout_12/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_12/dropout/CastCast#dropout_12/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_12/dropout/Mul_1Muldropout_12/dropout/Mul:z:0dropout_12/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0
dense_12/MatMulMatMuldropout_12/dropout/Mul_1:z:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
h
dense_12/SoftmaxSoftmaxdense_12/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
i
IdentityIdentitydense_12/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
´
NoOpNoOp!^conv2d_36/BiasAdd/ReadVariableOp ^conv2d_36/Conv2D/ReadVariableOp!^conv2d_37/BiasAdd/ReadVariableOp ^conv2d_37/Conv2D/ReadVariableOp!^conv2d_38/BiasAdd/ReadVariableOp ^conv2d_38/Conv2D/ReadVariableOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp+^low_rank_layer_11/Tensordot/ReadVariableOp-^low_rank_layer_11/Tensordot/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2D
 conv2d_36/BiasAdd/ReadVariableOp conv2d_36/BiasAdd/ReadVariableOp2B
conv2d_36/Conv2D/ReadVariableOpconv2d_36/Conv2D/ReadVariableOp2D
 conv2d_37/BiasAdd/ReadVariableOp conv2d_37/BiasAdd/ReadVariableOp2B
conv2d_37/Conv2D/ReadVariableOpconv2d_37/Conv2D/ReadVariableOp2D
 conv2d_38/BiasAdd/ReadVariableOp conv2d_38/BiasAdd/ReadVariableOp2B
conv2d_38/Conv2D/ReadVariableOpconv2d_38/Conv2D/ReadVariableOp2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2X
*low_rank_layer_11/Tensordot/ReadVariableOp*low_rank_layer_11/Tensordot/ReadVariableOp2\
,low_rank_layer_11/Tensordot/ReadVariableOp_1,low_rank_layer_11/Tensordot/ReadVariableOp_1:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
º
I
-__inference_flatten_12_layer_call_fn_15689892

inputs
identity·
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_flatten_12_layer_call_and_return_conditional_losses_15689204a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


G__inference_conv2d_36_layer_call_and_return_conditional_losses_15689105

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Â
I
-__inference_reshape_22_layer_call_fn_15689832

inputs
identity»
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_reshape_22_layer_call_and_return_conditional_losses_15689160e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


G__inference_conv2d_38_layer_call_and_return_conditional_losses_15689141

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ð


0__inference_sequential_12_layer_call_fn_15689254
input_13!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:
	unknown_5:	
	unknown_6:	
	unknown_7:	

	unknown_8:

identity¢StatefulPartitionedCallÍ
StatefulPartitionedCallStatefulPartitionedCallinput_13unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_sequential_12_layer_call_and_return_conditional_losses_15689231o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_13
Â
I
-__inference_reshape_23_layer_call_fn_15689873

inputs
identity¾
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_reshape_23_layer_call_and_return_conditional_losses_15689196h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

Ý
$__inference__traced_restore_15690212
file_prefix;
!assignvariableop_conv2d_36_kernel:/
!assignvariableop_1_conv2d_36_bias:=
#assignvariableop_2_conv2d_37_kernel:/
!assignvariableop_3_conv2d_37_bias:=
#assignvariableop_4_conv2d_38_kernel:/
!assignvariableop_5_conv2d_38_bias:+
assignvariableop_6_weightu_0:	+
assignvariableop_7_weightv_0:	5
"assignvariableop_8_dense_12_kernel:	
.
 assignvariableop_9_dense_12_bias:
'
assignvariableop_10_adam_iter:	 )
assignvariableop_11_adam_beta_1: )
assignvariableop_12_adam_beta_2: (
assignvariableop_13_adam_decay: 0
&assignvariableop_14_adam_learning_rate: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: #
assignvariableop_17_total: #
assignvariableop_18_count: E
+assignvariableop_19_adam_conv2d_36_kernel_m:7
)assignvariableop_20_adam_conv2d_36_bias_m:E
+assignvariableop_21_adam_conv2d_37_kernel_m:7
)assignvariableop_22_adam_conv2d_37_bias_m:E
+assignvariableop_23_adam_conv2d_38_kernel_m:7
)assignvariableop_24_adam_conv2d_38_bias_m:3
$assignvariableop_25_adam_weightu_0_m:	3
$assignvariableop_26_adam_weightv_0_m:	=
*assignvariableop_27_adam_dense_12_kernel_m:	
6
(assignvariableop_28_adam_dense_12_bias_m:
E
+assignvariableop_29_adam_conv2d_36_kernel_v:7
)assignvariableop_30_adam_conv2d_36_bias_v:E
+assignvariableop_31_adam_conv2d_37_kernel_v:7
)assignvariableop_32_adam_conv2d_37_bias_v:E
+assignvariableop_33_adam_conv2d_38_kernel_v:7
)assignvariableop_34_adam_conv2d_38_bias_v:3
$assignvariableop_35_adam_weightu_0_v:	3
$assignvariableop_36_adam_weightv_0_v:	=
*assignvariableop_37_adam_dense_12_kernel_v:	
6
(assignvariableop_38_adam_dense_12_bias_v:

identity_40¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*ª
value B(B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-3/weightu_0/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-3/weightv_0/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-3/weightu_0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-3/weightv_0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-3/weightu_0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-3/weightv_0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHÀ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B é
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*¶
_output_shapes£
 ::::::::::::::::::::::::::::::::::::::::*6
dtypes,
*2(	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_36_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_36_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_37_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_37_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_38_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_38_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOpassignvariableop_6_weightu_0Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_weightv_0Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_12_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_12_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_beta_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOp&assignvariableop_14_adam_learning_rateIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOpassignvariableop_17_totalIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOpassignvariableop_18_countIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp+assignvariableop_19_adam_conv2d_36_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp)assignvariableop_20_adam_conv2d_36_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp+assignvariableop_21_adam_conv2d_37_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_conv2d_37_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp+assignvariableop_23_adam_conv2d_38_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp)assignvariableop_24_adam_conv2d_38_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp$assignvariableop_25_adam_weightu_0_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp$assignvariableop_26_adam_weightv_0_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_dense_12_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_dense_12_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_conv2d_36_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_conv2d_36_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOp+assignvariableop_31_adam_conv2d_37_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_conv2d_37_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOp+assignvariableop_33_adam_conv2d_38_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOp)assignvariableop_34_adam_conv2d_38_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOp$assignvariableop_35_adam_weightu_0_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_36AssignVariableOp$assignvariableop_36_adam_weightv_0_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_dense_12_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_dense_12_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ©
Identity_39Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_40IdentityIdentity_39:output:0^NoOp_1*
T0*
_output_shapes
: 
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_40Identity_40:output:0*c
_input_shapesR
P: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
¬
I
-__inference_dropout_12_layer_call_fn_15689903

inputs
identity·
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_12_layer_call_and_return_conditional_losses_15689211a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

j
N__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_15689072

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ê
d
H__inference_flatten_12_layer_call_and_return_conditional_losses_15689898

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ê
d
H__inference_flatten_12_layer_call_and_return_conditional_losses_15689204

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
í

d
H__inference_reshape_22_layer_call_and_return_conditional_losses_15689160

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:i
ReshapeReshapeinputsReshape/shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
IdentityIdentityReshape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

j
N__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_15689807

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ê


0__inference_sequential_12_layer_call_fn_15689608

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:
	unknown_5:	
	unknown_6:	
	unknown_7:	

	unknown_8:

identity¢StatefulPartitionedCallË
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_sequential_12_layer_call_and_return_conditional_losses_15689407o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ù
d
H__inference_reshape_23_layer_call_and_return_conditional_losses_15689196

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :©
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:l
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

j
N__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_15689084

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ê


0__inference_sequential_12_layer_call_fn_15689583

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:
	unknown_5:	
	unknown_6:	
	unknown_7:	

	unknown_8:

identity¢StatefulPartitionedCallË
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_sequential_12_layer_call_and_return_conditional_losses_15689231o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
0
Ù
K__inference_sequential_12_layer_call_and_return_conditional_losses_15689525
input_13,
conv2d_36_15689493: 
conv2d_36_15689495:,
conv2d_37_15689499: 
conv2d_37_15689501:,
conv2d_38_15689505: 
conv2d_38_15689507:)
low_rank_layer_11_15689511:	)
low_rank_layer_11_15689513:	$
dense_12_15689519:	

dense_12_15689521:

identity¢!conv2d_36/StatefulPartitionedCall¢!conv2d_37/StatefulPartitionedCall¢!conv2d_38/StatefulPartitionedCall¢ dense_12/StatefulPartitionedCall¢"dropout_12/StatefulPartitionedCall¢)low_rank_layer_11/StatefulPartitionedCall
!conv2d_36/StatefulPartitionedCallStatefulPartitionedCallinput_13conv2d_36_15689493conv2d_36_15689495*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_36_layer_call_and_return_conditional_losses_15689105ù
 max_pooling2d_24/PartitionedCallPartitionedCall*conv2d_36/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_15689072¨
!conv2d_37/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_24/PartitionedCall:output:0conv2d_37_15689499conv2d_37_15689501*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_37_layer_call_and_return_conditional_losses_15689123ù
 max_pooling2d_25/PartitionedCallPartitionedCall*conv2d_37/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_15689084¨
!conv2d_38/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_25/PartitionedCall:output:0conv2d_38_15689505conv2d_38_15689507*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_38_layer_call_and_return_conditional_losses_15689141ê
reshape_22/PartitionedCallPartitionedCall*conv2d_38/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_reshape_22_layer_call_and_return_conditional_losses_15689160¿
)low_rank_layer_11/StatefulPartitionedCallStatefulPartitionedCall#reshape_22/PartitionedCall:output:0low_rank_layer_11_15689511low_rank_layer_11_15689513*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_low_rank_layer_11_layer_call_and_return_conditional_losses_15689176õ
reshape_23/PartitionedCallPartitionedCall2low_rank_layer_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_reshape_23_layer_call_and_return_conditional_losses_15689196ß
flatten_12/PartitionedCallPartitionedCall#reshape_23/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_flatten_12_layer_call_and_return_conditional_losses_15689204ï
"dropout_12/StatefulPartitionedCallStatefulPartitionedCall#flatten_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_12_layer_call_and_return_conditional_losses_15689284
 dense_12/StatefulPartitionedCallStatefulPartitionedCall+dropout_12/StatefulPartitionedCall:output:0dense_12_15689519dense_12_15689521*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_12_layer_call_and_return_conditional_losses_15689224x
IdentityIdentity)dense_12/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¦
NoOpNoOp"^conv2d_36/StatefulPartitionedCall"^conv2d_37/StatefulPartitionedCall"^conv2d_38/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall#^dropout_12/StatefulPartitionedCall*^low_rank_layer_11/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2F
!conv2d_36/StatefulPartitionedCall!conv2d_36/StatefulPartitionedCall2F
!conv2d_37/StatefulPartitionedCall!conv2d_37/StatefulPartitionedCall2F
!conv2d_38/StatefulPartitionedCall!conv2d_38/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2H
"dropout_12/StatefulPartitionedCall"dropout_12/StatefulPartitionedCall2V
)low_rank_layer_11/StatefulPartitionedCall)low_rank_layer_11/StatefulPartitionedCall:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_13"µ	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*µ
serving_default¡
E
input_139
serving_default_input_13:0ÿÿÿÿÿÿÿÿÿ<
dense_120
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿ
tensorflow/serving/predict:ë
ø
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
	layer-8

layer-9
layer_with_weights-4
layer-10
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
Ý
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op"
_tf_keras_layer
¥
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses"
_tf_keras_layer
Ý
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses

*kernel
+bias
 ,_jit_compiled_convolution_op"
_tf_keras_layer
¥
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses"
_tf_keras_layer
Ý
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses

9kernel
:bias
 ;_jit_compiled_convolution_op"
_tf_keras_layer
¥
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses"
_tf_keras_layer
á
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses
H	vectors_u
I	vectors_v
J	weightu_0
K	weightv_0"
_tf_keras_layer
¥
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P__call__
*Q&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses"
_tf_keras_layer
¼
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses
^_random_generator"
_tf_keras_layer
»
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses

ekernel
fbias"
_tf_keras_layer
f
0
1
*2
+3
94
:5
J6
K7
e8
f9"
trackable_list_wrapper
f
0
1
*2
+3
94
:5
J6
K7
e8
f9"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
õ
ltrace_0
mtrace_1
ntrace_2
otrace_32
0__inference_sequential_12_layer_call_fn_15689254
0__inference_sequential_12_layer_call_fn_15689583
0__inference_sequential_12_layer_call_fn_15689608
0__inference_sequential_12_layer_call_fn_15689455¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zltrace_0zmtrace_1zntrace_2zotrace_3
á
ptrace_0
qtrace_1
rtrace_2
strace_32ö
K__inference_sequential_12_layer_call_and_return_conditional_losses_15689674
K__inference_sequential_12_layer_call_and_return_conditional_losses_15689747
K__inference_sequential_12_layer_call_and_return_conditional_losses_15689490
K__inference_sequential_12_layer_call_and_return_conditional_losses_15689525¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zptrace_0zqtrace_1zrtrace_2zstrace_3
ÏBÌ
#__inference__wrapped_model_15689063input_13"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 

titer

ubeta_1

vbeta_2
	wdecay
xlearning_ratemÔmÕ*mÖ+m×9mØ:mÙJmÚKmÛemÜfmÝvÞvß*và+vá9vâ:vãJväKvåevæfvç"
	optimizer
,
yserving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ð
trace_02Ó
,__inference_conv2d_36_layer_call_fn_15689756¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0

trace_02î
G__inference_conv2d_36_layer_call_and_return_conditional_losses_15689767¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0
*:(2conv2d_36/kernel
:2conv2d_36/bias
´2±®
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
ù
trace_02Ú
3__inference_max_pooling2d_24_layer_call_fn_15689772¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0

trace_02õ
N__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_15689777¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0
.
*0
+1"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
ò
trace_02Ó
,__inference_conv2d_37_layer_call_fn_15689786¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0

trace_02î
G__inference_conv2d_37_layer_call_and_return_conditional_losses_15689797¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0
*:(2conv2d_37/kernel
:2conv2d_37/bias
´2±®
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses"
_generic_user_object
ù
trace_02Ú
3__inference_max_pooling2d_25_layer_call_fn_15689802¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0

trace_02õ
N__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_15689807¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0
.
90
:1"
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses"
_generic_user_object
ò
trace_02Ó
,__inference_conv2d_38_layer_call_fn_15689816¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0

trace_02î
G__inference_conv2d_38_layer_call_and_return_conditional_losses_15689827¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0
*:(2conv2d_38/kernel
:2conv2d_38/bias
´2±®
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
  layer_regularization_losses
¡layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
ó
¢trace_02Ô
-__inference_reshape_22_layer_call_fn_15689832¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z¢trace_0

£trace_02ï
H__inference_reshape_22_layer_call_and_return_conditional_losses_15689845¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z£trace_0
.
J0
K1"
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
¤non_trainable_variables
¥layers
¦metrics
 §layer_regularization_losses
¨layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses"
_generic_user_object
ú
©trace_02Û
4__inference_low_rank_layer_11_layer_call_fn_15689854¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z©trace_0

ªtrace_02ö
O__inference_low_rank_layer_11_layer_call_and_return_conditional_losses_15689868¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zªtrace_0
'
J0"
trackable_list_wrapper
'
K0"
trackable_list_wrapper
:2	weightu_0
:2	weightv_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
«non_trainable_variables
¬layers
­metrics
 ®layer_regularization_losses
¯layer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses"
_generic_user_object
ó
°trace_02Ô
-__inference_reshape_23_layer_call_fn_15689873¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z°trace_0

±trace_02ï
H__inference_reshape_23_layer_call_and_return_conditional_losses_15689887¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z±trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
²non_trainable_variables
³layers
´metrics
 µlayer_regularization_losses
¶layer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses"
_generic_user_object
ó
·trace_02Ô
-__inference_flatten_12_layer_call_fn_15689892¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z·trace_0

¸trace_02ï
H__inference_flatten_12_layer_call_and_return_conditional_losses_15689898¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z¸trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
¹non_trainable_variables
ºlayers
»metrics
 ¼layer_regularization_losses
½layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses"
_generic_user_object
Ï
¾trace_0
¿trace_12
-__inference_dropout_12_layer_call_fn_15689903
-__inference_dropout_12_layer_call_fn_15689908³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z¾trace_0z¿trace_1

Àtrace_0
Átrace_12Ê
H__inference_dropout_12_layer_call_and_return_conditional_losses_15689913
H__inference_dropout_12_layer_call_and_return_conditional_losses_15689925³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÀtrace_0zÁtrace_1
"
_generic_user_object
.
e0
f1"
trackable_list_wrapper
.
e0
f1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ânon_trainable_variables
Ãlayers
Ämetrics
 Ålayer_regularization_losses
Ælayer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses"
_generic_user_object
ñ
Çtrace_02Ò
+__inference_dense_12_layer_call_fn_15689934¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÇtrace_0

Ètrace_02í
F__inference_dense_12_layer_call_and_return_conditional_losses_15689945¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÈtrace_0
": 	
2dense_12/kernel
:
2dense_12/bias
 "
trackable_list_wrapper
n
0
1
2
3
4
5
6
7
	8

9
10"
trackable_list_wrapper
0
É0
Ê1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
0__inference_sequential_12_layer_call_fn_15689254input_13"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Bþ
0__inference_sequential_12_layer_call_fn_15689583inputs"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Bþ
0__inference_sequential_12_layer_call_fn_15689608inputs"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
0__inference_sequential_12_layer_call_fn_15689455input_13"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
K__inference_sequential_12_layer_call_and_return_conditional_losses_15689674inputs"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
K__inference_sequential_12_layer_call_and_return_conditional_losses_15689747inputs"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
K__inference_sequential_12_layer_call_and_return_conditional_losses_15689490input_13"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
K__inference_sequential_12_layer_call_and_return_conditional_losses_15689525input_13"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
ÎBË
&__inference_signature_wrapper_15689558input_13"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
àBÝ
,__inference_conv2d_36_layer_call_fn_15689756inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ûBø
G__inference_conv2d_36_layer_call_and_return_conditional_losses_15689767inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
çBä
3__inference_max_pooling2d_24_layer_call_fn_15689772inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Bÿ
N__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_15689777inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
àBÝ
,__inference_conv2d_37_layer_call_fn_15689786inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ûBø
G__inference_conv2d_37_layer_call_and_return_conditional_losses_15689797inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
çBä
3__inference_max_pooling2d_25_layer_call_fn_15689802inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Bÿ
N__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_15689807inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
àBÝ
,__inference_conv2d_38_layer_call_fn_15689816inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ûBø
G__inference_conv2d_38_layer_call_and_return_conditional_losses_15689827inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
áBÞ
-__inference_reshape_22_layer_call_fn_15689832inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
üBù
H__inference_reshape_22_layer_call_and_return_conditional_losses_15689845inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
èBå
4__inference_low_rank_layer_11_layer_call_fn_15689854inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
O__inference_low_rank_layer_11_layer_call_and_return_conditional_losses_15689868inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
áBÞ
-__inference_reshape_23_layer_call_fn_15689873inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
üBù
H__inference_reshape_23_layer_call_and_return_conditional_losses_15689887inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
áBÞ
-__inference_flatten_12_layer_call_fn_15689892inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
üBù
H__inference_flatten_12_layer_call_and_return_conditional_losses_15689898inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
òBï
-__inference_dropout_12_layer_call_fn_15689903inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
òBï
-__inference_dropout_12_layer_call_fn_15689908inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
H__inference_dropout_12_layer_call_and_return_conditional_losses_15689913inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
H__inference_dropout_12_layer_call_and_return_conditional_losses_15689925inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ßBÜ
+__inference_dense_12_layer_call_fn_15689934inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
úB÷
F__inference_dense_12_layer_call_and_return_conditional_losses_15689945inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
R
Ë	variables
Ì	keras_api

Ítotal

Îcount"
_tf_keras_metric
c
Ï	variables
Ð	keras_api

Ñtotal

Òcount
Ó
_fn_kwargs"
_tf_keras_metric
0
Í0
Î1"
trackable_list_wrapper
.
Ë	variables"
_generic_user_object
:  (2total
:  (2count
0
Ñ0
Ò1"
trackable_list_wrapper
.
Ï	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
/:-2Adam/conv2d_36/kernel/m
!:2Adam/conv2d_36/bias/m
/:-2Adam/conv2d_37/kernel/m
!:2Adam/conv2d_37/bias/m
/:-2Adam/conv2d_38/kernel/m
!:2Adam/conv2d_38/bias/m
:2Adam/weightu_0/m
:2Adam/weightv_0/m
':%	
2Adam/dense_12/kernel/m
 :
2Adam/dense_12/bias/m
/:-2Adam/conv2d_36/kernel/v
!:2Adam/conv2d_36/bias/v
/:-2Adam/conv2d_37/kernel/v
!:2Adam/conv2d_37/bias/v
/:-2Adam/conv2d_38/kernel/v
!:2Adam/conv2d_38/bias/v
:2Adam/weightu_0/v
:2Adam/weightv_0/v
':%	
2Adam/dense_12/kernel/v
 :
2Adam/dense_12/bias/v£
#__inference__wrapped_model_15689063|
*+9:JKef9¢6
/¢,
*'
input_13ÿÿÿÿÿÿÿÿÿ
ª "3ª0
.
dense_12"
dense_12ÿÿÿÿÿÿÿÿÿ
·
G__inference_conv2d_36_layer_call_and_return_conditional_losses_15689767l7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ
 
,__inference_conv2d_36_layer_call_fn_15689756_7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª " ÿÿÿÿÿÿÿÿÿ·
G__inference_conv2d_37_layer_call_and_return_conditional_losses_15689797l*+7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ
 
,__inference_conv2d_37_layer_call_fn_15689786_*+7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª " ÿÿÿÿÿÿÿÿÿ·
G__inference_conv2d_38_layer_call_and_return_conditional_losses_15689827l9:7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ
 
,__inference_conv2d_38_layer_call_fn_15689816_9:7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª " ÿÿÿÿÿÿÿÿÿ§
F__inference_dense_12_layer_call_and_return_conditional_losses_15689945]ef0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 
+__inference_dense_12_layer_call_fn_15689934Pef0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ
ª
H__inference_dropout_12_layer_call_and_return_conditional_losses_15689913^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ª
H__inference_dropout_12_layer_call_and_return_conditional_losses_15689925^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
-__inference_dropout_12_layer_call_fn_15689903Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_dropout_12_layer_call_fn_15689908Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ­
H__inference_flatten_12_layer_call_and_return_conditional_losses_15689898a7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
-__inference_flatten_12_layer_call_fn_15689892T7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¹
O__inference_low_rank_layer_11_layer_call_and_return_conditional_losses_15689868fJK4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿ
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ
 
4__inference_low_rank_layer_11_layer_call_fn_15689854YJK4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿñ
N__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_15689777R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 É
3__inference_max_pooling2d_24_layer_call_fn_15689772R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿñ
N__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_15689807R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 É
3__inference_max_pooling2d_25_layer_call_fn_15689802R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ±
H__inference_reshape_22_layer_call_and_return_conditional_losses_15689845e7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ
 
-__inference_reshape_22_layer_call_fn_15689832X7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ±
H__inference_reshape_23_layer_call_and_return_conditional_losses_15689887e4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿ
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ
 
-__inference_reshape_23_layer_call_fn_15689873X4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿ
ª " ÿÿÿÿÿÿÿÿÿÅ
K__inference_sequential_12_layer_call_and_return_conditional_losses_15689490v
*+9:JKefA¢>
7¢4
*'
input_13ÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 Å
K__inference_sequential_12_layer_call_and_return_conditional_losses_15689525v
*+9:JKefA¢>
7¢4
*'
input_13ÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 Ã
K__inference_sequential_12_layer_call_and_return_conditional_losses_15689674t
*+9:JKef?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 Ã
K__inference_sequential_12_layer_call_and_return_conditional_losses_15689747t
*+9:JKef?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 
0__inference_sequential_12_layer_call_fn_15689254i
*+9:JKefA¢>
7¢4
*'
input_13ÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ

0__inference_sequential_12_layer_call_fn_15689455i
*+9:JKefA¢>
7¢4
*'
input_13ÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ

0__inference_sequential_12_layer_call_fn_15689583g
*+9:JKef?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ

0__inference_sequential_12_layer_call_fn_15689608g
*+9:JKef?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
³
&__inference_signature_wrapper_15689558
*+9:JKefE¢B
¢ 
;ª8
6
input_13*'
input_13ÿÿÿÿÿÿÿÿÿ"3ª0
.
dense_12"
dense_12ÿÿÿÿÿÿÿÿÿ
