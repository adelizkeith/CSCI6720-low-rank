Ùî
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
 "serve*2.10.12v2.10.0-76-gfdfc646704c8Ì	
~
Adam/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_2/bias/v
w
'Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/v*
_output_shapes
:
*
dtype0

Adam/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
*&
shared_nameAdam/dense_2/kernel/v

)Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/v*
_output_shapes
:	
*
dtype0

Adam/conv2d_8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_8/bias/v
y
(Adam/conv2d_8/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_8/bias/v*
_output_shapes
:*
dtype0

Adam/conv2d_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_8/kernel/v

*Adam/conv2d_8/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_8/kernel/v*&
_output_shapes
:*
dtype0

Adam/conv2d_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_7/bias/v
y
(Adam/conv2d_7/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_7/bias/v*
_output_shapes
:*
dtype0

Adam/conv2d_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_7/kernel/v

*Adam/conv2d_7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_7/kernel/v*&
_output_shapes
:*
dtype0

Adam/conv2d_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_6/bias/v
y
(Adam/conv2d_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_6/bias/v*
_output_shapes
:*
dtype0

Adam/conv2d_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_6/kernel/v

*Adam/conv2d_6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_6/kernel/v*&
_output_shapes
:*
dtype0
y
Adam/weightv_0/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/weightv_0/v
r
$Adam/weightv_0/v/Read/ReadVariableOpReadVariableOpAdam/weightv_0/v*
_output_shapes	
:*
dtype0
y
Adam/weightu_0/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/weightu_0/v
r
$Adam/weightu_0/v/Read/ReadVariableOpReadVariableOpAdam/weightu_0/v*
_output_shapes	
:*
dtype0
~
Adam/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_2/bias/m
w
'Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/m*
_output_shapes
:
*
dtype0

Adam/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
*&
shared_nameAdam/dense_2/kernel/m

)Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/m*
_output_shapes
:	
*
dtype0

Adam/conv2d_8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_8/bias/m
y
(Adam/conv2d_8/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_8/bias/m*
_output_shapes
:*
dtype0

Adam/conv2d_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_8/kernel/m

*Adam/conv2d_8/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_8/kernel/m*&
_output_shapes
:*
dtype0

Adam/conv2d_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_7/bias/m
y
(Adam/conv2d_7/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_7/bias/m*
_output_shapes
:*
dtype0

Adam/conv2d_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_7/kernel/m

*Adam/conv2d_7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_7/kernel/m*&
_output_shapes
:*
dtype0

Adam/conv2d_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_6/bias/m
y
(Adam/conv2d_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_6/bias/m*
_output_shapes
:*
dtype0

Adam/conv2d_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_6/kernel/m

*Adam/conv2d_6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_6/kernel/m*&
_output_shapes
:*
dtype0
y
Adam/weightv_0/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/weightv_0/m
r
$Adam/weightv_0/m/Read/ReadVariableOpReadVariableOpAdam/weightv_0/m*
_output_shapes	
:*
dtype0
y
Adam/weightu_0/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/weightu_0/m
r
$Adam/weightu_0/m/Read/ReadVariableOpReadVariableOpAdam/weightu_0/m*
_output_shapes	
:*
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
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:
*
dtype0
y
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
*
shared_namedense_2/kernel
r
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes
:	
*
dtype0
r
conv2d_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_8/bias
k
!conv2d_8/bias/Read/ReadVariableOpReadVariableOpconv2d_8/bias*
_output_shapes
:*
dtype0

conv2d_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_8/kernel
{
#conv2d_8/kernel/Read/ReadVariableOpReadVariableOpconv2d_8/kernel*&
_output_shapes
:*
dtype0
r
conv2d_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_7/bias
k
!conv2d_7/bias/Read/ReadVariableOpReadVariableOpconv2d_7/bias*
_output_shapes
:*
dtype0

conv2d_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_7/kernel
{
#conv2d_7/kernel/Read/ReadVariableOpReadVariableOpconv2d_7/kernel*&
_output_shapes
:*
dtype0
r
conv2d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_6/bias
k
!conv2d_6/bias/Read/ReadVariableOpReadVariableOpconv2d_6/bias*
_output_shapes
:*
dtype0

conv2d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_6/kernel
{
#conv2d_6/kernel/Read/ReadVariableOpReadVariableOpconv2d_6/kernel*&
_output_shapes
:*
dtype0
k
	weightv_0VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	weightv_0
d
weightv_0/Read/ReadVariableOpReadVariableOp	weightv_0*
_output_shapes	
:*
dtype0
k
	weightu_0VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	weightu_0
d
weightu_0/Read/ReadVariableOpReadVariableOp	weightu_0*
_output_shapes	
:*
dtype0

serving_default_input_3Placeholder*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*$
shape:ÿÿÿÿÿÿÿÿÿ
Þ
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_3	weightu_0	weightv_0conv2d_6/kernelconv2d_6/biasconv2d_7/kernelconv2d_7/biasconv2d_8/kernelconv2d_8/biasdense_2/kerneldense_2/bias*
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
GPU2*0J 8 *.
f)R'
%__inference_signature_wrapper_3623378

NoOpNoOp
_
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ö^
valueÌ^BÉ^ BÂ^
Þ
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
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

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
Ì
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses
!	vectors_u
"	vectors_v
#	weightu_0
$	weightv_0*

%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses* 
È
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses

1kernel
2bias
 3_jit_compiled_convolution_op*

4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses* 
È
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses

@kernel
Abias
 B_jit_compiled_convolution_op*

C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses* 
È
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses

Okernel
Pbias
 Q_jit_compiled_convolution_op*
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
#0
$1
12
23
@4
A5
O6
P7
e8
f9*
J
#0
$1
12
23
@4
A5
O6
P7
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
xlearning_rate#mÔ$mÕ1mÖ2m×@mØAmÙOmÚPmÛemÜfmÝ#vÞ$vß1và2vá@vâAvãOväPvåevæfvç*

yserving_default* 
* 
* 
* 

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
&"call_and_return_conditional_losses* 

trace_0* 

trace_0* 

#0
$1*

#0
$1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses*

trace_0* 

trace_0* 

#0*

$0*
\V
VARIABLE_VALUE	weightu_09layer_with_weights-0/weightu_0/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUE	weightv_09layer_with_weights-0/weightv_0/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses* 

trace_0* 

trace_0* 

10
21*

10
21*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses*

trace_0* 

trace_0* 
_Y
VARIABLE_VALUEconv2d_6/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_6/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses* 

trace_0* 

trace_0* 

@0
A1*

@0
A1*
* 

non_trainable_variables
layers
metrics
  layer_regularization_losses
¡layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses*

¢trace_0* 

£trace_0* 
_Y
VARIABLE_VALUEconv2d_7/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_7/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

¤non_trainable_variables
¥layers
¦metrics
 §layer_regularization_losses
¨layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses* 

©trace_0* 

ªtrace_0* 

O0
P1*

O0
P1*
* 

«non_trainable_variables
¬layers
­metrics
 ®layer_regularization_losses
¯layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses*

°trace_0* 

±trace_0* 
_Y
VARIABLE_VALUEconv2d_8/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_8/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
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
^X
VARIABLE_VALUEdense_2/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_2/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
y
VARIABLE_VALUEAdam/weightu_0/mUlayer_with_weights-0/weightu_0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/weightv_0/mUlayer_with_weights-0/weightv_0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv2d_6/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_6/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv2d_7/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_7/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv2d_8/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_8/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_2/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_2/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/weightu_0/vUlayer_with_weights-0/weightu_0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/weightv_0/vUlayer_with_weights-0/weightv_0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv2d_6/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_6/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv2d_7/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_7/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv2d_8/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_8/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_2/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_2/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ÿ
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameweightu_0/Read/ReadVariableOpweightv_0/Read/ReadVariableOp#conv2d_6/kernel/Read/ReadVariableOp!conv2d_6/bias/Read/ReadVariableOp#conv2d_7/kernel/Read/ReadVariableOp!conv2d_7/bias/Read/ReadVariableOp#conv2d_8/kernel/Read/ReadVariableOp!conv2d_8/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp$Adam/weightu_0/m/Read/ReadVariableOp$Adam/weightv_0/m/Read/ReadVariableOp*Adam/conv2d_6/kernel/m/Read/ReadVariableOp(Adam/conv2d_6/bias/m/Read/ReadVariableOp*Adam/conv2d_7/kernel/m/Read/ReadVariableOp(Adam/conv2d_7/bias/m/Read/ReadVariableOp*Adam/conv2d_8/kernel/m/Read/ReadVariableOp(Adam/conv2d_8/bias/m/Read/ReadVariableOp)Adam/dense_2/kernel/m/Read/ReadVariableOp'Adam/dense_2/bias/m/Read/ReadVariableOp$Adam/weightu_0/v/Read/ReadVariableOp$Adam/weightv_0/v/Read/ReadVariableOp*Adam/conv2d_6/kernel/v/Read/ReadVariableOp(Adam/conv2d_6/bias/v/Read/ReadVariableOp*Adam/conv2d_7/kernel/v/Read/ReadVariableOp(Adam/conv2d_7/bias/v/Read/ReadVariableOp*Adam/conv2d_8/kernel/v/Read/ReadVariableOp(Adam/conv2d_8/bias/v/Read/ReadVariableOp)Adam/dense_2/kernel/v/Read/ReadVariableOp'Adam/dense_2/bias/v/Read/ReadVariableOpConst*4
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
GPU2*0J 8 *)
f$R"
 __inference__traced_save_3623905
î
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename	weightu_0	weightv_0conv2d_6/kernelconv2d_6/biasconv2d_7/kernelconv2d_7/biasconv2d_8/kernelconv2d_8/biasdense_2/kerneldense_2/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/weightu_0/mAdam/weightv_0/mAdam/conv2d_6/kernel/mAdam/conv2d_6/bias/mAdam/conv2d_7/kernel/mAdam/conv2d_7/bias/mAdam/conv2d_8/kernel/mAdam/conv2d_8/bias/mAdam/dense_2/kernel/mAdam/dense_2/bias/mAdam/weightu_0/vAdam/weightv_0/vAdam/conv2d_6/kernel/vAdam/conv2d_6/bias/vAdam/conv2d_7/kernel/vAdam/conv2d_7/bias/vAdam/conv2d_8/kernel/vAdam/conv2d_8/bias/vAdam/dense_2/kernel/vAdam/dense_2/bias/v*3
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
GPU2*0J 8 *,
f'R%
#__inference__traced_restore_3624032ó
Q
Ó
 __inference__traced_save_3623905
file_prefix(
$savev2_weightu_0_read_readvariableop(
$savev2_weightv_0_read_readvariableop.
*savev2_conv2d_6_kernel_read_readvariableop,
(savev2_conv2d_6_bias_read_readvariableop.
*savev2_conv2d_7_kernel_read_readvariableop,
(savev2_conv2d_7_bias_read_readvariableop.
*savev2_conv2d_8_kernel_read_readvariableop,
(savev2_conv2d_8_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop/
+savev2_adam_weightu_0_m_read_readvariableop/
+savev2_adam_weightv_0_m_read_readvariableop5
1savev2_adam_conv2d_6_kernel_m_read_readvariableop3
/savev2_adam_conv2d_6_bias_m_read_readvariableop5
1savev2_adam_conv2d_7_kernel_m_read_readvariableop3
/savev2_adam_conv2d_7_bias_m_read_readvariableop5
1savev2_adam_conv2d_8_kernel_m_read_readvariableop3
/savev2_adam_conv2d_8_bias_m_read_readvariableop4
0savev2_adam_dense_2_kernel_m_read_readvariableop2
.savev2_adam_dense_2_bias_m_read_readvariableop/
+savev2_adam_weightu_0_v_read_readvariableop/
+savev2_adam_weightv_0_v_read_readvariableop5
1savev2_adam_conv2d_6_kernel_v_read_readvariableop3
/savev2_adam_conv2d_6_bias_v_read_readvariableop5
1savev2_adam_conv2d_7_kernel_v_read_readvariableop3
/savev2_adam_conv2d_7_bias_v_read_readvariableop5
1savev2_adam_conv2d_8_kernel_v_read_readvariableop3
/savev2_adam_conv2d_8_bias_v_read_readvariableop4
0savev2_adam_dense_2_kernel_v_read_readvariableop2
.savev2_adam_dense_2_bias_v_read_readvariableop
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
value B(B9layer_with_weights-0/weightu_0/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-0/weightv_0/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/weightu_0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/weightv_0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/weightu_0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/weightv_0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH½
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ¡
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0$savev2_weightu_0_read_readvariableop$savev2_weightv_0_read_readvariableop*savev2_conv2d_6_kernel_read_readvariableop(savev2_conv2d_6_bias_read_readvariableop*savev2_conv2d_7_kernel_read_readvariableop(savev2_conv2d_7_bias_read_readvariableop*savev2_conv2d_8_kernel_read_readvariableop(savev2_conv2d_8_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop+savev2_adam_weightu_0_m_read_readvariableop+savev2_adam_weightv_0_m_read_readvariableop1savev2_adam_conv2d_6_kernel_m_read_readvariableop/savev2_adam_conv2d_6_bias_m_read_readvariableop1savev2_adam_conv2d_7_kernel_m_read_readvariableop/savev2_adam_conv2d_7_bias_m_read_readvariableop1savev2_adam_conv2d_8_kernel_m_read_readvariableop/savev2_adam_conv2d_8_bias_m_read_readvariableop0savev2_adam_dense_2_kernel_m_read_readvariableop.savev2_adam_dense_2_bias_m_read_readvariableop+savev2_adam_weightu_0_v_read_readvariableop+savev2_adam_weightv_0_v_read_readvariableop1savev2_adam_conv2d_6_kernel_v_read_readvariableop/savev2_adam_conv2d_6_bias_v_read_readvariableop1savev2_adam_conv2d_7_kernel_v_read_readvariableop/savev2_adam_conv2d_7_bias_v_read_readvariableop1savev2_adam_conv2d_8_kernel_v_read_readvariableop/savev2_adam_conv2d_8_bias_v_read_readvariableop0savev2_adam_dense_2_kernel_v_read_readvariableop.savev2_adam_dense_2_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
Ë: :::::::::	
:
: : : : : : : : : :::::::::	
:
:::::::::	
:
: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:!

_output_shapes	
::!

_output_shapes	
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::%	!

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
: :!

_output_shapes	
::!

_output_shapes	
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::%!

_output_shapes
:	
: 

_output_shapes
:
:!

_output_shapes	
::!

_output_shapes	
::, (
&
_output_shapes
:: !

_output_shapes
::,"(
&
_output_shapes
:: #

_output_shapes
::,$(
&
_output_shapes
:: %

_output_shapes
::%&!

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
ü	
e
F__inference_dropout_2_layer_call_and_return_conditional_losses_3623104

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
ë

b
F__inference_reshape_2_layer_call_and_return_conditional_losses_3623585

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
B :Q
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
:ÿÿÿÿÿÿÿÿÿ]
IdentityIdentityReshape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

h
L__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_3622904

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

þ
E__inference_conv2d_6_layer_call_and_return_conditional_losses_3622976

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
½
M
1__inference_max_pooling2d_5_layer_call_fn_3623682

inputs
identityÝ
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
GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_3622904
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
¤

ö
D__inference_dense_2_layer_call_and_return_conditional_losses_3623044

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
^


"__inference__wrapped_model_3622883
input_3N
?sequential_2_low_rank_layer_1_tensordot_readvariableop_resource:	P
Asequential_2_low_rank_layer_1_tensordot_readvariableop_1_resource:	N
4sequential_2_conv2d_6_conv2d_readvariableop_resource:C
5sequential_2_conv2d_6_biasadd_readvariableop_resource:N
4sequential_2_conv2d_7_conv2d_readvariableop_resource:C
5sequential_2_conv2d_7_biasadd_readvariableop_resource:N
4sequential_2_conv2d_8_conv2d_readvariableop_resource:C
5sequential_2_conv2d_8_biasadd_readvariableop_resource:F
3sequential_2_dense_2_matmul_readvariableop_resource:	
B
4sequential_2_dense_2_biasadd_readvariableop_resource:

identity¢,sequential_2/conv2d_6/BiasAdd/ReadVariableOp¢+sequential_2/conv2d_6/Conv2D/ReadVariableOp¢,sequential_2/conv2d_7/BiasAdd/ReadVariableOp¢+sequential_2/conv2d_7/Conv2D/ReadVariableOp¢,sequential_2/conv2d_8/BiasAdd/ReadVariableOp¢+sequential_2/conv2d_8/Conv2D/ReadVariableOp¢+sequential_2/dense_2/BiasAdd/ReadVariableOp¢*sequential_2/dense_2/MatMul/ReadVariableOp¢6sequential_2/low_rank_layer_1/Tensordot/ReadVariableOp¢8sequential_2/low_rank_layer_1/Tensordot/ReadVariableOp_1S
sequential_2/reshape_2/ShapeShapeinput_3*
T0*
_output_shapes
:t
*sequential_2/reshape_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_2/reshape_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_2/reshape_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ä
$sequential_2/reshape_2/strided_sliceStridedSlice%sequential_2/reshape_2/Shape:output:03sequential_2/reshape_2/strided_slice/stack:output:05sequential_2/reshape_2/strided_slice/stack_1:output:05sequential_2/reshape_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
&sequential_2/reshape_2/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :h
&sequential_2/reshape_2/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :ë
$sequential_2/reshape_2/Reshape/shapePack-sequential_2/reshape_2/strided_slice:output:0/sequential_2/reshape_2/Reshape/shape/1:output:0/sequential_2/reshape_2/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:
sequential_2/reshape_2/ReshapeReshapeinput_3-sequential_2/reshape_2/Reshape/shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
6sequential_2/low_rank_layer_1/Tensordot/ReadVariableOpReadVariableOp?sequential_2_low_rank_layer_1_tensordot_readvariableop_resource*
_output_shapes	
:*
dtype0·
8sequential_2/low_rank_layer_1/Tensordot/ReadVariableOp_1ReadVariableOpAsequential_2_low_rank_layer_1_tensordot_readvariableop_1_resource*
_output_shapes	
:*
dtype0
5sequential_2/low_rank_layer_1/Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"     ä
/sequential_2/low_rank_layer_1/Tensordot/ReshapeReshape>sequential_2/low_rank_layer_1/Tensordot/ReadVariableOp:value:0>sequential_2/low_rank_layer_1/Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	
7sequential_2/low_rank_layer_1/Tensordot/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"     ê
1sequential_2/low_rank_layer_1/Tensordot/Reshape_1Reshape@sequential_2/low_rank_layer_1/Tensordot/ReadVariableOp_1:value:0@sequential_2/low_rank_layer_1/Tensordot/Reshape_1/shape:output:0*
T0*
_output_shapes
:	Ù
.sequential_2/low_rank_layer_1/Tensordot/MatMulMatMul8sequential_2/low_rank_layer_1/Tensordot/Reshape:output:0:sequential_2/low_rank_layer_1/Tensordot/Reshape_1:output:0*
T0* 
_output_shapes
:
Ï
$sequential_2/low_rank_layer_1/matmulBatchMatMulV28sequential_2/low_rank_layer_1/Tensordot/MatMul:product:0'sequential_2/reshape_2/Reshape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
sequential_2/reshape_3/ShapeShape-sequential_2/low_rank_layer_1/matmul:output:0*
T0*
_output_shapes
:t
*sequential_2/reshape_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_2/reshape_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_2/reshape_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ä
$sequential_2/reshape_3/strided_sliceStridedSlice%sequential_2/reshape_3/Shape:output:03sequential_2/reshape_3/strided_slice/stack:output:05sequential_2/reshape_3/strided_slice/stack_1:output:05sequential_2/reshape_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_2/reshape_3/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :h
&sequential_2/reshape_3/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :h
&sequential_2/reshape_3/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :
$sequential_2/reshape_3/Reshape/shapePack-sequential_2/reshape_3/strided_slice:output:0/sequential_2/reshape_3/Reshape/shape/1:output:0/sequential_2/reshape_3/Reshape/shape/2:output:0/sequential_2/reshape_3/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:Á
sequential_2/reshape_3/ReshapeReshape-sequential_2/low_rank_layer_1/matmul:output:0-sequential_2/reshape_3/Reshape/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
+sequential_2/conv2d_6/Conv2D/ReadVariableOpReadVariableOp4sequential_2_conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0ç
sequential_2/conv2d_6/Conv2DConv2D'sequential_2/reshape_3/Reshape:output:03sequential_2/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

,sequential_2/conv2d_6/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¿
sequential_2/conv2d_6/BiasAddBiasAdd%sequential_2/conv2d_6/Conv2D:output:04sequential_2/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_2/conv2d_6/ReluRelu&sequential_2/conv2d_6/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆ
$sequential_2/max_pooling2d_4/MaxPoolMaxPool(sequential_2/conv2d_6/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
¨
+sequential_2/conv2d_7/Conv2D/ReadVariableOpReadVariableOp4sequential_2_conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0í
sequential_2/conv2d_7/Conv2DConv2D-sequential_2/max_pooling2d_4/MaxPool:output:03sequential_2/conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

,sequential_2/conv2d_7/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_conv2d_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¿
sequential_2/conv2d_7/BiasAddBiasAdd%sequential_2/conv2d_7/Conv2D:output:04sequential_2/conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_2/conv2d_7/ReluRelu&sequential_2/conv2d_7/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆ
$sequential_2/max_pooling2d_5/MaxPoolMaxPool(sequential_2/conv2d_7/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
¨
+sequential_2/conv2d_8/Conv2D/ReadVariableOpReadVariableOp4sequential_2_conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0í
sequential_2/conv2d_8/Conv2DConv2D-sequential_2/max_pooling2d_5/MaxPool:output:03sequential_2/conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

,sequential_2/conv2d_8/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¿
sequential_2/conv2d_8/BiasAddBiasAdd%sequential_2/conv2d_8/Conv2D:output:04sequential_2/conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_2/conv2d_8/ReluRelu&sequential_2/conv2d_8/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
sequential_2/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ­
sequential_2/flatten_2/ReshapeReshape(sequential_2/conv2d_8/Relu:activations:0%sequential_2/flatten_2/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_2/dropout_2/IdentityIdentity'sequential_2/flatten_2/Reshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*sequential_2/dense_2/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_2_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0µ
sequential_2/dense_2/MatMulMatMul(sequential_2/dropout_2/Identity:output:02sequential_2/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

+sequential_2/dense_2/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0µ
sequential_2/dense_2/BiasAddBiasAdd%sequential_2/dense_2/MatMul:product:03sequential_2/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

sequential_2/dense_2/SoftmaxSoftmax%sequential_2/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
u
IdentityIdentity&sequential_2/dense_2/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¬
NoOpNoOp-^sequential_2/conv2d_6/BiasAdd/ReadVariableOp,^sequential_2/conv2d_6/Conv2D/ReadVariableOp-^sequential_2/conv2d_7/BiasAdd/ReadVariableOp,^sequential_2/conv2d_7/Conv2D/ReadVariableOp-^sequential_2/conv2d_8/BiasAdd/ReadVariableOp,^sequential_2/conv2d_8/Conv2D/ReadVariableOp,^sequential_2/dense_2/BiasAdd/ReadVariableOp+^sequential_2/dense_2/MatMul/ReadVariableOp7^sequential_2/low_rank_layer_1/Tensordot/ReadVariableOp9^sequential_2/low_rank_layer_1/Tensordot/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2\
,sequential_2/conv2d_6/BiasAdd/ReadVariableOp,sequential_2/conv2d_6/BiasAdd/ReadVariableOp2Z
+sequential_2/conv2d_6/Conv2D/ReadVariableOp+sequential_2/conv2d_6/Conv2D/ReadVariableOp2\
,sequential_2/conv2d_7/BiasAdd/ReadVariableOp,sequential_2/conv2d_7/BiasAdd/ReadVariableOp2Z
+sequential_2/conv2d_7/Conv2D/ReadVariableOp+sequential_2/conv2d_7/Conv2D/ReadVariableOp2\
,sequential_2/conv2d_8/BiasAdd/ReadVariableOp,sequential_2/conv2d_8/BiasAdd/ReadVariableOp2Z
+sequential_2/conv2d_8/Conv2D/ReadVariableOp+sequential_2/conv2d_8/Conv2D/ReadVariableOp2Z
+sequential_2/dense_2/BiasAdd/ReadVariableOp+sequential_2/dense_2/BiasAdd/ReadVariableOp2X
*sequential_2/dense_2/MatMul/ReadVariableOp*sequential_2/dense_2/MatMul/ReadVariableOp2p
6sequential_2/low_rank_layer_1/Tensordot/ReadVariableOp6sequential_2/low_rank_layer_1/Tensordot/ReadVariableOp2t
8sequential_2/low_rank_layer_1/Tensordot/ReadVariableOp_18sequential_2/low_rank_layer_1/Tensordot/ReadVariableOp_1:X T
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_3

þ
E__inference_conv2d_8_layer_call_and_return_conditional_losses_3623707

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
.

I__inference_sequential_2_layer_call_and_return_conditional_losses_3623310
input_3'
low_rank_layer_1_3623279:	'
low_rank_layer_1_3623281:	*
conv2d_6_3623285:
conv2d_6_3623287:*
conv2d_7_3623291:
conv2d_7_3623293:*
conv2d_8_3623297:
conv2d_8_3623299:"
dense_2_3623304:	

dense_2_3623306:

identity¢ conv2d_6/StatefulPartitionedCall¢ conv2d_7/StatefulPartitionedCall¢ conv2d_8/StatefulPartitionedCall¢dense_2/StatefulPartitionedCall¢(low_rank_layer_1/StatefulPartitionedCallÄ
reshape_2/PartitionedCallPartitionedCallinput_3*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_reshape_2_layer_call_and_return_conditional_losses_3622927·
(low_rank_layer_1/StatefulPartitionedCallStatefulPartitionedCall"reshape_2/PartitionedCall:output:0low_rank_layer_1_3623279low_rank_layer_1_3623281*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_low_rank_layer_1_layer_call_and_return_conditional_losses_3622943ñ
reshape_3/PartitionedCallPartitionedCall1low_rank_layer_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_reshape_3_layer_call_and_return_conditional_losses_3622963
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall"reshape_3/PartitionedCall:output:0conv2d_6_3623285conv2d_6_3623287*
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
GPU2*0J 8 *N
fIRG
E__inference_conv2d_6_layer_call_and_return_conditional_losses_3622976õ
max_pooling2d_4/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_3622892 
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0conv2d_7_3623291conv2d_7_3623293*
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
GPU2*0J 8 *N
fIRG
E__inference_conv2d_7_layer_call_and_return_conditional_losses_3622994õ
max_pooling2d_5/PartitionedCallPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_3622904 
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0conv2d_8_3623297conv2d_8_3623299*
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
GPU2*0J 8 *N
fIRG
E__inference_conv2d_8_layer_call_and_return_conditional_losses_3623012â
flatten_2/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *O
fJRH
F__inference_flatten_2_layer_call_and_return_conditional_losses_3623024Û
dropout_2/PartitionedCallPartitionedCall"flatten_2/PartitionedCall:output:0*
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
GPU2*0J 8 *O
fJRH
F__inference_dropout_2_layer_call_and_return_conditional_losses_3623031
dense_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0dense_2_3623304dense_2_3623306*
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
GPU2*0J 8 *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_3623044w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ü
NoOpNoOp!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall)^low_rank_layer_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2T
(low_rank_layer_1/StatefulPartitionedCall(low_rank_layer_1/StatefulPartitionedCall:X T
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_3
¶
G
+__inference_flatten_2_layer_call_fn_3623712

inputs
identityµ
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
GPU2*0J 8 *O
fJRH
F__inference_flatten_2_layer_call_and_return_conditional_losses_3623024a
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

þ
E__inference_conv2d_8_layer_call_and_return_conditional_losses_3623012

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
§/
»
I__inference_sequential_2_layer_call_and_return_conditional_losses_3623227

inputs'
low_rank_layer_1_3623196:	'
low_rank_layer_1_3623198:	*
conv2d_6_3623202:
conv2d_6_3623204:*
conv2d_7_3623208:
conv2d_7_3623210:*
conv2d_8_3623214:
conv2d_8_3623216:"
dense_2_3623221:	

dense_2_3623223:

identity¢ conv2d_6/StatefulPartitionedCall¢ conv2d_7/StatefulPartitionedCall¢ conv2d_8/StatefulPartitionedCall¢dense_2/StatefulPartitionedCall¢!dropout_2/StatefulPartitionedCall¢(low_rank_layer_1/StatefulPartitionedCallÃ
reshape_2/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_reshape_2_layer_call_and_return_conditional_losses_3622927·
(low_rank_layer_1/StatefulPartitionedCallStatefulPartitionedCall"reshape_2/PartitionedCall:output:0low_rank_layer_1_3623196low_rank_layer_1_3623198*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_low_rank_layer_1_layer_call_and_return_conditional_losses_3622943ñ
reshape_3/PartitionedCallPartitionedCall1low_rank_layer_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_reshape_3_layer_call_and_return_conditional_losses_3622963
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall"reshape_3/PartitionedCall:output:0conv2d_6_3623202conv2d_6_3623204*
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
GPU2*0J 8 *N
fIRG
E__inference_conv2d_6_layer_call_and_return_conditional_losses_3622976õ
max_pooling2d_4/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_3622892 
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0conv2d_7_3623208conv2d_7_3623210*
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
GPU2*0J 8 *N
fIRG
E__inference_conv2d_7_layer_call_and_return_conditional_losses_3622994õ
max_pooling2d_5/PartitionedCallPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_3622904 
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0conv2d_8_3623214conv2d_8_3623216*
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
GPU2*0J 8 *N
fIRG
E__inference_conv2d_8_layer_call_and_return_conditional_losses_3623012â
flatten_2/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *O
fJRH
F__inference_flatten_2_layer_call_and_return_conditional_losses_3623024ë
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0*
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
GPU2*0J 8 *O
fJRH
F__inference_dropout_2_layer_call_and_return_conditional_losses_3623104
dense_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0dense_2_3623221dense_2_3623223*
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
GPU2*0J 8 *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_3623044w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
NoOpNoOp!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall)^low_rank_layer_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2T
(low_rank_layer_1/StatefulPartitionedCall(low_rank_layer_1/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

þ
E__inference_conv2d_7_layer_call_and_return_conditional_losses_3622994

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
Æ


.__inference_sequential_2_layer_call_fn_3623403

inputs
unknown:	
	unknown_0:	#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:	

	unknown_8:

identity¢StatefulPartitionedCallÉ
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
GPU2*0J 8 *R
fMRK
I__inference_sequential_2_layer_call_and_return_conditional_losses_3623051o
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
¾
G
+__inference_reshape_2_layer_call_fn_3623572

inputs
identity¹
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_reshape_2_layer_call_and_return_conditional_losses_3622927e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¨
G
+__inference_dropout_2_layer_call_fn_3623723

inputs
identityµ
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
GPU2*0J 8 *O
fJRH
F__inference_dropout_2_layer_call_and_return_conditional_losses_3623031a
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
È
b
F__inference_flatten_2_layer_call_and_return_conditional_losses_3623718

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
½
M
1__inference_max_pooling2d_4_layer_call_fn_3623652

inputs
identityÝ
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
GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_3622892
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
Ý
d
F__inference_dropout_2_layer_call_and_return_conditional_losses_3623031

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
¤

ö
D__inference_dense_2_layer_call_and_return_conditional_losses_3623765

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

h
L__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_3623687

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
Ý
d
F__inference_dropout_2_layer_call_and_return_conditional_losses_3623733

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
é

2__inference_low_rank_layer_1_layer_call_fn_3623594

inputs
unknown:	
	unknown_0:	
identity¢StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_low_rank_layer_1_layer_call_and_return_conditional_losses_3622943t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ú
d
+__inference_dropout_2_layer_call_fn_3623728

inputs
identity¢StatefulPartitionedCallÅ
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
GPU2*0J 8 *O
fJRH
F__inference_dropout_2_layer_call_and_return_conditional_losses_3623104p
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

h
L__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_3623657

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
¾
G
+__inference_reshape_3_layer_call_fn_3623613

inputs
identity¼
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_reshape_3_layer_call_and_return_conditional_losses_3622963h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÒM
·
I__inference_sequential_2_layer_call_and_return_conditional_losses_3623494

inputsA
2low_rank_layer_1_tensordot_readvariableop_resource:	C
4low_rank_layer_1_tensordot_readvariableop_1_resource:	A
'conv2d_6_conv2d_readvariableop_resource:6
(conv2d_6_biasadd_readvariableop_resource:A
'conv2d_7_conv2d_readvariableop_resource:6
(conv2d_7_biasadd_readvariableop_resource:A
'conv2d_8_conv2d_readvariableop_resource:6
(conv2d_8_biasadd_readvariableop_resource:9
&dense_2_matmul_readvariableop_resource:	
5
'dense_2_biasadd_readvariableop_resource:

identity¢conv2d_6/BiasAdd/ReadVariableOp¢conv2d_6/Conv2D/ReadVariableOp¢conv2d_7/BiasAdd/ReadVariableOp¢conv2d_7/Conv2D/ReadVariableOp¢conv2d_8/BiasAdd/ReadVariableOp¢conv2d_8/Conv2D/ReadVariableOp¢dense_2/BiasAdd/ReadVariableOp¢dense_2/MatMul/ReadVariableOp¢)low_rank_layer_1/Tensordot/ReadVariableOp¢+low_rank_layer_1/Tensordot/ReadVariableOp_1E
reshape_2/ShapeShapeinputs*
T0*
_output_shapes
:g
reshape_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
reshape_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
reshape_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
reshape_2/strided_sliceStridedSlicereshape_2/Shape:output:0&reshape_2/strided_slice/stack:output:0(reshape_2/strided_slice/stack_1:output:0(reshape_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
reshape_2/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :[
reshape_2/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :·
reshape_2/Reshape/shapePack reshape_2/strided_slice:output:0"reshape_2/Reshape/shape/1:output:0"reshape_2/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:}
reshape_2/ReshapeReshapeinputs reshape_2/Reshape/shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)low_rank_layer_1/Tensordot/ReadVariableOpReadVariableOp2low_rank_layer_1_tensordot_readvariableop_resource*
_output_shapes	
:*
dtype0
+low_rank_layer_1/Tensordot/ReadVariableOp_1ReadVariableOp4low_rank_layer_1_tensordot_readvariableop_1_resource*
_output_shapes	
:*
dtype0y
(low_rank_layer_1/Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"     ½
"low_rank_layer_1/Tensordot/ReshapeReshape1low_rank_layer_1/Tensordot/ReadVariableOp:value:01low_rank_layer_1/Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	{
*low_rank_layer_1/Tensordot/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"     Ã
$low_rank_layer_1/Tensordot/Reshape_1Reshape3low_rank_layer_1/Tensordot/ReadVariableOp_1:value:03low_rank_layer_1/Tensordot/Reshape_1/shape:output:0*
T0*
_output_shapes
:	²
!low_rank_layer_1/Tensordot/MatMulMatMul+low_rank_layer_1/Tensordot/Reshape:output:0-low_rank_layer_1/Tensordot/Reshape_1:output:0*
T0* 
_output_shapes
:
¨
low_rank_layer_1/matmulBatchMatMulV2+low_rank_layer_1/Tensordot/MatMul:product:0reshape_2/Reshape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
reshape_3/ShapeShape low_rank_layer_1/matmul:output:0*
T0*
_output_shapes
:g
reshape_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
reshape_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
reshape_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
reshape_3/strided_sliceStridedSlicereshape_3/Shape:output:0&reshape_3/strided_slice/stack:output:0(reshape_3/strided_slice/stack_1:output:0(reshape_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
reshape_3/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :[
reshape_3/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :[
reshape_3/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :Û
reshape_3/Reshape/shapePack reshape_3/strided_slice:output:0"reshape_3/Reshape/shape/1:output:0"reshape_3/Reshape/shape/2:output:0"reshape_3/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:
reshape_3/ReshapeReshape low_rank_layer_1/matmul:output:0 reshape_3/Reshape/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0À
conv2d_6/Conv2DConv2Dreshape_3/Reshape:output:0&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_6/BiasAddBiasAddconv2d_6/Conv2D:output:0'conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
conv2d_6/ReluReluconv2d_6/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
max_pooling2d_4/MaxPoolMaxPoolconv2d_6/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides

conv2d_7/Conv2D/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Æ
conv2d_7/Conv2DConv2D max_pooling2d_4/MaxPool:output:0&conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

conv2d_7/BiasAdd/ReadVariableOpReadVariableOp(conv2d_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_7/BiasAddBiasAddconv2d_7/Conv2D:output:0'conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
conv2d_7/ReluReluconv2d_7/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
max_pooling2d_5/MaxPoolMaxPoolconv2d_7/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides

conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Æ
conv2d_8/Conv2DConv2D max_pooling2d_5/MaxPool:output:0&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

conv2d_8/BiasAdd/ReadVariableOpReadVariableOp(conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_8/BiasAddBiasAddconv2d_8/Conv2D:output:0'conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
conv2d_8/ReluReluconv2d_8/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
flatten_2/ReshapeReshapeconv2d_8/Relu:activations:0flatten_2/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
dropout_2/IdentityIdentityflatten_2/Reshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0
dense_2/MatMulMatMuldropout_2/Identity:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
f
dense_2/SoftmaxSoftmaxdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
h
IdentityIdentitydense_2/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ª
NoOpNoOp ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp ^conv2d_7/BiasAdd/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp ^conv2d_8/BiasAdd/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*^low_rank_layer_1/Tensordot/ReadVariableOp,^low_rank_layer_1/Tensordot/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp2B
conv2d_7/BiasAdd/ReadVariableOpconv2d_7/BiasAdd/ReadVariableOp2@
conv2d_7/Conv2D/ReadVariableOpconv2d_7/Conv2D/ReadVariableOp2B
conv2d_8/BiasAdd/ReadVariableOpconv2d_8/BiasAdd/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2V
)low_rank_layer_1/Tensordot/ReadVariableOp)low_rank_layer_1/Tensordot/ReadVariableOp2Z
+low_rank_layer_1/Tensordot/ReadVariableOp_1+low_rank_layer_1/Tensordot/ReadVariableOp_1:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
×
b
F__inference_reshape_3_layer_call_and_return_conditional_losses_3623627

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
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :©
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:l
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ï

*__inference_conv2d_6_layer_call_fn_3623636

inputs!
unknown:
	unknown_0:
identity¢StatefulPartitionedCallå
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
GPU2*0J 8 *N
fIRG
E__inference_conv2d_6_layer_call_and_return_conditional_losses_3622976w
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
Æ


.__inference_sequential_2_layer_call_fn_3623428

inputs
unknown:	
	unknown_0:	#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:	

	unknown_8:

identity¢StatefulPartitionedCallÉ
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
GPU2*0J 8 *R
fMRK
I__inference_sequential_2_layer_call_and_return_conditional_losses_3623227o
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
ë

b
F__inference_reshape_2_layer_call_and_return_conditional_losses_3622927

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
B :Q
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
:ÿÿÿÿÿÿÿÿÿ]
IdentityIdentityReshape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs



%__inference_signature_wrapper_3623378
input_3
unknown:	
	unknown_0:	#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:	

	unknown_8:

identity¢StatefulPartitionedCall£
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
GPU2*0J 8 *+
f&R$
"__inference__wrapped_model_3622883o
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
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_3
É


.__inference_sequential_2_layer_call_fn_3623275
input_3
unknown:	
	unknown_0:	#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:	

	unknown_8:

identity¢StatefulPartitionedCallÊ
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
GPU2*0J 8 *R
fMRK
I__inference_sequential_2_layer_call_and_return_conditional_losses_3623227o
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
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_3
×
b
F__inference_reshape_3_layer_call_and_return_conditional_losses_3622963

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
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :©
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:l
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ª/
¼
I__inference_sequential_2_layer_call_and_return_conditional_losses_3623345
input_3'
low_rank_layer_1_3623314:	'
low_rank_layer_1_3623316:	*
conv2d_6_3623320:
conv2d_6_3623322:*
conv2d_7_3623326:
conv2d_7_3623328:*
conv2d_8_3623332:
conv2d_8_3623334:"
dense_2_3623339:	

dense_2_3623341:

identity¢ conv2d_6/StatefulPartitionedCall¢ conv2d_7/StatefulPartitionedCall¢ conv2d_8/StatefulPartitionedCall¢dense_2/StatefulPartitionedCall¢!dropout_2/StatefulPartitionedCall¢(low_rank_layer_1/StatefulPartitionedCallÄ
reshape_2/PartitionedCallPartitionedCallinput_3*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_reshape_2_layer_call_and_return_conditional_losses_3622927·
(low_rank_layer_1/StatefulPartitionedCallStatefulPartitionedCall"reshape_2/PartitionedCall:output:0low_rank_layer_1_3623314low_rank_layer_1_3623316*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_low_rank_layer_1_layer_call_and_return_conditional_losses_3622943ñ
reshape_3/PartitionedCallPartitionedCall1low_rank_layer_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_reshape_3_layer_call_and_return_conditional_losses_3622963
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall"reshape_3/PartitionedCall:output:0conv2d_6_3623320conv2d_6_3623322*
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
GPU2*0J 8 *N
fIRG
E__inference_conv2d_6_layer_call_and_return_conditional_losses_3622976õ
max_pooling2d_4/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_3622892 
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0conv2d_7_3623326conv2d_7_3623328*
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
GPU2*0J 8 *N
fIRG
E__inference_conv2d_7_layer_call_and_return_conditional_losses_3622994õ
max_pooling2d_5/PartitionedCallPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_3622904 
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0conv2d_8_3623332conv2d_8_3623334*
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
GPU2*0J 8 *N
fIRG
E__inference_conv2d_8_layer_call_and_return_conditional_losses_3623012â
flatten_2/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *O
fJRH
F__inference_flatten_2_layer_call_and_return_conditional_losses_3623024ë
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0*
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
GPU2*0J 8 *O
fJRH
F__inference_dropout_2_layer_call_and_return_conditional_losses_3623104
dense_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0dense_2_3623339dense_2_3623341*
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
GPU2*0J 8 *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_3623044w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
NoOpNoOp!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall)^low_rank_layer_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2T
(low_rank_layer_1/StatefulPartitionedCall(low_rank_layer_1/StatefulPartitionedCall:X T
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_3

h
L__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_3622892

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
ï

*__inference_conv2d_7_layer_call_fn_3623666

inputs!
unknown:
	unknown_0:
identity¢StatefulPartitionedCallå
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
GPU2*0J 8 *N
fIRG
E__inference_conv2d_7_layer_call_and_return_conditional_losses_3622994w
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


M__inference_low_rank_layer_1_layer_call_and_return_conditional_losses_3622943

inputs0
!tensordot_readvariableop_resource:	2
#tensordot_readvariableop_1_resource:	
identity¢Tensordot/ReadVariableOp¢Tensordot/ReadVariableOp_1w
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes	
:*
dtype0{
Tensordot/ReadVariableOp_1ReadVariableOp#tensordot_readvariableop_1_resource*
_output_shapes	
:*
dtype0h
Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"     
Tensordot/ReshapeReshape Tensordot/ReadVariableOp:value:0 Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	j
Tensordot/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"     
Tensordot/Reshape_1Reshape"Tensordot/ReadVariableOp_1:value:0"Tensordot/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot/MatMulMatMulTensordot/Reshape:output:0Tensordot/Reshape_1:output:0*
T0* 
_output_shapes
:
r
matmulBatchMatMulV2Tensordot/MatMul:product:0inputs*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
IdentityIdentitymatmul:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
NoOpNoOp^Tensordot/ReadVariableOp^Tensordot/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 24
Tensordot/ReadVariableOpTensordot/ReadVariableOp28
Tensordot/ReadVariableOp_1Tensordot/ReadVariableOp_1:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

þ
E__inference_conv2d_7_layer_call_and_return_conditional_losses_3623677

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

þ
E__inference_conv2d_6_layer_call_and_return_conditional_losses_3623647

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
ï

*__inference_conv2d_8_layer_call_fn_3623696

inputs!
unknown:
	unknown_0:
identity¢StatefulPartitionedCallå
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
GPU2*0J 8 *N
fIRG
E__inference_conv2d_8_layer_call_and_return_conditional_losses_3623012w
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
È

)__inference_dense_2_layer_call_fn_3623754

inputs
unknown:	

	unknown_0:

identity¢StatefulPartitionedCallÜ
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
GPU2*0J 8 *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_3623044o
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
U
·
I__inference_sequential_2_layer_call_and_return_conditional_losses_3623567

inputsA
2low_rank_layer_1_tensordot_readvariableop_resource:	C
4low_rank_layer_1_tensordot_readvariableop_1_resource:	A
'conv2d_6_conv2d_readvariableop_resource:6
(conv2d_6_biasadd_readvariableop_resource:A
'conv2d_7_conv2d_readvariableop_resource:6
(conv2d_7_biasadd_readvariableop_resource:A
'conv2d_8_conv2d_readvariableop_resource:6
(conv2d_8_biasadd_readvariableop_resource:9
&dense_2_matmul_readvariableop_resource:	
5
'dense_2_biasadd_readvariableop_resource:

identity¢conv2d_6/BiasAdd/ReadVariableOp¢conv2d_6/Conv2D/ReadVariableOp¢conv2d_7/BiasAdd/ReadVariableOp¢conv2d_7/Conv2D/ReadVariableOp¢conv2d_8/BiasAdd/ReadVariableOp¢conv2d_8/Conv2D/ReadVariableOp¢dense_2/BiasAdd/ReadVariableOp¢dense_2/MatMul/ReadVariableOp¢)low_rank_layer_1/Tensordot/ReadVariableOp¢+low_rank_layer_1/Tensordot/ReadVariableOp_1E
reshape_2/ShapeShapeinputs*
T0*
_output_shapes
:g
reshape_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
reshape_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
reshape_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
reshape_2/strided_sliceStridedSlicereshape_2/Shape:output:0&reshape_2/strided_slice/stack:output:0(reshape_2/strided_slice/stack_1:output:0(reshape_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
reshape_2/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :[
reshape_2/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :·
reshape_2/Reshape/shapePack reshape_2/strided_slice:output:0"reshape_2/Reshape/shape/1:output:0"reshape_2/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:}
reshape_2/ReshapeReshapeinputs reshape_2/Reshape/shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)low_rank_layer_1/Tensordot/ReadVariableOpReadVariableOp2low_rank_layer_1_tensordot_readvariableop_resource*
_output_shapes	
:*
dtype0
+low_rank_layer_1/Tensordot/ReadVariableOp_1ReadVariableOp4low_rank_layer_1_tensordot_readvariableop_1_resource*
_output_shapes	
:*
dtype0y
(low_rank_layer_1/Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"     ½
"low_rank_layer_1/Tensordot/ReshapeReshape1low_rank_layer_1/Tensordot/ReadVariableOp:value:01low_rank_layer_1/Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	{
*low_rank_layer_1/Tensordot/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"     Ã
$low_rank_layer_1/Tensordot/Reshape_1Reshape3low_rank_layer_1/Tensordot/ReadVariableOp_1:value:03low_rank_layer_1/Tensordot/Reshape_1/shape:output:0*
T0*
_output_shapes
:	²
!low_rank_layer_1/Tensordot/MatMulMatMul+low_rank_layer_1/Tensordot/Reshape:output:0-low_rank_layer_1/Tensordot/Reshape_1:output:0*
T0* 
_output_shapes
:
¨
low_rank_layer_1/matmulBatchMatMulV2+low_rank_layer_1/Tensordot/MatMul:product:0reshape_2/Reshape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
reshape_3/ShapeShape low_rank_layer_1/matmul:output:0*
T0*
_output_shapes
:g
reshape_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
reshape_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
reshape_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
reshape_3/strided_sliceStridedSlicereshape_3/Shape:output:0&reshape_3/strided_slice/stack:output:0(reshape_3/strided_slice/stack_1:output:0(reshape_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
reshape_3/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :[
reshape_3/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :[
reshape_3/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :Û
reshape_3/Reshape/shapePack reshape_3/strided_slice:output:0"reshape_3/Reshape/shape/1:output:0"reshape_3/Reshape/shape/2:output:0"reshape_3/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:
reshape_3/ReshapeReshape low_rank_layer_1/matmul:output:0 reshape_3/Reshape/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0À
conv2d_6/Conv2DConv2Dreshape_3/Reshape:output:0&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_6/BiasAddBiasAddconv2d_6/Conv2D:output:0'conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
conv2d_6/ReluReluconv2d_6/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
max_pooling2d_4/MaxPoolMaxPoolconv2d_6/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides

conv2d_7/Conv2D/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Æ
conv2d_7/Conv2DConv2D max_pooling2d_4/MaxPool:output:0&conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

conv2d_7/BiasAdd/ReadVariableOpReadVariableOp(conv2d_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_7/BiasAddBiasAddconv2d_7/Conv2D:output:0'conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
conv2d_7/ReluReluconv2d_7/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
max_pooling2d_5/MaxPoolMaxPoolconv2d_7/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides

conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Æ
conv2d_8/Conv2DConv2D max_pooling2d_5/MaxPool:output:0&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

conv2d_8/BiasAdd/ReadVariableOpReadVariableOp(conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_8/BiasAddBiasAddconv2d_8/Conv2D:output:0'conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
conv2d_8/ReluReluconv2d_8/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
flatten_2/ReshapeReshapeconv2d_8/Relu:activations:0flatten_2/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @
dropout_2/dropout/MulMulflatten_2/Reshape:output:0 dropout_2/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
dropout_2/dropout/ShapeShapeflatten_2/Reshape:output:0*
T0*
_output_shapes
:¡
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0e
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Å
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0
dense_2/MatMulMatMuldropout_2/dropout/Mul_1:z:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
f
dense_2/SoftmaxSoftmaxdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
h
IdentityIdentitydense_2/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ª
NoOpNoOp ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp ^conv2d_7/BiasAdd/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp ^conv2d_8/BiasAdd/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*^low_rank_layer_1/Tensordot/ReadVariableOp,^low_rank_layer_1/Tensordot/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp2B
conv2d_7/BiasAdd/ReadVariableOpconv2d_7/BiasAdd/ReadVariableOp2@
conv2d_7/Conv2D/ReadVariableOpconv2d_7/Conv2D/ReadVariableOp2B
conv2d_8/BiasAdd/ReadVariableOpconv2d_8/BiasAdd/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2V
)low_rank_layer_1/Tensordot/ReadVariableOp)low_rank_layer_1/Tensordot/ReadVariableOp2Z
+low_rank_layer_1/Tensordot/ReadVariableOp_1+low_rank_layer_1/Tensordot/ReadVariableOp_1:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÿ-

I__inference_sequential_2_layer_call_and_return_conditional_losses_3623051

inputs'
low_rank_layer_1_3622944:	'
low_rank_layer_1_3622946:	*
conv2d_6_3622977:
conv2d_6_3622979:*
conv2d_7_3622995:
conv2d_7_3622997:*
conv2d_8_3623013:
conv2d_8_3623015:"
dense_2_3623045:	

dense_2_3623047:

identity¢ conv2d_6/StatefulPartitionedCall¢ conv2d_7/StatefulPartitionedCall¢ conv2d_8/StatefulPartitionedCall¢dense_2/StatefulPartitionedCall¢(low_rank_layer_1/StatefulPartitionedCallÃ
reshape_2/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_reshape_2_layer_call_and_return_conditional_losses_3622927·
(low_rank_layer_1/StatefulPartitionedCallStatefulPartitionedCall"reshape_2/PartitionedCall:output:0low_rank_layer_1_3622944low_rank_layer_1_3622946*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_low_rank_layer_1_layer_call_and_return_conditional_losses_3622943ñ
reshape_3/PartitionedCallPartitionedCall1low_rank_layer_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_reshape_3_layer_call_and_return_conditional_losses_3622963
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall"reshape_3/PartitionedCall:output:0conv2d_6_3622977conv2d_6_3622979*
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
GPU2*0J 8 *N
fIRG
E__inference_conv2d_6_layer_call_and_return_conditional_losses_3622976õ
max_pooling2d_4/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_3622892 
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0conv2d_7_3622995conv2d_7_3622997*
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
GPU2*0J 8 *N
fIRG
E__inference_conv2d_7_layer_call_and_return_conditional_losses_3622994õ
max_pooling2d_5/PartitionedCallPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_3622904 
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0conv2d_8_3623013conv2d_8_3623015*
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
GPU2*0J 8 *N
fIRG
E__inference_conv2d_8_layer_call_and_return_conditional_losses_3623012â
flatten_2/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
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
GPU2*0J 8 *O
fJRH
F__inference_flatten_2_layer_call_and_return_conditional_losses_3623024Û
dropout_2/PartitionedCallPartitionedCall"flatten_2/PartitionedCall:output:0*
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
GPU2*0J 8 *O
fJRH
F__inference_dropout_2_layer_call_and_return_conditional_losses_3623031
dense_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0dense_2_3623045dense_2_3623047*
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
GPU2*0J 8 *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_3623044w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ü
NoOpNoOp!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall)^low_rank_layer_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2T
(low_rank_layer_1/StatefulPartitionedCall(low_rank_layer_1/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
È
b
F__inference_flatten_2_layer_call_and_return_conditional_losses_3623024

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
ü	
e
F__inference_dropout_2_layer_call_and_return_conditional_losses_3623745

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


M__inference_low_rank_layer_1_layer_call_and_return_conditional_losses_3623608

inputs0
!tensordot_readvariableop_resource:	2
#tensordot_readvariableop_1_resource:	
identity¢Tensordot/ReadVariableOp¢Tensordot/ReadVariableOp_1w
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes	
:*
dtype0{
Tensordot/ReadVariableOp_1ReadVariableOp#tensordot_readvariableop_1_resource*
_output_shapes	
:*
dtype0h
Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"     
Tensordot/ReshapeReshape Tensordot/ReadVariableOp:value:0 Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	j
Tensordot/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"     
Tensordot/Reshape_1Reshape"Tensordot/ReadVariableOp_1:value:0"Tensordot/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot/MatMulMatMulTensordot/Reshape:output:0Tensordot/Reshape_1:output:0*
T0* 
_output_shapes
:
r
matmulBatchMatMulV2Tensordot/MatMul:product:0inputs*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
IdentityIdentitymatmul:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
NoOpNoOp^Tensordot/ReadVariableOp^Tensordot/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 24
Tensordot/ReadVariableOpTensordot/ReadVariableOp28
Tensordot/ReadVariableOp_1Tensordot/ReadVariableOp_1:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
É


.__inference_sequential_2_layer_call_fn_3623074
input_3
unknown:	
	unknown_0:	#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:	

	unknown_8:

identity¢StatefulPartitionedCallÊ
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
GPU2*0J 8 *R
fMRK
I__inference_sequential_2_layer_call_and_return_conditional_losses_3623051o
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
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_3
Ý
Ä
#__inference__traced_restore_3624032
file_prefix)
assignvariableop_weightu_0:	+
assignvariableop_1_weightv_0:	<
"assignvariableop_2_conv2d_6_kernel:.
 assignvariableop_3_conv2d_6_bias:<
"assignvariableop_4_conv2d_7_kernel:.
 assignvariableop_5_conv2d_7_bias:<
"assignvariableop_6_conv2d_8_kernel:.
 assignvariableop_7_conv2d_8_bias:4
!assignvariableop_8_dense_2_kernel:	
-
assignvariableop_9_dense_2_bias:
'
assignvariableop_10_adam_iter:	 )
assignvariableop_11_adam_beta_1: )
assignvariableop_12_adam_beta_2: (
assignvariableop_13_adam_decay: 0
&assignvariableop_14_adam_learning_rate: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: #
assignvariableop_17_total: #
assignvariableop_18_count: 3
$assignvariableop_19_adam_weightu_0_m:	3
$assignvariableop_20_adam_weightv_0_m:	D
*assignvariableop_21_adam_conv2d_6_kernel_m:6
(assignvariableop_22_adam_conv2d_6_bias_m:D
*assignvariableop_23_adam_conv2d_7_kernel_m:6
(assignvariableop_24_adam_conv2d_7_bias_m:D
*assignvariableop_25_adam_conv2d_8_kernel_m:6
(assignvariableop_26_adam_conv2d_8_bias_m:<
)assignvariableop_27_adam_dense_2_kernel_m:	
5
'assignvariableop_28_adam_dense_2_bias_m:
3
$assignvariableop_29_adam_weightu_0_v:	3
$assignvariableop_30_adam_weightv_0_v:	D
*assignvariableop_31_adam_conv2d_6_kernel_v:6
(assignvariableop_32_adam_conv2d_6_bias_v:D
*assignvariableop_33_adam_conv2d_7_kernel_v:6
(assignvariableop_34_adam_conv2d_7_bias_v:D
*assignvariableop_35_adam_conv2d_8_kernel_v:6
(assignvariableop_36_adam_conv2d_8_bias_v:<
)assignvariableop_37_adam_dense_2_kernel_v:	
5
'assignvariableop_38_adam_dense_2_bias_v:

identity_40¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*ª
value B(B9layer_with_weights-0/weightu_0/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-0/weightv_0/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/weightu_0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/weightv_0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/weightu_0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/weightv_0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHÀ
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
:
AssignVariableOpAssignVariableOpassignvariableop_weightu_0Identity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOpassignvariableop_1_weightv_0Identity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_6_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_6_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_7_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_7_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_8_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv2d_8_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_2_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_2_biasIdentity_9:output:0"/device:CPU:0*
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
:
AssignVariableOp_19AssignVariableOp$assignvariableop_19_adam_weightu_0_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp$assignvariableop_20_adam_weightv_0_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_conv2d_6_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_conv2d_6_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_conv2d_7_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_conv2d_7_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_conv2d_8_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_conv2d_8_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOp)assignvariableop_27_adam_dense_2_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp'assignvariableop_28_adam_dense_2_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp$assignvariableop_29_adam_weightu_0_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp$assignvariableop_30_adam_weightv_0_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_conv2d_6_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_conv2d_6_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_conv2d_7_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_conv2d_7_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_conv2d_8_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_conv2d_8_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_dense_2_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_38AssignVariableOp'assignvariableop_38_adam_dense_2_bias_vIdentity_38:output:0"/device:CPU:0*
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
_user_specified_namefile_prefix"µ	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*²
serving_default
C
input_38
serving_default_input_3:0ÿÿÿÿÿÿÿÿÿ;
dense_20
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿ
tensorflow/serving/predict:þ
ø
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
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
¥
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
á
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses
!	vectors_u
"	vectors_v
#	weightu_0
$	weightv_0"
_tf_keras_layer
¥
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses"
_tf_keras_layer
Ý
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses

1kernel
2bias
 3_jit_compiled_convolution_op"
_tf_keras_layer
¥
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses"
_tf_keras_layer
Ý
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses

@kernel
Abias
 B_jit_compiled_convolution_op"
_tf_keras_layer
¥
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses"
_tf_keras_layer
Ý
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses

Okernel
Pbias
 Q_jit_compiled_convolution_op"
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
#0
$1
12
23
@4
A5
O6
P7
e8
f9"
trackable_list_wrapper
f
#0
$1
12
23
@4
A5
O6
P7
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
í
ltrace_0
mtrace_1
ntrace_2
otrace_32
.__inference_sequential_2_layer_call_fn_3623074
.__inference_sequential_2_layer_call_fn_3623403
.__inference_sequential_2_layer_call_fn_3623428
.__inference_sequential_2_layer_call_fn_3623275¿
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
Ù
ptrace_0
qtrace_1
rtrace_2
strace_32î
I__inference_sequential_2_layer_call_and_return_conditional_losses_3623494
I__inference_sequential_2_layer_call_and_return_conditional_losses_3623567
I__inference_sequential_2_layer_call_and_return_conditional_losses_3623310
I__inference_sequential_2_layer_call_and_return_conditional_losses_3623345¿
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
ÍBÊ
"__inference__wrapped_model_3622883input_3"
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
xlearning_rate#mÔ$mÕ1mÖ2m×@mØAmÙOmÚPmÛemÜfmÝ#vÞ$vß1và2vá@vâAvãOväPvåevæfvç"
	optimizer
,
yserving_default"
signature_map
 "
trackable_list_wrapper
 "
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
ï
trace_02Ò
+__inference_reshape_2_layer_call_fn_3623572¢
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

trace_02í
F__inference_reshape_2_layer_call_and_return_conditional_losses_3623585¢
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
.
#0
$1"
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses"
_generic_user_object
ø
trace_02Ù
2__inference_low_rank_layer_1_layer_call_fn_3623594¢
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

trace_02ô
M__inference_low_rank_layer_1_layer_call_and_return_conditional_losses_3623608¢
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
'
#0"
trackable_list_wrapper
'
$0"
trackable_list_wrapper
:2	weightu_0
:2	weightv_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses"
_generic_user_object
ñ
trace_02Ò
+__inference_reshape_3_layer_call_fn_3623613¢
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

trace_02í
F__inference_reshape_3_layer_call_and_return_conditional_losses_3623627¢
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
.
10
21"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
ð
trace_02Ñ
*__inference_conv2d_6_layer_call_fn_3623636¢
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

trace_02ì
E__inference_conv2d_6_layer_call_and_return_conditional_losses_3623647¢
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
):'2conv2d_6/kernel
:2conv2d_6/bias
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
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
÷
trace_02Ø
1__inference_max_pooling2d_4_layer_call_fn_3623652¢
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

trace_02ó
L__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_3623657¢
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
.
@0
A1"
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
  layer_regularization_losses
¡layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
ð
¢trace_02Ñ
*__inference_conv2d_7_layer_call_fn_3623666¢
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

£trace_02ì
E__inference_conv2d_7_layer_call_and_return_conditional_losses_3623677¢
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
):'2conv2d_7/kernel
:2conv2d_7/bias
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
¤non_trainable_variables
¥layers
¦metrics
 §layer_regularization_losses
¨layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses"
_generic_user_object
÷
©trace_02Ø
1__inference_max_pooling2d_5_layer_call_fn_3623682¢
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

ªtrace_02ó
L__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_3623687¢
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
.
O0
P1"
trackable_list_wrapper
.
O0
P1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
«non_trainable_variables
¬layers
­metrics
 ®layer_regularization_losses
¯layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
ð
°trace_02Ñ
*__inference_conv2d_8_layer_call_fn_3623696¢
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

±trace_02ì
E__inference_conv2d_8_layer_call_and_return_conditional_losses_3623707¢
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
):'2conv2d_8/kernel
:2conv2d_8/bias
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
ñ
·trace_02Ò
+__inference_flatten_2_layer_call_fn_3623712¢
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

¸trace_02í
F__inference_flatten_2_layer_call_and_return_conditional_losses_3623718¢
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
Ë
¾trace_0
¿trace_12
+__inference_dropout_2_layer_call_fn_3623723
+__inference_dropout_2_layer_call_fn_3623728³
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

Àtrace_0
Átrace_12Æ
F__inference_dropout_2_layer_call_and_return_conditional_losses_3623733
F__inference_dropout_2_layer_call_and_return_conditional_losses_3623745³
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
ï
Çtrace_02Ð
)__inference_dense_2_layer_call_fn_3623754¢
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

Ètrace_02ë
D__inference_dense_2_layer_call_and_return_conditional_losses_3623765¢
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
!:	
2dense_2/kernel
:
2dense_2/bias
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
Bý
.__inference_sequential_2_layer_call_fn_3623074input_3"¿
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
ÿBü
.__inference_sequential_2_layer_call_fn_3623403inputs"¿
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
ÿBü
.__inference_sequential_2_layer_call_fn_3623428inputs"¿
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
Bý
.__inference_sequential_2_layer_call_fn_3623275input_3"¿
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
B
I__inference_sequential_2_layer_call_and_return_conditional_losses_3623494inputs"¿
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
B
I__inference_sequential_2_layer_call_and_return_conditional_losses_3623567inputs"¿
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
B
I__inference_sequential_2_layer_call_and_return_conditional_losses_3623310input_3"¿
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
B
I__inference_sequential_2_layer_call_and_return_conditional_losses_3623345input_3"¿
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
ÌBÉ
%__inference_signature_wrapper_3623378input_3"
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
ßBÜ
+__inference_reshape_2_layer_call_fn_3623572inputs"¢
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
F__inference_reshape_2_layer_call_and_return_conditional_losses_3623585inputs"¢
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
æBã
2__inference_low_rank_layer_1_layer_call_fn_3623594inputs"¢
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
Bþ
M__inference_low_rank_layer_1_layer_call_and_return_conditional_losses_3623608inputs"¢
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
ßBÜ
+__inference_reshape_3_layer_call_fn_3623613inputs"¢
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
F__inference_reshape_3_layer_call_and_return_conditional_losses_3623627inputs"¢
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
ÞBÛ
*__inference_conv2d_6_layer_call_fn_3623636inputs"¢
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
ùBö
E__inference_conv2d_6_layer_call_and_return_conditional_losses_3623647inputs"¢
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
åBâ
1__inference_max_pooling2d_4_layer_call_fn_3623652inputs"¢
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
Bý
L__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_3623657inputs"¢
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
ÞBÛ
*__inference_conv2d_7_layer_call_fn_3623666inputs"¢
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
ùBö
E__inference_conv2d_7_layer_call_and_return_conditional_losses_3623677inputs"¢
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
åBâ
1__inference_max_pooling2d_5_layer_call_fn_3623682inputs"¢
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
Bý
L__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_3623687inputs"¢
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
ÞBÛ
*__inference_conv2d_8_layer_call_fn_3623696inputs"¢
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
ùBö
E__inference_conv2d_8_layer_call_and_return_conditional_losses_3623707inputs"¢
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
ßBÜ
+__inference_flatten_2_layer_call_fn_3623712inputs"¢
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
F__inference_flatten_2_layer_call_and_return_conditional_losses_3623718inputs"¢
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
ðBí
+__inference_dropout_2_layer_call_fn_3623723inputs"³
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
ðBí
+__inference_dropout_2_layer_call_fn_3623728inputs"³
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
B
F__inference_dropout_2_layer_call_and_return_conditional_losses_3623733inputs"³
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
B
F__inference_dropout_2_layer_call_and_return_conditional_losses_3623745inputs"³
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
ÝBÚ
)__inference_dense_2_layer_call_fn_3623754inputs"¢
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
øBõ
D__inference_dense_2_layer_call_and_return_conditional_losses_3623765inputs"¢
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
:2Adam/weightu_0/m
:2Adam/weightv_0/m
.:,2Adam/conv2d_6/kernel/m
 :2Adam/conv2d_6/bias/m
.:,2Adam/conv2d_7/kernel/m
 :2Adam/conv2d_7/bias/m
.:,2Adam/conv2d_8/kernel/m
 :2Adam/conv2d_8/bias/m
&:$	
2Adam/dense_2/kernel/m
:
2Adam/dense_2/bias/m
:2Adam/weightu_0/v
:2Adam/weightv_0/v
.:,2Adam/conv2d_6/kernel/v
 :2Adam/conv2d_6/bias/v
.:,2Adam/conv2d_7/kernel/v
 :2Adam/conv2d_7/bias/v
.:,2Adam/conv2d_8/kernel/v
 :2Adam/conv2d_8/bias/v
&:$	
2Adam/dense_2/kernel/v
:
2Adam/dense_2/bias/v
"__inference__wrapped_model_3622883y
#$12@AOPef8¢5
.¢+
)&
input_3ÿÿÿÿÿÿÿÿÿ
ª "1ª.
,
dense_2!
dense_2ÿÿÿÿÿÿÿÿÿ
µ
E__inference_conv2d_6_layer_call_and_return_conditional_losses_3623647l127¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ
 
*__inference_conv2d_6_layer_call_fn_3623636_127¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª " ÿÿÿÿÿÿÿÿÿµ
E__inference_conv2d_7_layer_call_and_return_conditional_losses_3623677l@A7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ
 
*__inference_conv2d_7_layer_call_fn_3623666_@A7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª " ÿÿÿÿÿÿÿÿÿµ
E__inference_conv2d_8_layer_call_and_return_conditional_losses_3623707lOP7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ
 
*__inference_conv2d_8_layer_call_fn_3623696_OP7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª " ÿÿÿÿÿÿÿÿÿ¥
D__inference_dense_2_layer_call_and_return_conditional_losses_3623765]ef0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 }
)__inference_dense_2_layer_call_fn_3623754Pef0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ
¨
F__inference_dropout_2_layer_call_and_return_conditional_losses_3623733^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ¨
F__inference_dropout_2_layer_call_and_return_conditional_losses_3623745^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
+__inference_dropout_2_layer_call_fn_3623723Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ
+__inference_dropout_2_layer_call_fn_3623728Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ«
F__inference_flatten_2_layer_call_and_return_conditional_losses_3623718a7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
+__inference_flatten_2_layer_call_fn_3623712T7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ·
M__inference_low_rank_layer_1_layer_call_and_return_conditional_losses_3623608f#$4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿ
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ
 
2__inference_low_rank_layer_1_layer_call_fn_3623594Y#$4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿï
L__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_3623657R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ç
1__inference_max_pooling2d_4_layer_call_fn_3623652R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿï
L__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_3623687R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ç
1__inference_max_pooling2d_5_layer_call_fn_3623682R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¯
F__inference_reshape_2_layer_call_and_return_conditional_losses_3623585e7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ
 
+__inference_reshape_2_layer_call_fn_3623572X7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¯
F__inference_reshape_3_layer_call_and_return_conditional_losses_3623627e4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿ
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ
 
+__inference_reshape_3_layer_call_fn_3623613X4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿ
ª " ÿÿÿÿÿÿÿÿÿÂ
I__inference_sequential_2_layer_call_and_return_conditional_losses_3623310u
#$12@AOPef@¢=
6¢3
)&
input_3ÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 Â
I__inference_sequential_2_layer_call_and_return_conditional_losses_3623345u
#$12@AOPef@¢=
6¢3
)&
input_3ÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 Á
I__inference_sequential_2_layer_call_and_return_conditional_losses_3623494t
#$12@AOPef?¢<
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
 Á
I__inference_sequential_2_layer_call_and_return_conditional_losses_3623567t
#$12@AOPef?¢<
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
 
.__inference_sequential_2_layer_call_fn_3623074h
#$12@AOPef@¢=
6¢3
)&
input_3ÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ

.__inference_sequential_2_layer_call_fn_3623275h
#$12@AOPef@¢=
6¢3
)&
input_3ÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ

.__inference_sequential_2_layer_call_fn_3623403g
#$12@AOPef?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ

.__inference_sequential_2_layer_call_fn_3623428g
#$12@AOPef?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
®
%__inference_signature_wrapper_3623378
#$12@AOPefC¢@
¢ 
9ª6
4
input_3)&
input_3ÿÿÿÿÿÿÿÿÿ"1ª.
,
dense_2!
dense_2ÿÿÿÿÿÿÿÿÿ
