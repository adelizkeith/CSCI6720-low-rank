ù,
¬ÿ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
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
 "serve*2.10.12v2.10.0-76-gfdfc646704c8)
~
Adam/dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_3/bias/v
w
'Adam/dense_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/v*
_output_shapes
:
*
dtype0

Adam/dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
*&
shared_nameAdam/dense_3/kernel/v

)Adam/dense_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/v*
_output_shapes
:	
*
dtype0

Adam/conv2d_11/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_11/bias/v
{
)Adam/conv2d_11/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_11/bias/v*
_output_shapes
:*
dtype0

Adam/conv2d_11/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_11/kernel/v

+Adam/conv2d_11/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_11/kernel/v*&
_output_shapes
:*
dtype0

Adam/conv2d_10/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_10/bias/v
{
)Adam/conv2d_10/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_10/bias/v*
_output_shapes
:*
dtype0

Adam/conv2d_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_10/kernel/v

+Adam/conv2d_10/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_10/kernel/v*&
_output_shapes
:*
dtype0
{
Adam/weightv_31/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightv_31/v
t
%Adam/weightv_31/v/Read/ReadVariableOpReadVariableOpAdam/weightv_31/v*
_output_shapes	
:*
dtype0
{
Adam/weightu_31/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightu_31/v
t
%Adam/weightu_31/v/Read/ReadVariableOpReadVariableOpAdam/weightu_31/v*
_output_shapes	
:*
dtype0
{
Adam/weightv_30/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightv_30/v
t
%Adam/weightv_30/v/Read/ReadVariableOpReadVariableOpAdam/weightv_30/v*
_output_shapes	
:*
dtype0
{
Adam/weightu_30/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightu_30/v
t
%Adam/weightu_30/v/Read/ReadVariableOpReadVariableOpAdam/weightu_30/v*
_output_shapes	
:*
dtype0
{
Adam/weightv_29/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightv_29/v
t
%Adam/weightv_29/v/Read/ReadVariableOpReadVariableOpAdam/weightv_29/v*
_output_shapes	
:*
dtype0
{
Adam/weightu_29/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightu_29/v
t
%Adam/weightu_29/v/Read/ReadVariableOpReadVariableOpAdam/weightu_29/v*
_output_shapes	
:*
dtype0
{
Adam/weightv_28/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightv_28/v
t
%Adam/weightv_28/v/Read/ReadVariableOpReadVariableOpAdam/weightv_28/v*
_output_shapes	
:*
dtype0
{
Adam/weightu_28/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightu_28/v
t
%Adam/weightu_28/v/Read/ReadVariableOpReadVariableOpAdam/weightu_28/v*
_output_shapes	
:*
dtype0
{
Adam/weightv_27/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightv_27/v
t
%Adam/weightv_27/v/Read/ReadVariableOpReadVariableOpAdam/weightv_27/v*
_output_shapes	
:*
dtype0
{
Adam/weightu_27/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightu_27/v
t
%Adam/weightu_27/v/Read/ReadVariableOpReadVariableOpAdam/weightu_27/v*
_output_shapes	
:*
dtype0
{
Adam/weightv_26/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightv_26/v
t
%Adam/weightv_26/v/Read/ReadVariableOpReadVariableOpAdam/weightv_26/v*
_output_shapes	
:*
dtype0
{
Adam/weightu_26/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightu_26/v
t
%Adam/weightu_26/v/Read/ReadVariableOpReadVariableOpAdam/weightu_26/v*
_output_shapes	
:*
dtype0
{
Adam/weightv_25/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightv_25/v
t
%Adam/weightv_25/v/Read/ReadVariableOpReadVariableOpAdam/weightv_25/v*
_output_shapes	
:*
dtype0
{
Adam/weightu_25/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightu_25/v
t
%Adam/weightu_25/v/Read/ReadVariableOpReadVariableOpAdam/weightu_25/v*
_output_shapes	
:*
dtype0
{
Adam/weightv_24/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightv_24/v
t
%Adam/weightv_24/v/Read/ReadVariableOpReadVariableOpAdam/weightv_24/v*
_output_shapes	
:*
dtype0
{
Adam/weightu_24/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightu_24/v
t
%Adam/weightu_24/v/Read/ReadVariableOpReadVariableOpAdam/weightu_24/v*
_output_shapes	
:*
dtype0
{
Adam/weightv_23/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightv_23/v
t
%Adam/weightv_23/v/Read/ReadVariableOpReadVariableOpAdam/weightv_23/v*
_output_shapes	
:*
dtype0
{
Adam/weightu_23/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightu_23/v
t
%Adam/weightu_23/v/Read/ReadVariableOpReadVariableOpAdam/weightu_23/v*
_output_shapes	
:*
dtype0
{
Adam/weightv_22/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightv_22/v
t
%Adam/weightv_22/v/Read/ReadVariableOpReadVariableOpAdam/weightv_22/v*
_output_shapes	
:*
dtype0
{
Adam/weightu_22/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightu_22/v
t
%Adam/weightu_22/v/Read/ReadVariableOpReadVariableOpAdam/weightu_22/v*
_output_shapes	
:*
dtype0
{
Adam/weightv_21/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightv_21/v
t
%Adam/weightv_21/v/Read/ReadVariableOpReadVariableOpAdam/weightv_21/v*
_output_shapes	
:*
dtype0
{
Adam/weightu_21/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightu_21/v
t
%Adam/weightu_21/v/Read/ReadVariableOpReadVariableOpAdam/weightu_21/v*
_output_shapes	
:*
dtype0
{
Adam/weightv_20/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightv_20/v
t
%Adam/weightv_20/v/Read/ReadVariableOpReadVariableOpAdam/weightv_20/v*
_output_shapes	
:*
dtype0
{
Adam/weightu_20/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightu_20/v
t
%Adam/weightu_20/v/Read/ReadVariableOpReadVariableOpAdam/weightu_20/v*
_output_shapes	
:*
dtype0
{
Adam/weightv_19/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightv_19/v
t
%Adam/weightv_19/v/Read/ReadVariableOpReadVariableOpAdam/weightv_19/v*
_output_shapes	
:*
dtype0
{
Adam/weightu_19/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightu_19/v
t
%Adam/weightu_19/v/Read/ReadVariableOpReadVariableOpAdam/weightu_19/v*
_output_shapes	
:*
dtype0
{
Adam/weightv_18/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightv_18/v
t
%Adam/weightv_18/v/Read/ReadVariableOpReadVariableOpAdam/weightv_18/v*
_output_shapes	
:*
dtype0
{
Adam/weightu_18/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightu_18/v
t
%Adam/weightu_18/v/Read/ReadVariableOpReadVariableOpAdam/weightu_18/v*
_output_shapes	
:*
dtype0
{
Adam/weightv_17/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightv_17/v
t
%Adam/weightv_17/v/Read/ReadVariableOpReadVariableOpAdam/weightv_17/v*
_output_shapes	
:*
dtype0
{
Adam/weightu_17/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightu_17/v
t
%Adam/weightu_17/v/Read/ReadVariableOpReadVariableOpAdam/weightu_17/v*
_output_shapes	
:*
dtype0
{
Adam/weightv_16/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightv_16/v
t
%Adam/weightv_16/v/Read/ReadVariableOpReadVariableOpAdam/weightv_16/v*
_output_shapes	
:*
dtype0
{
Adam/weightu_16/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightu_16/v
t
%Adam/weightu_16/v/Read/ReadVariableOpReadVariableOpAdam/weightu_16/v*
_output_shapes	
:*
dtype0
{
Adam/weightv_15/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightv_15/v
t
%Adam/weightv_15/v/Read/ReadVariableOpReadVariableOpAdam/weightv_15/v*
_output_shapes	
:*
dtype0
{
Adam/weightu_15/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightu_15/v
t
%Adam/weightu_15/v/Read/ReadVariableOpReadVariableOpAdam/weightu_15/v*
_output_shapes	
:*
dtype0
{
Adam/weightv_14/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightv_14/v
t
%Adam/weightv_14/v/Read/ReadVariableOpReadVariableOpAdam/weightv_14/v*
_output_shapes	
:*
dtype0
{
Adam/weightu_14/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightu_14/v
t
%Adam/weightu_14/v/Read/ReadVariableOpReadVariableOpAdam/weightu_14/v*
_output_shapes	
:*
dtype0
{
Adam/weightv_13/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightv_13/v
t
%Adam/weightv_13/v/Read/ReadVariableOpReadVariableOpAdam/weightv_13/v*
_output_shapes	
:*
dtype0
{
Adam/weightu_13/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightu_13/v
t
%Adam/weightu_13/v/Read/ReadVariableOpReadVariableOpAdam/weightu_13/v*
_output_shapes	
:*
dtype0
{
Adam/weightv_12/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightv_12/v
t
%Adam/weightv_12/v/Read/ReadVariableOpReadVariableOpAdam/weightv_12/v*
_output_shapes	
:*
dtype0
{
Adam/weightu_12/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightu_12/v
t
%Adam/weightu_12/v/Read/ReadVariableOpReadVariableOpAdam/weightu_12/v*
_output_shapes	
:*
dtype0
{
Adam/weightv_11/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightv_11/v
t
%Adam/weightv_11/v/Read/ReadVariableOpReadVariableOpAdam/weightv_11/v*
_output_shapes	
:*
dtype0
{
Adam/weightu_11/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightu_11/v
t
%Adam/weightu_11/v/Read/ReadVariableOpReadVariableOpAdam/weightu_11/v*
_output_shapes	
:*
dtype0
{
Adam/weightv_10/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightv_10/v
t
%Adam/weightv_10/v/Read/ReadVariableOpReadVariableOpAdam/weightv_10/v*
_output_shapes	
:*
dtype0
{
Adam/weightu_10/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightu_10/v
t
%Adam/weightu_10/v/Read/ReadVariableOpReadVariableOpAdam/weightu_10/v*
_output_shapes	
:*
dtype0
y
Adam/weightv_9/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/weightv_9/v
r
$Adam/weightv_9/v/Read/ReadVariableOpReadVariableOpAdam/weightv_9/v*
_output_shapes	
:*
dtype0
y
Adam/weightu_9/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/weightu_9/v
r
$Adam/weightu_9/v/Read/ReadVariableOpReadVariableOpAdam/weightu_9/v*
_output_shapes	
:*
dtype0
y
Adam/weightv_8/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/weightv_8/v
r
$Adam/weightv_8/v/Read/ReadVariableOpReadVariableOpAdam/weightv_8/v*
_output_shapes	
:*
dtype0
y
Adam/weightu_8/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/weightu_8/v
r
$Adam/weightu_8/v/Read/ReadVariableOpReadVariableOpAdam/weightu_8/v*
_output_shapes	
:*
dtype0
y
Adam/weightv_7/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/weightv_7/v
r
$Adam/weightv_7/v/Read/ReadVariableOpReadVariableOpAdam/weightv_7/v*
_output_shapes	
:*
dtype0
y
Adam/weightu_7/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/weightu_7/v
r
$Adam/weightu_7/v/Read/ReadVariableOpReadVariableOpAdam/weightu_7/v*
_output_shapes	
:*
dtype0
y
Adam/weightv_6/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/weightv_6/v
r
$Adam/weightv_6/v/Read/ReadVariableOpReadVariableOpAdam/weightv_6/v*
_output_shapes	
:*
dtype0
y
Adam/weightu_6/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/weightu_6/v
r
$Adam/weightu_6/v/Read/ReadVariableOpReadVariableOpAdam/weightu_6/v*
_output_shapes	
:*
dtype0
y
Adam/weightv_5/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/weightv_5/v
r
$Adam/weightv_5/v/Read/ReadVariableOpReadVariableOpAdam/weightv_5/v*
_output_shapes	
:*
dtype0
y
Adam/weightu_5/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/weightu_5/v
r
$Adam/weightu_5/v/Read/ReadVariableOpReadVariableOpAdam/weightu_5/v*
_output_shapes	
:*
dtype0
y
Adam/weightv_4/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/weightv_4/v
r
$Adam/weightv_4/v/Read/ReadVariableOpReadVariableOpAdam/weightv_4/v*
_output_shapes	
:*
dtype0
y
Adam/weightu_4/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/weightu_4/v
r
$Adam/weightu_4/v/Read/ReadVariableOpReadVariableOpAdam/weightu_4/v*
_output_shapes	
:*
dtype0
y
Adam/weightv_3/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/weightv_3/v
r
$Adam/weightv_3/v/Read/ReadVariableOpReadVariableOpAdam/weightv_3/v*
_output_shapes	
:*
dtype0
y
Adam/weightu_3/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/weightu_3/v
r
$Adam/weightu_3/v/Read/ReadVariableOpReadVariableOpAdam/weightu_3/v*
_output_shapes	
:*
dtype0
y
Adam/weightv_2/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/weightv_2/v
r
$Adam/weightv_2/v/Read/ReadVariableOpReadVariableOpAdam/weightv_2/v*
_output_shapes	
:*
dtype0
y
Adam/weightu_2/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/weightu_2/v
r
$Adam/weightu_2/v/Read/ReadVariableOpReadVariableOpAdam/weightu_2/v*
_output_shapes	
:*
dtype0
y
Adam/weightv_1/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/weightv_1/v
r
$Adam/weightv_1/v/Read/ReadVariableOpReadVariableOpAdam/weightv_1/v*
_output_shapes	
:*
dtype0
y
Adam/weightu_1/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/weightu_1/v
r
$Adam/weightu_1/v/Read/ReadVariableOpReadVariableOpAdam/weightu_1/v*
_output_shapes	
:*
dtype0
y
Adam/weightv_0/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/weightv_0/v
r
$Adam/weightv_0/v/Read/ReadVariableOpReadVariableOpAdam/weightv_0/v*
_output_shapes	
:*
dtype0
y
Adam/weightu_0/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/weightu_0/v
r
$Adam/weightu_0/v/Read/ReadVariableOpReadVariableOpAdam/weightu_0/v*
_output_shapes	
:*
dtype0

Adam/conv2d_9/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_9/bias/v
y
(Adam/conv2d_9/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_9/bias/v*
_output_shapes
:*
dtype0

Adam/conv2d_9/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_9/kernel/v

*Adam/conv2d_9/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_9/kernel/v*&
_output_shapes
:*
dtype0
~
Adam/dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_3/bias/m
w
'Adam/dense_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/m*
_output_shapes
:
*
dtype0

Adam/dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
*&
shared_nameAdam/dense_3/kernel/m

)Adam/dense_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/m*
_output_shapes
:	
*
dtype0

Adam/conv2d_11/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_11/bias/m
{
)Adam/conv2d_11/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_11/bias/m*
_output_shapes
:*
dtype0

Adam/conv2d_11/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_11/kernel/m

+Adam/conv2d_11/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_11/kernel/m*&
_output_shapes
:*
dtype0

Adam/conv2d_10/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_10/bias/m
{
)Adam/conv2d_10/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_10/bias/m*
_output_shapes
:*
dtype0

Adam/conv2d_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_10/kernel/m

+Adam/conv2d_10/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_10/kernel/m*&
_output_shapes
:*
dtype0
{
Adam/weightv_31/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightv_31/m
t
%Adam/weightv_31/m/Read/ReadVariableOpReadVariableOpAdam/weightv_31/m*
_output_shapes	
:*
dtype0
{
Adam/weightu_31/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightu_31/m
t
%Adam/weightu_31/m/Read/ReadVariableOpReadVariableOpAdam/weightu_31/m*
_output_shapes	
:*
dtype0
{
Adam/weightv_30/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightv_30/m
t
%Adam/weightv_30/m/Read/ReadVariableOpReadVariableOpAdam/weightv_30/m*
_output_shapes	
:*
dtype0
{
Adam/weightu_30/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightu_30/m
t
%Adam/weightu_30/m/Read/ReadVariableOpReadVariableOpAdam/weightu_30/m*
_output_shapes	
:*
dtype0
{
Adam/weightv_29/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightv_29/m
t
%Adam/weightv_29/m/Read/ReadVariableOpReadVariableOpAdam/weightv_29/m*
_output_shapes	
:*
dtype0
{
Adam/weightu_29/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightu_29/m
t
%Adam/weightu_29/m/Read/ReadVariableOpReadVariableOpAdam/weightu_29/m*
_output_shapes	
:*
dtype0
{
Adam/weightv_28/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightv_28/m
t
%Adam/weightv_28/m/Read/ReadVariableOpReadVariableOpAdam/weightv_28/m*
_output_shapes	
:*
dtype0
{
Adam/weightu_28/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightu_28/m
t
%Adam/weightu_28/m/Read/ReadVariableOpReadVariableOpAdam/weightu_28/m*
_output_shapes	
:*
dtype0
{
Adam/weightv_27/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightv_27/m
t
%Adam/weightv_27/m/Read/ReadVariableOpReadVariableOpAdam/weightv_27/m*
_output_shapes	
:*
dtype0
{
Adam/weightu_27/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightu_27/m
t
%Adam/weightu_27/m/Read/ReadVariableOpReadVariableOpAdam/weightu_27/m*
_output_shapes	
:*
dtype0
{
Adam/weightv_26/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightv_26/m
t
%Adam/weightv_26/m/Read/ReadVariableOpReadVariableOpAdam/weightv_26/m*
_output_shapes	
:*
dtype0
{
Adam/weightu_26/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightu_26/m
t
%Adam/weightu_26/m/Read/ReadVariableOpReadVariableOpAdam/weightu_26/m*
_output_shapes	
:*
dtype0
{
Adam/weightv_25/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightv_25/m
t
%Adam/weightv_25/m/Read/ReadVariableOpReadVariableOpAdam/weightv_25/m*
_output_shapes	
:*
dtype0
{
Adam/weightu_25/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightu_25/m
t
%Adam/weightu_25/m/Read/ReadVariableOpReadVariableOpAdam/weightu_25/m*
_output_shapes	
:*
dtype0
{
Adam/weightv_24/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightv_24/m
t
%Adam/weightv_24/m/Read/ReadVariableOpReadVariableOpAdam/weightv_24/m*
_output_shapes	
:*
dtype0
{
Adam/weightu_24/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightu_24/m
t
%Adam/weightu_24/m/Read/ReadVariableOpReadVariableOpAdam/weightu_24/m*
_output_shapes	
:*
dtype0
{
Adam/weightv_23/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightv_23/m
t
%Adam/weightv_23/m/Read/ReadVariableOpReadVariableOpAdam/weightv_23/m*
_output_shapes	
:*
dtype0
{
Adam/weightu_23/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightu_23/m
t
%Adam/weightu_23/m/Read/ReadVariableOpReadVariableOpAdam/weightu_23/m*
_output_shapes	
:*
dtype0
{
Adam/weightv_22/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightv_22/m
t
%Adam/weightv_22/m/Read/ReadVariableOpReadVariableOpAdam/weightv_22/m*
_output_shapes	
:*
dtype0
{
Adam/weightu_22/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightu_22/m
t
%Adam/weightu_22/m/Read/ReadVariableOpReadVariableOpAdam/weightu_22/m*
_output_shapes	
:*
dtype0
{
Adam/weightv_21/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightv_21/m
t
%Adam/weightv_21/m/Read/ReadVariableOpReadVariableOpAdam/weightv_21/m*
_output_shapes	
:*
dtype0
{
Adam/weightu_21/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightu_21/m
t
%Adam/weightu_21/m/Read/ReadVariableOpReadVariableOpAdam/weightu_21/m*
_output_shapes	
:*
dtype0
{
Adam/weightv_20/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightv_20/m
t
%Adam/weightv_20/m/Read/ReadVariableOpReadVariableOpAdam/weightv_20/m*
_output_shapes	
:*
dtype0
{
Adam/weightu_20/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightu_20/m
t
%Adam/weightu_20/m/Read/ReadVariableOpReadVariableOpAdam/weightu_20/m*
_output_shapes	
:*
dtype0
{
Adam/weightv_19/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightv_19/m
t
%Adam/weightv_19/m/Read/ReadVariableOpReadVariableOpAdam/weightv_19/m*
_output_shapes	
:*
dtype0
{
Adam/weightu_19/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightu_19/m
t
%Adam/weightu_19/m/Read/ReadVariableOpReadVariableOpAdam/weightu_19/m*
_output_shapes	
:*
dtype0
{
Adam/weightv_18/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightv_18/m
t
%Adam/weightv_18/m/Read/ReadVariableOpReadVariableOpAdam/weightv_18/m*
_output_shapes	
:*
dtype0
{
Adam/weightu_18/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightu_18/m
t
%Adam/weightu_18/m/Read/ReadVariableOpReadVariableOpAdam/weightu_18/m*
_output_shapes	
:*
dtype0
{
Adam/weightv_17/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightv_17/m
t
%Adam/weightv_17/m/Read/ReadVariableOpReadVariableOpAdam/weightv_17/m*
_output_shapes	
:*
dtype0
{
Adam/weightu_17/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightu_17/m
t
%Adam/weightu_17/m/Read/ReadVariableOpReadVariableOpAdam/weightu_17/m*
_output_shapes	
:*
dtype0
{
Adam/weightv_16/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightv_16/m
t
%Adam/weightv_16/m/Read/ReadVariableOpReadVariableOpAdam/weightv_16/m*
_output_shapes	
:*
dtype0
{
Adam/weightu_16/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightu_16/m
t
%Adam/weightu_16/m/Read/ReadVariableOpReadVariableOpAdam/weightu_16/m*
_output_shapes	
:*
dtype0
{
Adam/weightv_15/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightv_15/m
t
%Adam/weightv_15/m/Read/ReadVariableOpReadVariableOpAdam/weightv_15/m*
_output_shapes	
:*
dtype0
{
Adam/weightu_15/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightu_15/m
t
%Adam/weightu_15/m/Read/ReadVariableOpReadVariableOpAdam/weightu_15/m*
_output_shapes	
:*
dtype0
{
Adam/weightv_14/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightv_14/m
t
%Adam/weightv_14/m/Read/ReadVariableOpReadVariableOpAdam/weightv_14/m*
_output_shapes	
:*
dtype0
{
Adam/weightu_14/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightu_14/m
t
%Adam/weightu_14/m/Read/ReadVariableOpReadVariableOpAdam/weightu_14/m*
_output_shapes	
:*
dtype0
{
Adam/weightv_13/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightv_13/m
t
%Adam/weightv_13/m/Read/ReadVariableOpReadVariableOpAdam/weightv_13/m*
_output_shapes	
:*
dtype0
{
Adam/weightu_13/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightu_13/m
t
%Adam/weightu_13/m/Read/ReadVariableOpReadVariableOpAdam/weightu_13/m*
_output_shapes	
:*
dtype0
{
Adam/weightv_12/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightv_12/m
t
%Adam/weightv_12/m/Read/ReadVariableOpReadVariableOpAdam/weightv_12/m*
_output_shapes	
:*
dtype0
{
Adam/weightu_12/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightu_12/m
t
%Adam/weightu_12/m/Read/ReadVariableOpReadVariableOpAdam/weightu_12/m*
_output_shapes	
:*
dtype0
{
Adam/weightv_11/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightv_11/m
t
%Adam/weightv_11/m/Read/ReadVariableOpReadVariableOpAdam/weightv_11/m*
_output_shapes	
:*
dtype0
{
Adam/weightu_11/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightu_11/m
t
%Adam/weightu_11/m/Read/ReadVariableOpReadVariableOpAdam/weightu_11/m*
_output_shapes	
:*
dtype0
{
Adam/weightv_10/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightv_10/m
t
%Adam/weightv_10/m/Read/ReadVariableOpReadVariableOpAdam/weightv_10/m*
_output_shapes	
:*
dtype0
{
Adam/weightu_10/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/weightu_10/m
t
%Adam/weightu_10/m/Read/ReadVariableOpReadVariableOpAdam/weightu_10/m*
_output_shapes	
:*
dtype0
y
Adam/weightv_9/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/weightv_9/m
r
$Adam/weightv_9/m/Read/ReadVariableOpReadVariableOpAdam/weightv_9/m*
_output_shapes	
:*
dtype0
y
Adam/weightu_9/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/weightu_9/m
r
$Adam/weightu_9/m/Read/ReadVariableOpReadVariableOpAdam/weightu_9/m*
_output_shapes	
:*
dtype0
y
Adam/weightv_8/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/weightv_8/m
r
$Adam/weightv_8/m/Read/ReadVariableOpReadVariableOpAdam/weightv_8/m*
_output_shapes	
:*
dtype0
y
Adam/weightu_8/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/weightu_8/m
r
$Adam/weightu_8/m/Read/ReadVariableOpReadVariableOpAdam/weightu_8/m*
_output_shapes	
:*
dtype0
y
Adam/weightv_7/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/weightv_7/m
r
$Adam/weightv_7/m/Read/ReadVariableOpReadVariableOpAdam/weightv_7/m*
_output_shapes	
:*
dtype0
y
Adam/weightu_7/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/weightu_7/m
r
$Adam/weightu_7/m/Read/ReadVariableOpReadVariableOpAdam/weightu_7/m*
_output_shapes	
:*
dtype0
y
Adam/weightv_6/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/weightv_6/m
r
$Adam/weightv_6/m/Read/ReadVariableOpReadVariableOpAdam/weightv_6/m*
_output_shapes	
:*
dtype0
y
Adam/weightu_6/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/weightu_6/m
r
$Adam/weightu_6/m/Read/ReadVariableOpReadVariableOpAdam/weightu_6/m*
_output_shapes	
:*
dtype0
y
Adam/weightv_5/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/weightv_5/m
r
$Adam/weightv_5/m/Read/ReadVariableOpReadVariableOpAdam/weightv_5/m*
_output_shapes	
:*
dtype0
y
Adam/weightu_5/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/weightu_5/m
r
$Adam/weightu_5/m/Read/ReadVariableOpReadVariableOpAdam/weightu_5/m*
_output_shapes	
:*
dtype0
y
Adam/weightv_4/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/weightv_4/m
r
$Adam/weightv_4/m/Read/ReadVariableOpReadVariableOpAdam/weightv_4/m*
_output_shapes	
:*
dtype0
y
Adam/weightu_4/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/weightu_4/m
r
$Adam/weightu_4/m/Read/ReadVariableOpReadVariableOpAdam/weightu_4/m*
_output_shapes	
:*
dtype0
y
Adam/weightv_3/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/weightv_3/m
r
$Adam/weightv_3/m/Read/ReadVariableOpReadVariableOpAdam/weightv_3/m*
_output_shapes	
:*
dtype0
y
Adam/weightu_3/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/weightu_3/m
r
$Adam/weightu_3/m/Read/ReadVariableOpReadVariableOpAdam/weightu_3/m*
_output_shapes	
:*
dtype0
y
Adam/weightv_2/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/weightv_2/m
r
$Adam/weightv_2/m/Read/ReadVariableOpReadVariableOpAdam/weightv_2/m*
_output_shapes	
:*
dtype0
y
Adam/weightu_2/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/weightu_2/m
r
$Adam/weightu_2/m/Read/ReadVariableOpReadVariableOpAdam/weightu_2/m*
_output_shapes	
:*
dtype0
y
Adam/weightv_1/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/weightv_1/m
r
$Adam/weightv_1/m/Read/ReadVariableOpReadVariableOpAdam/weightv_1/m*
_output_shapes	
:*
dtype0
y
Adam/weightu_1/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/weightu_1/m
r
$Adam/weightu_1/m/Read/ReadVariableOpReadVariableOpAdam/weightu_1/m*
_output_shapes	
:*
dtype0
y
Adam/weightv_0/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/weightv_0/m
r
$Adam/weightv_0/m/Read/ReadVariableOpReadVariableOpAdam/weightv_0/m*
_output_shapes	
:*
dtype0
y
Adam/weightu_0/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/weightu_0/m
r
$Adam/weightu_0/m/Read/ReadVariableOpReadVariableOpAdam/weightu_0/m*
_output_shapes	
:*
dtype0

Adam/conv2d_9/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_9/bias/m
y
(Adam/conv2d_9/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_9/bias/m*
_output_shapes
:*
dtype0

Adam/conv2d_9/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_9/kernel/m

*Adam/conv2d_9/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_9/kernel/m*&
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
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:
*
dtype0
y
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
*
shared_namedense_3/kernel
r
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes
:	
*
dtype0
t
conv2d_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_11/bias
m
"conv2d_11/bias/Read/ReadVariableOpReadVariableOpconv2d_11/bias*
_output_shapes
:*
dtype0

conv2d_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_11/kernel
}
$conv2d_11/kernel/Read/ReadVariableOpReadVariableOpconv2d_11/kernel*&
_output_shapes
:*
dtype0
t
conv2d_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_10/bias
m
"conv2d_10/bias/Read/ReadVariableOpReadVariableOpconv2d_10/bias*
_output_shapes
:*
dtype0

conv2d_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_10/kernel
}
$conv2d_10/kernel/Read/ReadVariableOpReadVariableOpconv2d_10/kernel*&
_output_shapes
:*
dtype0
m

weightv_31VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
weightv_31
f
weightv_31/Read/ReadVariableOpReadVariableOp
weightv_31*
_output_shapes	
:*
dtype0
m

weightu_31VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
weightu_31
f
weightu_31/Read/ReadVariableOpReadVariableOp
weightu_31*
_output_shapes	
:*
dtype0
m

weightv_30VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
weightv_30
f
weightv_30/Read/ReadVariableOpReadVariableOp
weightv_30*
_output_shapes	
:*
dtype0
m

weightu_30VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
weightu_30
f
weightu_30/Read/ReadVariableOpReadVariableOp
weightu_30*
_output_shapes	
:*
dtype0
m

weightv_29VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
weightv_29
f
weightv_29/Read/ReadVariableOpReadVariableOp
weightv_29*
_output_shapes	
:*
dtype0
m

weightu_29VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
weightu_29
f
weightu_29/Read/ReadVariableOpReadVariableOp
weightu_29*
_output_shapes	
:*
dtype0
m

weightv_28VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
weightv_28
f
weightv_28/Read/ReadVariableOpReadVariableOp
weightv_28*
_output_shapes	
:*
dtype0
m

weightu_28VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
weightu_28
f
weightu_28/Read/ReadVariableOpReadVariableOp
weightu_28*
_output_shapes	
:*
dtype0
m

weightv_27VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
weightv_27
f
weightv_27/Read/ReadVariableOpReadVariableOp
weightv_27*
_output_shapes	
:*
dtype0
m

weightu_27VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
weightu_27
f
weightu_27/Read/ReadVariableOpReadVariableOp
weightu_27*
_output_shapes	
:*
dtype0
m

weightv_26VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
weightv_26
f
weightv_26/Read/ReadVariableOpReadVariableOp
weightv_26*
_output_shapes	
:*
dtype0
m

weightu_26VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
weightu_26
f
weightu_26/Read/ReadVariableOpReadVariableOp
weightu_26*
_output_shapes	
:*
dtype0
m

weightv_25VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
weightv_25
f
weightv_25/Read/ReadVariableOpReadVariableOp
weightv_25*
_output_shapes	
:*
dtype0
m

weightu_25VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
weightu_25
f
weightu_25/Read/ReadVariableOpReadVariableOp
weightu_25*
_output_shapes	
:*
dtype0
m

weightv_24VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
weightv_24
f
weightv_24/Read/ReadVariableOpReadVariableOp
weightv_24*
_output_shapes	
:*
dtype0
m

weightu_24VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
weightu_24
f
weightu_24/Read/ReadVariableOpReadVariableOp
weightu_24*
_output_shapes	
:*
dtype0
m

weightv_23VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
weightv_23
f
weightv_23/Read/ReadVariableOpReadVariableOp
weightv_23*
_output_shapes	
:*
dtype0
m

weightu_23VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
weightu_23
f
weightu_23/Read/ReadVariableOpReadVariableOp
weightu_23*
_output_shapes	
:*
dtype0
m

weightv_22VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
weightv_22
f
weightv_22/Read/ReadVariableOpReadVariableOp
weightv_22*
_output_shapes	
:*
dtype0
m

weightu_22VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
weightu_22
f
weightu_22/Read/ReadVariableOpReadVariableOp
weightu_22*
_output_shapes	
:*
dtype0
m

weightv_21VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
weightv_21
f
weightv_21/Read/ReadVariableOpReadVariableOp
weightv_21*
_output_shapes	
:*
dtype0
m

weightu_21VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
weightu_21
f
weightu_21/Read/ReadVariableOpReadVariableOp
weightu_21*
_output_shapes	
:*
dtype0
m

weightv_20VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
weightv_20
f
weightv_20/Read/ReadVariableOpReadVariableOp
weightv_20*
_output_shapes	
:*
dtype0
m

weightu_20VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
weightu_20
f
weightu_20/Read/ReadVariableOpReadVariableOp
weightu_20*
_output_shapes	
:*
dtype0
m

weightv_19VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
weightv_19
f
weightv_19/Read/ReadVariableOpReadVariableOp
weightv_19*
_output_shapes	
:*
dtype0
m

weightu_19VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
weightu_19
f
weightu_19/Read/ReadVariableOpReadVariableOp
weightu_19*
_output_shapes	
:*
dtype0
m

weightv_18VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
weightv_18
f
weightv_18/Read/ReadVariableOpReadVariableOp
weightv_18*
_output_shapes	
:*
dtype0
m

weightu_18VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
weightu_18
f
weightu_18/Read/ReadVariableOpReadVariableOp
weightu_18*
_output_shapes	
:*
dtype0
m

weightv_17VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
weightv_17
f
weightv_17/Read/ReadVariableOpReadVariableOp
weightv_17*
_output_shapes	
:*
dtype0
m

weightu_17VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
weightu_17
f
weightu_17/Read/ReadVariableOpReadVariableOp
weightu_17*
_output_shapes	
:*
dtype0
m

weightv_16VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
weightv_16
f
weightv_16/Read/ReadVariableOpReadVariableOp
weightv_16*
_output_shapes	
:*
dtype0
m

weightu_16VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
weightu_16
f
weightu_16/Read/ReadVariableOpReadVariableOp
weightu_16*
_output_shapes	
:*
dtype0
m

weightv_15VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
weightv_15
f
weightv_15/Read/ReadVariableOpReadVariableOp
weightv_15*
_output_shapes	
:*
dtype0
m

weightu_15VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
weightu_15
f
weightu_15/Read/ReadVariableOpReadVariableOp
weightu_15*
_output_shapes	
:*
dtype0
m

weightv_14VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
weightv_14
f
weightv_14/Read/ReadVariableOpReadVariableOp
weightv_14*
_output_shapes	
:*
dtype0
m

weightu_14VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
weightu_14
f
weightu_14/Read/ReadVariableOpReadVariableOp
weightu_14*
_output_shapes	
:*
dtype0
m

weightv_13VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
weightv_13
f
weightv_13/Read/ReadVariableOpReadVariableOp
weightv_13*
_output_shapes	
:*
dtype0
m

weightu_13VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
weightu_13
f
weightu_13/Read/ReadVariableOpReadVariableOp
weightu_13*
_output_shapes	
:*
dtype0
m

weightv_12VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
weightv_12
f
weightv_12/Read/ReadVariableOpReadVariableOp
weightv_12*
_output_shapes	
:*
dtype0
m

weightu_12VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
weightu_12
f
weightu_12/Read/ReadVariableOpReadVariableOp
weightu_12*
_output_shapes	
:*
dtype0
m

weightv_11VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
weightv_11
f
weightv_11/Read/ReadVariableOpReadVariableOp
weightv_11*
_output_shapes	
:*
dtype0
m

weightu_11VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
weightu_11
f
weightu_11/Read/ReadVariableOpReadVariableOp
weightu_11*
_output_shapes	
:*
dtype0
m

weightv_10VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
weightv_10
f
weightv_10/Read/ReadVariableOpReadVariableOp
weightv_10*
_output_shapes	
:*
dtype0
m

weightu_10VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
weightu_10
f
weightu_10/Read/ReadVariableOpReadVariableOp
weightu_10*
_output_shapes	
:*
dtype0
k
	weightv_9VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	weightv_9
d
weightv_9/Read/ReadVariableOpReadVariableOp	weightv_9*
_output_shapes	
:*
dtype0
k
	weightu_9VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	weightu_9
d
weightu_9/Read/ReadVariableOpReadVariableOp	weightu_9*
_output_shapes	
:*
dtype0
k
	weightv_8VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	weightv_8
d
weightv_8/Read/ReadVariableOpReadVariableOp	weightv_8*
_output_shapes	
:*
dtype0
k
	weightu_8VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	weightu_8
d
weightu_8/Read/ReadVariableOpReadVariableOp	weightu_8*
_output_shapes	
:*
dtype0
k
	weightv_7VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	weightv_7
d
weightv_7/Read/ReadVariableOpReadVariableOp	weightv_7*
_output_shapes	
:*
dtype0
k
	weightu_7VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	weightu_7
d
weightu_7/Read/ReadVariableOpReadVariableOp	weightu_7*
_output_shapes	
:*
dtype0
k
	weightv_6VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	weightv_6
d
weightv_6/Read/ReadVariableOpReadVariableOp	weightv_6*
_output_shapes	
:*
dtype0
k
	weightu_6VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	weightu_6
d
weightu_6/Read/ReadVariableOpReadVariableOp	weightu_6*
_output_shapes	
:*
dtype0
k
	weightv_5VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	weightv_5
d
weightv_5/Read/ReadVariableOpReadVariableOp	weightv_5*
_output_shapes	
:*
dtype0
k
	weightu_5VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	weightu_5
d
weightu_5/Read/ReadVariableOpReadVariableOp	weightu_5*
_output_shapes	
:*
dtype0
k
	weightv_4VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	weightv_4
d
weightv_4/Read/ReadVariableOpReadVariableOp	weightv_4*
_output_shapes	
:*
dtype0
k
	weightu_4VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	weightu_4
d
weightu_4/Read/ReadVariableOpReadVariableOp	weightu_4*
_output_shapes	
:*
dtype0
k
	weightv_3VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	weightv_3
d
weightv_3/Read/ReadVariableOpReadVariableOp	weightv_3*
_output_shapes	
:*
dtype0
k
	weightu_3VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	weightu_3
d
weightu_3/Read/ReadVariableOpReadVariableOp	weightu_3*
_output_shapes	
:*
dtype0
k
	weightv_2VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	weightv_2
d
weightv_2/Read/ReadVariableOpReadVariableOp	weightv_2*
_output_shapes	
:*
dtype0
k
	weightu_2VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	weightu_2
d
weightu_2/Read/ReadVariableOpReadVariableOp	weightu_2*
_output_shapes	
:*
dtype0
k
	weightv_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	weightv_1
d
weightv_1/Read/ReadVariableOpReadVariableOp	weightv_1*
_output_shapes	
:*
dtype0
k
	weightu_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	weightu_1
d
weightu_1/Read/ReadVariableOpReadVariableOp	weightu_1*
_output_shapes	
:*
dtype0
k
	weightv_0VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	weightv_0
d
weightv_0/Read/ReadVariableOpReadVariableOp	weightv_0*
_output_shapes	
:*
dtype0
k
	weightu_0VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	weightu_0
d
weightu_0/Read/ReadVariableOpReadVariableOp	weightu_0*
_output_shapes	
:*
dtype0
r
conv2d_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_9/bias
k
!conv2d_9/bias/Read/ReadVariableOpReadVariableOpconv2d_9/bias*
_output_shapes
:*
dtype0

conv2d_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_9/kernel
{
#conv2d_9/kernel/Read/ReadVariableOpReadVariableOpconv2d_9/kernel*&
_output_shapes
:*
dtype0

serving_default_input_4Placeholder*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*$
shape:ÿÿÿÿÿÿÿÿÿ
´

StatefulPartitionedCallStatefulPartitionedCallserving_default_input_4conv2d_9/kernelconv2d_9/bias	weightu_0	weightv_0	weightu_1	weightv_1	weightu_2	weightv_2	weightu_3	weightv_3	weightu_4	weightv_4	weightu_5	weightv_5	weightu_6	weightv_6	weightu_7	weightv_7	weightu_8	weightv_8	weightu_9	weightv_9
weightu_10
weightv_10
weightu_11
weightv_11
weightu_12
weightv_12
weightu_13
weightv_13
weightu_14
weightv_14
weightu_15
weightv_15
weightu_16
weightv_16
weightu_17
weightv_17
weightu_18
weightv_18
weightu_19
weightv_19
weightu_20
weightv_20
weightu_21
weightv_21
weightu_22
weightv_22
weightu_23
weightv_23
weightu_24
weightv_24
weightu_25
weightv_25
weightu_26
weightv_26
weightu_27
weightv_27
weightu_28
weightv_28
weightu_29
weightv_29
weightu_30
weightv_30
weightu_31
weightv_31conv2d_10/kernelconv2d_10/biasconv2d_11/kernelconv2d_11/biasdense_3/kerneldense_3/bias*T
TinM
K2I*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*j
_read_only_resource_inputsL
JH	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGH*0
config_proto 

CPU

GPU2*0J 8 *.
f)R'
%__inference_signature_wrapper_4830678

NoOpNoOp
ù±
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*³±
value¨±B¤± B±
Þ
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
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
	
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses
*	vectors_u
+	vectors_v
,	weightu_0
-	weightv_0
.	weightu_1
/	weightv_1
0	weightu_2
1	weightv_2
2	weightu_3
3	weightv_3
4	weightu_4
5	weightv_4
6	weightu_5
7	weightv_5
8	weightu_6
9	weightv_6
:	weightu_7
;	weightv_7
<	weightu_8
=	weightv_8
>	weightu_9
?	weightv_9
@
weightu_10
A
weightv_10
B
weightu_11
C
weightv_11
D
weightu_12
E
weightv_12
F
weightu_13
G
weightv_13
H
weightu_14
I
weightv_14
J
weightu_15
K
weightv_15
L
weightu_16
M
weightv_16
N
weightu_17
O
weightv_17
P
weightu_18
Q
weightv_18
R
weightu_19
S
weightv_19
T
weightu_20
U
weightv_20
V
weightu_21
W
weightv_21
X
weightu_22
Y
weightv_22
Z
weightu_23
[
weightv_23
\
weightu_24
]
weightv_24
^
weightu_25
_
weightv_25
`
weightu_26
a
weightv_26
b
weightu_27
c
weightv_27
d
weightu_28
e
weightv_28
f
weightu_29
g
weightv_29
h
weightu_30
i
weightv_30
j
weightu_31
k
weightv_31*

l	variables
mtrainable_variables
nregularization_losses
o	keras_api
p__call__
*q&call_and_return_all_conditional_losses* 

r	variables
strainable_variables
tregularization_losses
u	keras_api
v__call__
*w&call_and_return_all_conditional_losses* 
É
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
|__call__
*}&call_and_return_all_conditional_losses

~kernel
bias
!_jit_compiled_convolution_op*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 
Ñ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias
!_jit_compiled_convolution_op*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 
¬
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_random_generator* 
®
	variables
trainable_variables
regularization_losses
 	keras_api
¡__call__
+¢&call_and_return_all_conditional_losses
£kernel
	¤bias*
¾
0
1
,2
-3
.4
/5
06
17
28
39
410
511
612
713
814
915
:16
;17
<18
=19
>20
?21
@22
A23
B24
C25
D26
E27
F28
G29
H30
I31
J32
K33
L34
M35
N36
O37
P38
Q39
R40
S41
T42
U43
V44
W45
X46
Y47
Z48
[49
\50
]51
^52
_53
`54
a55
b56
c57
d58
e59
f60
g61
h62
i63
j64
k65
~66
67
68
69
£70
¤71*
¾
0
1
,2
-3
.4
/5
06
17
28
39
410
511
612
713
814
915
:16
;17
<18
=19
>20
?21
@22
A23
B24
C25
D26
E27
F28
G29
H30
I31
J32
K33
L34
M35
N36
O37
P38
Q39
R40
S41
T42
U43
V44
W45
X46
Y47
Z48
[49
\50
]51
^52
_53
`54
a55
b56
c57
d58
e59
f60
g61
h62
i63
j64
k65
~66
67
68
69
£70
¤71*
* 
µ
¥non_trainable_variables
¦layers
§metrics
 ¨layer_regularization_losses
©layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
ªtrace_0
«trace_1
¬trace_2
­trace_3* 
:
®trace_0
¯trace_1
°trace_2
±trace_3* 
* 
ñ
	²iter
³beta_1
´beta_2

µdecay
¶learning_ratemm,m-m.m/m0m1m2m3m4m5m6m7m8m 9m¡:m¢;m£<m¤=m¥>m¦?m§@m¨Am©BmªCm«Dm¬Em­Fm®Gm¯Hm°Im±Jm²Km³Lm´MmµNm¶Om·Pm¸Qm¹RmºSm»Tm¼Um½Vm¾Wm¿XmÀYmÁZmÂ[mÃ\mÄ]mÅ^mÆ_mÇ`mÈamÉbmÊcmËdmÌemÍfmÎgmÏhmÐimÑjmÒkmÓ~mÔmÕ	mÖ	m×	£mØ	¤mÙvÚvÛ,vÜ-vÝ.vÞ/vß0và1vá2vâ3vã4vä5vå6væ7vç8vè9vé:vê;vë<vì=ví>vî?vï@vðAvñBvòCvóDvôEvõFvöGv÷HvøIvùJvúKvûLvüMvýNvþOvÿPvQvRvSvTvUvVvWvXvYvZv[v\v]v^v_v`vavbvcvdvevfvgvhvivjvkv~vv	v	v	£v 	¤v¡*

·serving_default* 

0
1*

0
1*
* 

¸non_trainable_variables
¹layers
ºmetrics
 »layer_regularization_losses
¼layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

½trace_0* 

¾trace_0* 
_Y
VARIABLE_VALUEconv2d_9/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_9/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

¿non_trainable_variables
Àlayers
Ámetrics
 Âlayer_regularization_losses
Ãlayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses* 

Ätrace_0* 

Åtrace_0* 
ú
,0
-1
.2
/3
04
15
26
37
48
59
610
711
812
913
:14
;15
<16
=17
>18
?19
@20
A21
B22
C23
D24
E25
F26
G27
H28
I29
J30
K31
L32
M33
N34
O35
P36
Q37
R38
S39
T40
U41
V42
W43
X44
Y45
Z46
[47
\48
]49
^50
_51
`52
a53
b54
c55
d56
e57
f58
g59
h60
i61
j62
k63*
ú
,0
-1
.2
/3
04
15
26
37
48
59
610
711
812
913
:14
;15
<16
=17
>18
?19
@20
A21
B22
C23
D24
E25
F26
G27
H28
I29
J30
K31
L32
M33
N34
O35
P36
Q37
R38
S39
T40
U41
V42
W43
X44
Y45
Z46
[47
\48
]49
^50
_51
`52
a53
b54
c55
d56
e57
f58
g59
h60
i61
j62
k63*
* 

Ænon_trainable_variables
Çlayers
Èmetrics
 Élayer_regularization_losses
Êlayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses*

Ëtrace_0* 

Ìtrace_0* 
ú
,0
.1
02
23
44
65
86
:7
<8
>9
@10
B11
D12
F13
H14
J15
L16
N17
P18
R19
T20
V21
X22
Z23
\24
^25
`26
b27
d28
f29
h30
j31*
ú
-0
/1
12
33
54
75
96
;7
=8
?9
A10
C11
E12
G13
I14
K15
M16
O17
Q18
S19
U20
W21
Y22
[23
]24
_25
a26
c27
e28
g29
i30
k31*
\V
VARIABLE_VALUE	weightu_09layer_with_weights-1/weightu_0/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUE	weightv_09layer_with_weights-1/weightv_0/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUE	weightu_19layer_with_weights-1/weightu_1/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUE	weightv_19layer_with_weights-1/weightv_1/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUE	weightu_29layer_with_weights-1/weightu_2/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUE	weightv_29layer_with_weights-1/weightv_2/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUE	weightu_39layer_with_weights-1/weightu_3/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUE	weightv_39layer_with_weights-1/weightv_3/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUE	weightu_49layer_with_weights-1/weightu_4/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUE	weightv_49layer_with_weights-1/weightv_4/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUE	weightu_59layer_with_weights-1/weightu_5/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUE	weightv_59layer_with_weights-1/weightv_5/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUE	weightu_69layer_with_weights-1/weightu_6/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUE	weightv_69layer_with_weights-1/weightv_6/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUE	weightu_79layer_with_weights-1/weightu_7/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUE	weightv_79layer_with_weights-1/weightv_7/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUE	weightu_89layer_with_weights-1/weightu_8/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUE	weightv_89layer_with_weights-1/weightv_8/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUE	weightu_99layer_with_weights-1/weightu_9/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUE	weightv_99layer_with_weights-1/weightv_9/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUE
weightu_10:layer_with_weights-1/weightu_10/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUE
weightv_10:layer_with_weights-1/weightv_10/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUE
weightu_11:layer_with_weights-1/weightu_11/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUE
weightv_11:layer_with_weights-1/weightv_11/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUE
weightu_12:layer_with_weights-1/weightu_12/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUE
weightv_12:layer_with_weights-1/weightv_12/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUE
weightu_13:layer_with_weights-1/weightu_13/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUE
weightv_13:layer_with_weights-1/weightv_13/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUE
weightu_14:layer_with_weights-1/weightu_14/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUE
weightv_14:layer_with_weights-1/weightv_14/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUE
weightu_15:layer_with_weights-1/weightu_15/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUE
weightv_15:layer_with_weights-1/weightv_15/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUE
weightu_16:layer_with_weights-1/weightu_16/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUE
weightv_16:layer_with_weights-1/weightv_16/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUE
weightu_17:layer_with_weights-1/weightu_17/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUE
weightv_17:layer_with_weights-1/weightv_17/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUE
weightu_18:layer_with_weights-1/weightu_18/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUE
weightv_18:layer_with_weights-1/weightv_18/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUE
weightu_19:layer_with_weights-1/weightu_19/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUE
weightv_19:layer_with_weights-1/weightv_19/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUE
weightu_20:layer_with_weights-1/weightu_20/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUE
weightv_20:layer_with_weights-1/weightv_20/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUE
weightu_21:layer_with_weights-1/weightu_21/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUE
weightv_21:layer_with_weights-1/weightv_21/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUE
weightu_22:layer_with_weights-1/weightu_22/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUE
weightv_22:layer_with_weights-1/weightv_22/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUE
weightu_23:layer_with_weights-1/weightu_23/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUE
weightv_23:layer_with_weights-1/weightv_23/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUE
weightu_24:layer_with_weights-1/weightu_24/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUE
weightv_24:layer_with_weights-1/weightv_24/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUE
weightu_25:layer_with_weights-1/weightu_25/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUE
weightv_25:layer_with_weights-1/weightv_25/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUE
weightu_26:layer_with_weights-1/weightu_26/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUE
weightv_26:layer_with_weights-1/weightv_26/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUE
weightu_27:layer_with_weights-1/weightu_27/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUE
weightv_27:layer_with_weights-1/weightv_27/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUE
weightu_28:layer_with_weights-1/weightu_28/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUE
weightv_28:layer_with_weights-1/weightv_28/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUE
weightu_29:layer_with_weights-1/weightu_29/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUE
weightv_29:layer_with_weights-1/weightv_29/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUE
weightu_30:layer_with_weights-1/weightu_30/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUE
weightv_30:layer_with_weights-1/weightv_30/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUE
weightu_31:layer_with_weights-1/weightu_31/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUE
weightv_31:layer_with_weights-1/weightv_31/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

Ínon_trainable_variables
Îlayers
Ïmetrics
 Ðlayer_regularization_losses
Ñlayer_metrics
l	variables
mtrainable_variables
nregularization_losses
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses* 

Òtrace_0* 

Ótrace_0* 
* 
* 
* 

Ônon_trainable_variables
Õlayers
Ömetrics
 ×layer_regularization_losses
Ølayer_metrics
r	variables
strainable_variables
tregularization_losses
v__call__
*w&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses* 

Ùtrace_0* 

Útrace_0* 

~0
1*

~0
1*
* 

Ûnon_trainable_variables
Ülayers
Ýmetrics
 Þlayer_regularization_losses
ßlayer_metrics
x	variables
ytrainable_variables
zregularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses*

àtrace_0* 

átrace_0* 
`Z
VARIABLE_VALUEconv2d_10/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_10/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

ânon_trainable_variables
ãlayers
ämetrics
 ålayer_regularization_losses
ælayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

çtrace_0* 

ètrace_0* 

0
1*

0
1*
* 

énon_trainable_variables
êlayers
ëmetrics
 ìlayer_regularization_losses
ílayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

îtrace_0* 

ïtrace_0* 
`Z
VARIABLE_VALUEconv2d_11/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_11/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

ðnon_trainable_variables
ñlayers
òmetrics
 ólayer_regularization_losses
ôlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

õtrace_0* 

ötrace_0* 
* 
* 
* 

÷non_trainable_variables
ølayers
ùmetrics
 úlayer_regularization_losses
ûlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

ütrace_0
ýtrace_1* 

þtrace_0
ÿtrace_1* 
* 

£0
¤1*

£0
¤1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
¡__call__
+¢&call_and_return_all_conditional_losses
'¢"call_and_return_conditional_losses*

trace_0* 

trace_0* 
^X
VARIABLE_VALUEdense_3/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_3/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
0
1*
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
	variables
	keras_api

total

count*
M
	variables
	keras_api

total

count

_fn_kwargs*

0
1*

	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
|
VARIABLE_VALUEAdam/conv2d_9/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_9/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/weightu_0/mUlayer_with_weights-1/weightu_0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/weightv_0/mUlayer_with_weights-1/weightv_0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/weightu_1/mUlayer_with_weights-1/weightu_1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/weightv_1/mUlayer_with_weights-1/weightv_1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/weightu_2/mUlayer_with_weights-1/weightu_2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/weightv_2/mUlayer_with_weights-1/weightv_2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/weightu_3/mUlayer_with_weights-1/weightu_3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/weightv_3/mUlayer_with_weights-1/weightv_3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/weightu_4/mUlayer_with_weights-1/weightu_4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/weightv_4/mUlayer_with_weights-1/weightv_4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/weightu_5/mUlayer_with_weights-1/weightu_5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/weightv_5/mUlayer_with_weights-1/weightv_5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/weightu_6/mUlayer_with_weights-1/weightu_6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/weightv_6/mUlayer_with_weights-1/weightv_6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/weightu_7/mUlayer_with_weights-1/weightu_7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/weightv_7/mUlayer_with_weights-1/weightv_7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/weightu_8/mUlayer_with_weights-1/weightu_8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/weightv_8/mUlayer_with_weights-1/weightv_8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/weightu_9/mUlayer_with_weights-1/weightu_9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/weightv_9/mUlayer_with_weights-1/weightv_9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightu_10/mVlayer_with_weights-1/weightu_10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightv_10/mVlayer_with_weights-1/weightv_10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightu_11/mVlayer_with_weights-1/weightu_11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightv_11/mVlayer_with_weights-1/weightv_11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightu_12/mVlayer_with_weights-1/weightu_12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightv_12/mVlayer_with_weights-1/weightv_12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightu_13/mVlayer_with_weights-1/weightu_13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightv_13/mVlayer_with_weights-1/weightv_13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightu_14/mVlayer_with_weights-1/weightu_14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightv_14/mVlayer_with_weights-1/weightv_14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightu_15/mVlayer_with_weights-1/weightu_15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightv_15/mVlayer_with_weights-1/weightv_15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightu_16/mVlayer_with_weights-1/weightu_16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightv_16/mVlayer_with_weights-1/weightv_16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightu_17/mVlayer_with_weights-1/weightu_17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightv_17/mVlayer_with_weights-1/weightv_17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightu_18/mVlayer_with_weights-1/weightu_18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightv_18/mVlayer_with_weights-1/weightv_18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightu_19/mVlayer_with_weights-1/weightu_19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightv_19/mVlayer_with_weights-1/weightv_19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightu_20/mVlayer_with_weights-1/weightu_20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightv_20/mVlayer_with_weights-1/weightv_20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightu_21/mVlayer_with_weights-1/weightu_21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightv_21/mVlayer_with_weights-1/weightv_21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightu_22/mVlayer_with_weights-1/weightu_22/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightv_22/mVlayer_with_weights-1/weightv_22/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightu_23/mVlayer_with_weights-1/weightu_23/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightv_23/mVlayer_with_weights-1/weightv_23/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightu_24/mVlayer_with_weights-1/weightu_24/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightv_24/mVlayer_with_weights-1/weightv_24/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightu_25/mVlayer_with_weights-1/weightu_25/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightv_25/mVlayer_with_weights-1/weightv_25/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightu_26/mVlayer_with_weights-1/weightu_26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightv_26/mVlayer_with_weights-1/weightv_26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightu_27/mVlayer_with_weights-1/weightu_27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightv_27/mVlayer_with_weights-1/weightv_27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightu_28/mVlayer_with_weights-1/weightu_28/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightv_28/mVlayer_with_weights-1/weightv_28/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightu_29/mVlayer_with_weights-1/weightu_29/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightv_29/mVlayer_with_weights-1/weightv_29/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightu_30/mVlayer_with_weights-1/weightu_30/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightv_30/mVlayer_with_weights-1/weightv_30/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightu_31/mVlayer_with_weights-1/weightu_31/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightv_31/mVlayer_with_weights-1/weightv_31/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_10/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_10/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_11/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_11/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_3/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_3/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv2d_9/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_9/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/weightu_0/vUlayer_with_weights-1/weightu_0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/weightv_0/vUlayer_with_weights-1/weightv_0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/weightu_1/vUlayer_with_weights-1/weightu_1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/weightv_1/vUlayer_with_weights-1/weightv_1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/weightu_2/vUlayer_with_weights-1/weightu_2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/weightv_2/vUlayer_with_weights-1/weightv_2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/weightu_3/vUlayer_with_weights-1/weightu_3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/weightv_3/vUlayer_with_weights-1/weightv_3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/weightu_4/vUlayer_with_weights-1/weightu_4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/weightv_4/vUlayer_with_weights-1/weightv_4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/weightu_5/vUlayer_with_weights-1/weightu_5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/weightv_5/vUlayer_with_weights-1/weightv_5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/weightu_6/vUlayer_with_weights-1/weightu_6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/weightv_6/vUlayer_with_weights-1/weightv_6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/weightu_7/vUlayer_with_weights-1/weightu_7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/weightv_7/vUlayer_with_weights-1/weightv_7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/weightu_8/vUlayer_with_weights-1/weightu_8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/weightv_8/vUlayer_with_weights-1/weightv_8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/weightu_9/vUlayer_with_weights-1/weightu_9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/weightv_9/vUlayer_with_weights-1/weightv_9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightu_10/vVlayer_with_weights-1/weightu_10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightv_10/vVlayer_with_weights-1/weightv_10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightu_11/vVlayer_with_weights-1/weightu_11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightv_11/vVlayer_with_weights-1/weightv_11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightu_12/vVlayer_with_weights-1/weightu_12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightv_12/vVlayer_with_weights-1/weightv_12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightu_13/vVlayer_with_weights-1/weightu_13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightv_13/vVlayer_with_weights-1/weightv_13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightu_14/vVlayer_with_weights-1/weightu_14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightv_14/vVlayer_with_weights-1/weightv_14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightu_15/vVlayer_with_weights-1/weightu_15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightv_15/vVlayer_with_weights-1/weightv_15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightu_16/vVlayer_with_weights-1/weightu_16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightv_16/vVlayer_with_weights-1/weightv_16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightu_17/vVlayer_with_weights-1/weightu_17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightv_17/vVlayer_with_weights-1/weightv_17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightu_18/vVlayer_with_weights-1/weightu_18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightv_18/vVlayer_with_weights-1/weightv_18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightu_19/vVlayer_with_weights-1/weightu_19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightv_19/vVlayer_with_weights-1/weightv_19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightu_20/vVlayer_with_weights-1/weightu_20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightv_20/vVlayer_with_weights-1/weightv_20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightu_21/vVlayer_with_weights-1/weightu_21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightv_21/vVlayer_with_weights-1/weightv_21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightu_22/vVlayer_with_weights-1/weightu_22/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightv_22/vVlayer_with_weights-1/weightv_22/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightu_23/vVlayer_with_weights-1/weightu_23/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightv_23/vVlayer_with_weights-1/weightv_23/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightu_24/vVlayer_with_weights-1/weightu_24/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightv_24/vVlayer_with_weights-1/weightv_24/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightu_25/vVlayer_with_weights-1/weightu_25/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightv_25/vVlayer_with_weights-1/weightv_25/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightu_26/vVlayer_with_weights-1/weightu_26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightv_26/vVlayer_with_weights-1/weightv_26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightu_27/vVlayer_with_weights-1/weightu_27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightv_27/vVlayer_with_weights-1/weightv_27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightu_28/vVlayer_with_weights-1/weightu_28/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightv_28/vVlayer_with_weights-1/weightv_28/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightu_29/vVlayer_with_weights-1/weightu_29/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightv_29/vVlayer_with_weights-1/weightv_29/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightu_30/vVlayer_with_weights-1/weightu_30/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightv_30/vVlayer_with_weights-1/weightv_30/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightu_31/vVlayer_with_weights-1/weightu_31/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/weightv_31/vVlayer_with_weights-1/weightv_31/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_10/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_10/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_11/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_11/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_3/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_3/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
·D
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv2d_9/kernel/Read/ReadVariableOp!conv2d_9/bias/Read/ReadVariableOpweightu_0/Read/ReadVariableOpweightv_0/Read/ReadVariableOpweightu_1/Read/ReadVariableOpweightv_1/Read/ReadVariableOpweightu_2/Read/ReadVariableOpweightv_2/Read/ReadVariableOpweightu_3/Read/ReadVariableOpweightv_3/Read/ReadVariableOpweightu_4/Read/ReadVariableOpweightv_4/Read/ReadVariableOpweightu_5/Read/ReadVariableOpweightv_5/Read/ReadVariableOpweightu_6/Read/ReadVariableOpweightv_6/Read/ReadVariableOpweightu_7/Read/ReadVariableOpweightv_7/Read/ReadVariableOpweightu_8/Read/ReadVariableOpweightv_8/Read/ReadVariableOpweightu_9/Read/ReadVariableOpweightv_9/Read/ReadVariableOpweightu_10/Read/ReadVariableOpweightv_10/Read/ReadVariableOpweightu_11/Read/ReadVariableOpweightv_11/Read/ReadVariableOpweightu_12/Read/ReadVariableOpweightv_12/Read/ReadVariableOpweightu_13/Read/ReadVariableOpweightv_13/Read/ReadVariableOpweightu_14/Read/ReadVariableOpweightv_14/Read/ReadVariableOpweightu_15/Read/ReadVariableOpweightv_15/Read/ReadVariableOpweightu_16/Read/ReadVariableOpweightv_16/Read/ReadVariableOpweightu_17/Read/ReadVariableOpweightv_17/Read/ReadVariableOpweightu_18/Read/ReadVariableOpweightv_18/Read/ReadVariableOpweightu_19/Read/ReadVariableOpweightv_19/Read/ReadVariableOpweightu_20/Read/ReadVariableOpweightv_20/Read/ReadVariableOpweightu_21/Read/ReadVariableOpweightv_21/Read/ReadVariableOpweightu_22/Read/ReadVariableOpweightv_22/Read/ReadVariableOpweightu_23/Read/ReadVariableOpweightv_23/Read/ReadVariableOpweightu_24/Read/ReadVariableOpweightv_24/Read/ReadVariableOpweightu_25/Read/ReadVariableOpweightv_25/Read/ReadVariableOpweightu_26/Read/ReadVariableOpweightv_26/Read/ReadVariableOpweightu_27/Read/ReadVariableOpweightv_27/Read/ReadVariableOpweightu_28/Read/ReadVariableOpweightv_28/Read/ReadVariableOpweightu_29/Read/ReadVariableOpweightv_29/Read/ReadVariableOpweightu_30/Read/ReadVariableOpweightv_30/Read/ReadVariableOpweightu_31/Read/ReadVariableOpweightv_31/Read/ReadVariableOp$conv2d_10/kernel/Read/ReadVariableOp"conv2d_10/bias/Read/ReadVariableOp$conv2d_11/kernel/Read/ReadVariableOp"conv2d_11/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/conv2d_9/kernel/m/Read/ReadVariableOp(Adam/conv2d_9/bias/m/Read/ReadVariableOp$Adam/weightu_0/m/Read/ReadVariableOp$Adam/weightv_0/m/Read/ReadVariableOp$Adam/weightu_1/m/Read/ReadVariableOp$Adam/weightv_1/m/Read/ReadVariableOp$Adam/weightu_2/m/Read/ReadVariableOp$Adam/weightv_2/m/Read/ReadVariableOp$Adam/weightu_3/m/Read/ReadVariableOp$Adam/weightv_3/m/Read/ReadVariableOp$Adam/weightu_4/m/Read/ReadVariableOp$Adam/weightv_4/m/Read/ReadVariableOp$Adam/weightu_5/m/Read/ReadVariableOp$Adam/weightv_5/m/Read/ReadVariableOp$Adam/weightu_6/m/Read/ReadVariableOp$Adam/weightv_6/m/Read/ReadVariableOp$Adam/weightu_7/m/Read/ReadVariableOp$Adam/weightv_7/m/Read/ReadVariableOp$Adam/weightu_8/m/Read/ReadVariableOp$Adam/weightv_8/m/Read/ReadVariableOp$Adam/weightu_9/m/Read/ReadVariableOp$Adam/weightv_9/m/Read/ReadVariableOp%Adam/weightu_10/m/Read/ReadVariableOp%Adam/weightv_10/m/Read/ReadVariableOp%Adam/weightu_11/m/Read/ReadVariableOp%Adam/weightv_11/m/Read/ReadVariableOp%Adam/weightu_12/m/Read/ReadVariableOp%Adam/weightv_12/m/Read/ReadVariableOp%Adam/weightu_13/m/Read/ReadVariableOp%Adam/weightv_13/m/Read/ReadVariableOp%Adam/weightu_14/m/Read/ReadVariableOp%Adam/weightv_14/m/Read/ReadVariableOp%Adam/weightu_15/m/Read/ReadVariableOp%Adam/weightv_15/m/Read/ReadVariableOp%Adam/weightu_16/m/Read/ReadVariableOp%Adam/weightv_16/m/Read/ReadVariableOp%Adam/weightu_17/m/Read/ReadVariableOp%Adam/weightv_17/m/Read/ReadVariableOp%Adam/weightu_18/m/Read/ReadVariableOp%Adam/weightv_18/m/Read/ReadVariableOp%Adam/weightu_19/m/Read/ReadVariableOp%Adam/weightv_19/m/Read/ReadVariableOp%Adam/weightu_20/m/Read/ReadVariableOp%Adam/weightv_20/m/Read/ReadVariableOp%Adam/weightu_21/m/Read/ReadVariableOp%Adam/weightv_21/m/Read/ReadVariableOp%Adam/weightu_22/m/Read/ReadVariableOp%Adam/weightv_22/m/Read/ReadVariableOp%Adam/weightu_23/m/Read/ReadVariableOp%Adam/weightv_23/m/Read/ReadVariableOp%Adam/weightu_24/m/Read/ReadVariableOp%Adam/weightv_24/m/Read/ReadVariableOp%Adam/weightu_25/m/Read/ReadVariableOp%Adam/weightv_25/m/Read/ReadVariableOp%Adam/weightu_26/m/Read/ReadVariableOp%Adam/weightv_26/m/Read/ReadVariableOp%Adam/weightu_27/m/Read/ReadVariableOp%Adam/weightv_27/m/Read/ReadVariableOp%Adam/weightu_28/m/Read/ReadVariableOp%Adam/weightv_28/m/Read/ReadVariableOp%Adam/weightu_29/m/Read/ReadVariableOp%Adam/weightv_29/m/Read/ReadVariableOp%Adam/weightu_30/m/Read/ReadVariableOp%Adam/weightv_30/m/Read/ReadVariableOp%Adam/weightu_31/m/Read/ReadVariableOp%Adam/weightv_31/m/Read/ReadVariableOp+Adam/conv2d_10/kernel/m/Read/ReadVariableOp)Adam/conv2d_10/bias/m/Read/ReadVariableOp+Adam/conv2d_11/kernel/m/Read/ReadVariableOp)Adam/conv2d_11/bias/m/Read/ReadVariableOp)Adam/dense_3/kernel/m/Read/ReadVariableOp'Adam/dense_3/bias/m/Read/ReadVariableOp*Adam/conv2d_9/kernel/v/Read/ReadVariableOp(Adam/conv2d_9/bias/v/Read/ReadVariableOp$Adam/weightu_0/v/Read/ReadVariableOp$Adam/weightv_0/v/Read/ReadVariableOp$Adam/weightu_1/v/Read/ReadVariableOp$Adam/weightv_1/v/Read/ReadVariableOp$Adam/weightu_2/v/Read/ReadVariableOp$Adam/weightv_2/v/Read/ReadVariableOp$Adam/weightu_3/v/Read/ReadVariableOp$Adam/weightv_3/v/Read/ReadVariableOp$Adam/weightu_4/v/Read/ReadVariableOp$Adam/weightv_4/v/Read/ReadVariableOp$Adam/weightu_5/v/Read/ReadVariableOp$Adam/weightv_5/v/Read/ReadVariableOp$Adam/weightu_6/v/Read/ReadVariableOp$Adam/weightv_6/v/Read/ReadVariableOp$Adam/weightu_7/v/Read/ReadVariableOp$Adam/weightv_7/v/Read/ReadVariableOp$Adam/weightu_8/v/Read/ReadVariableOp$Adam/weightv_8/v/Read/ReadVariableOp$Adam/weightu_9/v/Read/ReadVariableOp$Adam/weightv_9/v/Read/ReadVariableOp%Adam/weightu_10/v/Read/ReadVariableOp%Adam/weightv_10/v/Read/ReadVariableOp%Adam/weightu_11/v/Read/ReadVariableOp%Adam/weightv_11/v/Read/ReadVariableOp%Adam/weightu_12/v/Read/ReadVariableOp%Adam/weightv_12/v/Read/ReadVariableOp%Adam/weightu_13/v/Read/ReadVariableOp%Adam/weightv_13/v/Read/ReadVariableOp%Adam/weightu_14/v/Read/ReadVariableOp%Adam/weightv_14/v/Read/ReadVariableOp%Adam/weightu_15/v/Read/ReadVariableOp%Adam/weightv_15/v/Read/ReadVariableOp%Adam/weightu_16/v/Read/ReadVariableOp%Adam/weightv_16/v/Read/ReadVariableOp%Adam/weightu_17/v/Read/ReadVariableOp%Adam/weightv_17/v/Read/ReadVariableOp%Adam/weightu_18/v/Read/ReadVariableOp%Adam/weightv_18/v/Read/ReadVariableOp%Adam/weightu_19/v/Read/ReadVariableOp%Adam/weightv_19/v/Read/ReadVariableOp%Adam/weightu_20/v/Read/ReadVariableOp%Adam/weightv_20/v/Read/ReadVariableOp%Adam/weightu_21/v/Read/ReadVariableOp%Adam/weightv_21/v/Read/ReadVariableOp%Adam/weightu_22/v/Read/ReadVariableOp%Adam/weightv_22/v/Read/ReadVariableOp%Adam/weightu_23/v/Read/ReadVariableOp%Adam/weightv_23/v/Read/ReadVariableOp%Adam/weightu_24/v/Read/ReadVariableOp%Adam/weightv_24/v/Read/ReadVariableOp%Adam/weightu_25/v/Read/ReadVariableOp%Adam/weightv_25/v/Read/ReadVariableOp%Adam/weightu_26/v/Read/ReadVariableOp%Adam/weightv_26/v/Read/ReadVariableOp%Adam/weightu_27/v/Read/ReadVariableOp%Adam/weightv_27/v/Read/ReadVariableOp%Adam/weightu_28/v/Read/ReadVariableOp%Adam/weightv_28/v/Read/ReadVariableOp%Adam/weightu_29/v/Read/ReadVariableOp%Adam/weightv_29/v/Read/ReadVariableOp%Adam/weightu_30/v/Read/ReadVariableOp%Adam/weightv_30/v/Read/ReadVariableOp%Adam/weightu_31/v/Read/ReadVariableOp%Adam/weightv_31/v/Read/ReadVariableOp+Adam/conv2d_10/kernel/v/Read/ReadVariableOp)Adam/conv2d_10/bias/v/Read/ReadVariableOp+Adam/conv2d_11/kernel/v/Read/ReadVariableOp)Adam/conv2d_11/bias/v/Read/ReadVariableOp)Adam/dense_3/kernel/v/Read/ReadVariableOp'Adam/dense_3/bias/v/Read/ReadVariableOpConst*ñ
Tiné
æ2ã	*
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
 __inference__traced_save_4833065
!
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_9/kernelconv2d_9/bias	weightu_0	weightv_0	weightu_1	weightv_1	weightu_2	weightv_2	weightu_3	weightv_3	weightu_4	weightv_4	weightu_5	weightv_5	weightu_6	weightv_6	weightu_7	weightv_7	weightu_8	weightv_8	weightu_9	weightv_9
weightu_10
weightv_10
weightu_11
weightv_11
weightu_12
weightv_12
weightu_13
weightv_13
weightu_14
weightv_14
weightu_15
weightv_15
weightu_16
weightv_16
weightu_17
weightv_17
weightu_18
weightv_18
weightu_19
weightv_19
weightu_20
weightv_20
weightu_21
weightv_21
weightu_22
weightv_22
weightu_23
weightv_23
weightu_24
weightv_24
weightu_25
weightv_25
weightu_26
weightv_26
weightu_27
weightv_27
weightu_28
weightv_28
weightu_29
weightv_29
weightu_30
weightv_30
weightu_31
weightv_31conv2d_10/kernelconv2d_10/biasconv2d_11/kernelconv2d_11/biasdense_3/kerneldense_3/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/conv2d_9/kernel/mAdam/conv2d_9/bias/mAdam/weightu_0/mAdam/weightv_0/mAdam/weightu_1/mAdam/weightv_1/mAdam/weightu_2/mAdam/weightv_2/mAdam/weightu_3/mAdam/weightv_3/mAdam/weightu_4/mAdam/weightv_4/mAdam/weightu_5/mAdam/weightv_5/mAdam/weightu_6/mAdam/weightv_6/mAdam/weightu_7/mAdam/weightv_7/mAdam/weightu_8/mAdam/weightv_8/mAdam/weightu_9/mAdam/weightv_9/mAdam/weightu_10/mAdam/weightv_10/mAdam/weightu_11/mAdam/weightv_11/mAdam/weightu_12/mAdam/weightv_12/mAdam/weightu_13/mAdam/weightv_13/mAdam/weightu_14/mAdam/weightv_14/mAdam/weightu_15/mAdam/weightv_15/mAdam/weightu_16/mAdam/weightv_16/mAdam/weightu_17/mAdam/weightv_17/mAdam/weightu_18/mAdam/weightv_18/mAdam/weightu_19/mAdam/weightv_19/mAdam/weightu_20/mAdam/weightv_20/mAdam/weightu_21/mAdam/weightv_21/mAdam/weightu_22/mAdam/weightv_22/mAdam/weightu_23/mAdam/weightv_23/mAdam/weightu_24/mAdam/weightv_24/mAdam/weightu_25/mAdam/weightv_25/mAdam/weightu_26/mAdam/weightv_26/mAdam/weightu_27/mAdam/weightv_27/mAdam/weightu_28/mAdam/weightv_28/mAdam/weightu_29/mAdam/weightv_29/mAdam/weightu_30/mAdam/weightv_30/mAdam/weightu_31/mAdam/weightv_31/mAdam/conv2d_10/kernel/mAdam/conv2d_10/bias/mAdam/conv2d_11/kernel/mAdam/conv2d_11/bias/mAdam/dense_3/kernel/mAdam/dense_3/bias/mAdam/conv2d_9/kernel/vAdam/conv2d_9/bias/vAdam/weightu_0/vAdam/weightv_0/vAdam/weightu_1/vAdam/weightv_1/vAdam/weightu_2/vAdam/weightv_2/vAdam/weightu_3/vAdam/weightv_3/vAdam/weightu_4/vAdam/weightv_4/vAdam/weightu_5/vAdam/weightv_5/vAdam/weightu_6/vAdam/weightv_6/vAdam/weightu_7/vAdam/weightv_7/vAdam/weightu_8/vAdam/weightv_8/vAdam/weightu_9/vAdam/weightv_9/vAdam/weightu_10/vAdam/weightv_10/vAdam/weightu_11/vAdam/weightv_11/vAdam/weightu_12/vAdam/weightv_12/vAdam/weightu_13/vAdam/weightv_13/vAdam/weightu_14/vAdam/weightv_14/vAdam/weightu_15/vAdam/weightv_15/vAdam/weightu_16/vAdam/weightv_16/vAdam/weightu_17/vAdam/weightv_17/vAdam/weightu_18/vAdam/weightv_18/vAdam/weightu_19/vAdam/weightv_19/vAdam/weightu_20/vAdam/weightv_20/vAdam/weightu_21/vAdam/weightv_21/vAdam/weightu_22/vAdam/weightv_22/vAdam/weightu_23/vAdam/weightv_23/vAdam/weightu_24/vAdam/weightv_24/vAdam/weightu_25/vAdam/weightv_25/vAdam/weightu_26/vAdam/weightv_26/vAdam/weightu_27/vAdam/weightv_27/vAdam/weightu_28/vAdam/weightv_28/vAdam/weightu_29/vAdam/weightv_29/vAdam/weightu_30/vAdam/weightv_30/vAdam/weightu_31/vAdam/weightv_31/vAdam/conv2d_10/kernel/vAdam/conv2d_10/bias/vAdam/conv2d_11/kernel/vAdam/conv2d_11/bias/vAdam/dense_3/kernel/vAdam/dense_3/bias/v*ð
Tinè
å2â*
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
#__inference__traced_restore_4833750ÌÞ"
Ä

2__inference_low_rank_layer_2_layer_call_fn_4831906

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:	
	unknown_5:	
	unknown_6:	
	unknown_7:	
	unknown_8:	
	unknown_9:	

unknown_10:	

unknown_11:	

unknown_12:	

unknown_13:	

unknown_14:	

unknown_15:	

unknown_16:	

unknown_17:	

unknown_18:	

unknown_19:	

unknown_20:	

unknown_21:	

unknown_22:	

unknown_23:	

unknown_24:	

unknown_25:	

unknown_26:	

unknown_27:	

unknown_28:	

unknown_29:	

unknown_30:	

unknown_31:	

unknown_32:	

unknown_33:	

unknown_34:	

unknown_35:	

unknown_36:	

unknown_37:	

unknown_38:	

unknown_39:	

unknown_40:	

unknown_41:	

unknown_42:	

unknown_43:	

unknown_44:	

unknown_45:	

unknown_46:	

unknown_47:	

unknown_48:	

unknown_49:	

unknown_50:	

unknown_51:	

unknown_52:	

unknown_53:	

unknown_54:	

unknown_55:	

unknown_56:	

unknown_57:	

unknown_58:	

unknown_59:	

unknown_60:	

unknown_61:	

unknown_62:	
identity¢StatefulPartitionedCallÅ	
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60
unknown_61
unknown_62*L
TinE
C2A*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*b
_read_only_resource_inputsD
B@	
 !"#$%&'()*+,-./0123456789:;<=>?@*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_low_rank_layer_2_layer_call_and_return_conditional_losses_4829020t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*­
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
³
íA
I__inference_sequential_3_layer_call_and_return_conditional_losses_4831735

inputsA
'conv2d_9_conv2d_readvariableop_resource:6
(conv2d_9_biasadd_readvariableop_resource:A
2low_rank_layer_2_tensordot_readvariableop_resource:	C
4low_rank_layer_2_tensordot_readvariableop_1_resource:	C
4low_rank_layer_2_tensordot_1_readvariableop_resource:	E
6low_rank_layer_2_tensordot_1_readvariableop_1_resource:	C
4low_rank_layer_2_tensordot_2_readvariableop_resource:	E
6low_rank_layer_2_tensordot_2_readvariableop_1_resource:	C
4low_rank_layer_2_tensordot_3_readvariableop_resource:	E
6low_rank_layer_2_tensordot_3_readvariableop_1_resource:	C
4low_rank_layer_2_tensordot_4_readvariableop_resource:	E
6low_rank_layer_2_tensordot_4_readvariableop_1_resource:	C
4low_rank_layer_2_tensordot_5_readvariableop_resource:	E
6low_rank_layer_2_tensordot_5_readvariableop_1_resource:	C
4low_rank_layer_2_tensordot_6_readvariableop_resource:	E
6low_rank_layer_2_tensordot_6_readvariableop_1_resource:	C
4low_rank_layer_2_tensordot_7_readvariableop_resource:	E
6low_rank_layer_2_tensordot_7_readvariableop_1_resource:	C
4low_rank_layer_2_tensordot_8_readvariableop_resource:	E
6low_rank_layer_2_tensordot_8_readvariableop_1_resource:	C
4low_rank_layer_2_tensordot_9_readvariableop_resource:	E
6low_rank_layer_2_tensordot_9_readvariableop_1_resource:	D
5low_rank_layer_2_tensordot_10_readvariableop_resource:	F
7low_rank_layer_2_tensordot_10_readvariableop_1_resource:	D
5low_rank_layer_2_tensordot_11_readvariableop_resource:	F
7low_rank_layer_2_tensordot_11_readvariableop_1_resource:	D
5low_rank_layer_2_tensordot_12_readvariableop_resource:	F
7low_rank_layer_2_tensordot_12_readvariableop_1_resource:	D
5low_rank_layer_2_tensordot_13_readvariableop_resource:	F
7low_rank_layer_2_tensordot_13_readvariableop_1_resource:	D
5low_rank_layer_2_tensordot_14_readvariableop_resource:	F
7low_rank_layer_2_tensordot_14_readvariableop_1_resource:	D
5low_rank_layer_2_tensordot_15_readvariableop_resource:	F
7low_rank_layer_2_tensordot_15_readvariableop_1_resource:	D
5low_rank_layer_2_tensordot_16_readvariableop_resource:	F
7low_rank_layer_2_tensordot_16_readvariableop_1_resource:	D
5low_rank_layer_2_tensordot_17_readvariableop_resource:	F
7low_rank_layer_2_tensordot_17_readvariableop_1_resource:	D
5low_rank_layer_2_tensordot_18_readvariableop_resource:	F
7low_rank_layer_2_tensordot_18_readvariableop_1_resource:	D
5low_rank_layer_2_tensordot_19_readvariableop_resource:	F
7low_rank_layer_2_tensordot_19_readvariableop_1_resource:	D
5low_rank_layer_2_tensordot_20_readvariableop_resource:	F
7low_rank_layer_2_tensordot_20_readvariableop_1_resource:	D
5low_rank_layer_2_tensordot_21_readvariableop_resource:	F
7low_rank_layer_2_tensordot_21_readvariableop_1_resource:	D
5low_rank_layer_2_tensordot_22_readvariableop_resource:	F
7low_rank_layer_2_tensordot_22_readvariableop_1_resource:	D
5low_rank_layer_2_tensordot_23_readvariableop_resource:	F
7low_rank_layer_2_tensordot_23_readvariableop_1_resource:	D
5low_rank_layer_2_tensordot_24_readvariableop_resource:	F
7low_rank_layer_2_tensordot_24_readvariableop_1_resource:	D
5low_rank_layer_2_tensordot_25_readvariableop_resource:	F
7low_rank_layer_2_tensordot_25_readvariableop_1_resource:	D
5low_rank_layer_2_tensordot_26_readvariableop_resource:	F
7low_rank_layer_2_tensordot_26_readvariableop_1_resource:	D
5low_rank_layer_2_tensordot_27_readvariableop_resource:	F
7low_rank_layer_2_tensordot_27_readvariableop_1_resource:	D
5low_rank_layer_2_tensordot_28_readvariableop_resource:	F
7low_rank_layer_2_tensordot_28_readvariableop_1_resource:	D
5low_rank_layer_2_tensordot_29_readvariableop_resource:	F
7low_rank_layer_2_tensordot_29_readvariableop_1_resource:	D
5low_rank_layer_2_tensordot_30_readvariableop_resource:	F
7low_rank_layer_2_tensordot_30_readvariableop_1_resource:	D
5low_rank_layer_2_tensordot_31_readvariableop_resource:	F
7low_rank_layer_2_tensordot_31_readvariableop_1_resource:	B
(conv2d_10_conv2d_readvariableop_resource:7
)conv2d_10_biasadd_readvariableop_resource:B
(conv2d_11_conv2d_readvariableop_resource:7
)conv2d_11_biasadd_readvariableop_resource:9
&dense_3_matmul_readvariableop_resource:	
5
'dense_3_biasadd_readvariableop_resource:

identity¢ conv2d_10/BiasAdd/ReadVariableOp¢conv2d_10/Conv2D/ReadVariableOp¢ conv2d_11/BiasAdd/ReadVariableOp¢conv2d_11/Conv2D/ReadVariableOp¢conv2d_9/BiasAdd/ReadVariableOp¢conv2d_9/Conv2D/ReadVariableOp¢dense_3/BiasAdd/ReadVariableOp¢dense_3/MatMul/ReadVariableOp¢)low_rank_layer_2/Tensordot/ReadVariableOp¢+low_rank_layer_2/Tensordot/ReadVariableOp_1¢+low_rank_layer_2/Tensordot_1/ReadVariableOp¢-low_rank_layer_2/Tensordot_1/ReadVariableOp_1¢,low_rank_layer_2/Tensordot_10/ReadVariableOp¢.low_rank_layer_2/Tensordot_10/ReadVariableOp_1¢,low_rank_layer_2/Tensordot_11/ReadVariableOp¢.low_rank_layer_2/Tensordot_11/ReadVariableOp_1¢,low_rank_layer_2/Tensordot_12/ReadVariableOp¢.low_rank_layer_2/Tensordot_12/ReadVariableOp_1¢,low_rank_layer_2/Tensordot_13/ReadVariableOp¢.low_rank_layer_2/Tensordot_13/ReadVariableOp_1¢,low_rank_layer_2/Tensordot_14/ReadVariableOp¢.low_rank_layer_2/Tensordot_14/ReadVariableOp_1¢,low_rank_layer_2/Tensordot_15/ReadVariableOp¢.low_rank_layer_2/Tensordot_15/ReadVariableOp_1¢,low_rank_layer_2/Tensordot_16/ReadVariableOp¢.low_rank_layer_2/Tensordot_16/ReadVariableOp_1¢,low_rank_layer_2/Tensordot_17/ReadVariableOp¢.low_rank_layer_2/Tensordot_17/ReadVariableOp_1¢,low_rank_layer_2/Tensordot_18/ReadVariableOp¢.low_rank_layer_2/Tensordot_18/ReadVariableOp_1¢,low_rank_layer_2/Tensordot_19/ReadVariableOp¢.low_rank_layer_2/Tensordot_19/ReadVariableOp_1¢+low_rank_layer_2/Tensordot_2/ReadVariableOp¢-low_rank_layer_2/Tensordot_2/ReadVariableOp_1¢,low_rank_layer_2/Tensordot_20/ReadVariableOp¢.low_rank_layer_2/Tensordot_20/ReadVariableOp_1¢,low_rank_layer_2/Tensordot_21/ReadVariableOp¢.low_rank_layer_2/Tensordot_21/ReadVariableOp_1¢,low_rank_layer_2/Tensordot_22/ReadVariableOp¢.low_rank_layer_2/Tensordot_22/ReadVariableOp_1¢,low_rank_layer_2/Tensordot_23/ReadVariableOp¢.low_rank_layer_2/Tensordot_23/ReadVariableOp_1¢,low_rank_layer_2/Tensordot_24/ReadVariableOp¢.low_rank_layer_2/Tensordot_24/ReadVariableOp_1¢,low_rank_layer_2/Tensordot_25/ReadVariableOp¢.low_rank_layer_2/Tensordot_25/ReadVariableOp_1¢,low_rank_layer_2/Tensordot_26/ReadVariableOp¢.low_rank_layer_2/Tensordot_26/ReadVariableOp_1¢,low_rank_layer_2/Tensordot_27/ReadVariableOp¢.low_rank_layer_2/Tensordot_27/ReadVariableOp_1¢,low_rank_layer_2/Tensordot_28/ReadVariableOp¢.low_rank_layer_2/Tensordot_28/ReadVariableOp_1¢,low_rank_layer_2/Tensordot_29/ReadVariableOp¢.low_rank_layer_2/Tensordot_29/ReadVariableOp_1¢+low_rank_layer_2/Tensordot_3/ReadVariableOp¢-low_rank_layer_2/Tensordot_3/ReadVariableOp_1¢,low_rank_layer_2/Tensordot_30/ReadVariableOp¢.low_rank_layer_2/Tensordot_30/ReadVariableOp_1¢,low_rank_layer_2/Tensordot_31/ReadVariableOp¢.low_rank_layer_2/Tensordot_31/ReadVariableOp_1¢+low_rank_layer_2/Tensordot_4/ReadVariableOp¢-low_rank_layer_2/Tensordot_4/ReadVariableOp_1¢+low_rank_layer_2/Tensordot_5/ReadVariableOp¢-low_rank_layer_2/Tensordot_5/ReadVariableOp_1¢+low_rank_layer_2/Tensordot_6/ReadVariableOp¢-low_rank_layer_2/Tensordot_6/ReadVariableOp_1¢+low_rank_layer_2/Tensordot_7/ReadVariableOp¢-low_rank_layer_2/Tensordot_7/ReadVariableOp_1¢+low_rank_layer_2/Tensordot_8/ReadVariableOp¢-low_rank_layer_2/Tensordot_8/ReadVariableOp_1¢+low_rank_layer_2/Tensordot_9/ReadVariableOp¢-low_rank_layer_2/Tensordot_9/ReadVariableOp_1
conv2d_9/Conv2D/ReadVariableOpReadVariableOp'conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0¬
conv2d_9/Conv2DConv2Dinputs&conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

conv2d_9/BiasAdd/ReadVariableOpReadVariableOp(conv2d_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_9/BiasAddBiasAddconv2d_9/Conv2D:output:0'conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
conv2d_9/ReluReluconv2d_9/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
reshape_4/ShapeShapeconv2d_9/Relu:activations:0*
T0*
_output_shapes
:g
reshape_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
reshape_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
reshape_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
reshape_4/strided_sliceStridedSlicereshape_4/Shape:output:0&reshape_4/strided_slice/stack:output:0(reshape_4/strided_slice/stack_1:output:0(reshape_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
reshape_4/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :[
reshape_4/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :·
reshape_4/Reshape/shapePack reshape_4/strided_slice:output:0"reshape_4/Reshape/shape/1:output:0"reshape_4/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:
reshape_4/ReshapeReshapeconv2d_9/Relu:activations:0 reshape_4/Reshape/shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)low_rank_layer_2/Tensordot/ReadVariableOpReadVariableOp2low_rank_layer_2_tensordot_readvariableop_resource*
_output_shapes	
:*
dtype0
+low_rank_layer_2/Tensordot/ReadVariableOp_1ReadVariableOp4low_rank_layer_2_tensordot_readvariableop_1_resource*
_output_shapes	
:*
dtype0y
(low_rank_layer_2/Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     ½
"low_rank_layer_2/Tensordot/ReshapeReshape1low_rank_layer_2/Tensordot/ReadVariableOp:value:01low_rank_layer_2/Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	{
*low_rank_layer_2/Tensordot/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  Ã
$low_rank_layer_2/Tensordot/Reshape_1Reshape3low_rank_layer_2/Tensordot/ReadVariableOp_1:value:03low_rank_layer_2/Tensordot/Reshape_1/shape:output:0*
T0*
_output_shapes
:	²
!low_rank_layer_2/Tensordot/MatMulMatMul+low_rank_layer_2/Tensordot/Reshape:output:0-low_rank_layer_2/Tensordot/Reshape_1:output:0*
T0* 
_output_shapes
:

+low_rank_layer_2/Tensordot_1/ReadVariableOpReadVariableOp4low_rank_layer_2_tensordot_1_readvariableop_resource*
_output_shapes	
:*
dtype0¡
-low_rank_layer_2/Tensordot_1/ReadVariableOp_1ReadVariableOp6low_rank_layer_2_tensordot_1_readvariableop_1_resource*
_output_shapes	
:*
dtype0{
*low_rank_layer_2/Tensordot_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Ã
$low_rank_layer_2/Tensordot_1/ReshapeReshape3low_rank_layer_2/Tensordot_1/ReadVariableOp:value:03low_rank_layer_2/Tensordot_1/Reshape/shape:output:0*
T0*
_output_shapes
:	}
,low_rank_layer_2/Tensordot_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  É
&low_rank_layer_2/Tensordot_1/Reshape_1Reshape5low_rank_layer_2/Tensordot_1/ReadVariableOp_1:value:05low_rank_layer_2/Tensordot_1/Reshape_1/shape:output:0*
T0*
_output_shapes
:	¸
#low_rank_layer_2/Tensordot_1/MatMulMatMul-low_rank_layer_2/Tensordot_1/Reshape:output:0/low_rank_layer_2/Tensordot_1/Reshape_1:output:0*
T0* 
_output_shapes
:
¤
low_rank_layer_2/addAddV2+low_rank_layer_2/Tensordot/MatMul:product:0-low_rank_layer_2/Tensordot_1/MatMul:product:0*
T0* 
_output_shapes
:

+low_rank_layer_2/Tensordot_2/ReadVariableOpReadVariableOp4low_rank_layer_2_tensordot_2_readvariableop_resource*
_output_shapes	
:*
dtype0¡
-low_rank_layer_2/Tensordot_2/ReadVariableOp_1ReadVariableOp6low_rank_layer_2_tensordot_2_readvariableop_1_resource*
_output_shapes	
:*
dtype0{
*low_rank_layer_2/Tensordot_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Ã
$low_rank_layer_2/Tensordot_2/ReshapeReshape3low_rank_layer_2/Tensordot_2/ReadVariableOp:value:03low_rank_layer_2/Tensordot_2/Reshape/shape:output:0*
T0*
_output_shapes
:	}
,low_rank_layer_2/Tensordot_2/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  É
&low_rank_layer_2/Tensordot_2/Reshape_1Reshape5low_rank_layer_2/Tensordot_2/ReadVariableOp_1:value:05low_rank_layer_2/Tensordot_2/Reshape_1/shape:output:0*
T0*
_output_shapes
:	¸
#low_rank_layer_2/Tensordot_2/MatMulMatMul-low_rank_layer_2/Tensordot_2/Reshape:output:0/low_rank_layer_2/Tensordot_2/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_1AddV2low_rank_layer_2/add:z:0-low_rank_layer_2/Tensordot_2/MatMul:product:0*
T0* 
_output_shapes
:

+low_rank_layer_2/Tensordot_3/ReadVariableOpReadVariableOp4low_rank_layer_2_tensordot_3_readvariableop_resource*
_output_shapes	
:*
dtype0¡
-low_rank_layer_2/Tensordot_3/ReadVariableOp_1ReadVariableOp6low_rank_layer_2_tensordot_3_readvariableop_1_resource*
_output_shapes	
:*
dtype0{
*low_rank_layer_2/Tensordot_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Ã
$low_rank_layer_2/Tensordot_3/ReshapeReshape3low_rank_layer_2/Tensordot_3/ReadVariableOp:value:03low_rank_layer_2/Tensordot_3/Reshape/shape:output:0*
T0*
_output_shapes
:	}
,low_rank_layer_2/Tensordot_3/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  É
&low_rank_layer_2/Tensordot_3/Reshape_1Reshape5low_rank_layer_2/Tensordot_3/ReadVariableOp_1:value:05low_rank_layer_2/Tensordot_3/Reshape_1/shape:output:0*
T0*
_output_shapes
:	¸
#low_rank_layer_2/Tensordot_3/MatMulMatMul-low_rank_layer_2/Tensordot_3/Reshape:output:0/low_rank_layer_2/Tensordot_3/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_2AddV2low_rank_layer_2/add_1:z:0-low_rank_layer_2/Tensordot_3/MatMul:product:0*
T0* 
_output_shapes
:

+low_rank_layer_2/Tensordot_4/ReadVariableOpReadVariableOp4low_rank_layer_2_tensordot_4_readvariableop_resource*
_output_shapes	
:*
dtype0¡
-low_rank_layer_2/Tensordot_4/ReadVariableOp_1ReadVariableOp6low_rank_layer_2_tensordot_4_readvariableop_1_resource*
_output_shapes	
:*
dtype0{
*low_rank_layer_2/Tensordot_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Ã
$low_rank_layer_2/Tensordot_4/ReshapeReshape3low_rank_layer_2/Tensordot_4/ReadVariableOp:value:03low_rank_layer_2/Tensordot_4/Reshape/shape:output:0*
T0*
_output_shapes
:	}
,low_rank_layer_2/Tensordot_4/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  É
&low_rank_layer_2/Tensordot_4/Reshape_1Reshape5low_rank_layer_2/Tensordot_4/ReadVariableOp_1:value:05low_rank_layer_2/Tensordot_4/Reshape_1/shape:output:0*
T0*
_output_shapes
:	¸
#low_rank_layer_2/Tensordot_4/MatMulMatMul-low_rank_layer_2/Tensordot_4/Reshape:output:0/low_rank_layer_2/Tensordot_4/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_3AddV2low_rank_layer_2/add_2:z:0-low_rank_layer_2/Tensordot_4/MatMul:product:0*
T0* 
_output_shapes
:

+low_rank_layer_2/Tensordot_5/ReadVariableOpReadVariableOp4low_rank_layer_2_tensordot_5_readvariableop_resource*
_output_shapes	
:*
dtype0¡
-low_rank_layer_2/Tensordot_5/ReadVariableOp_1ReadVariableOp6low_rank_layer_2_tensordot_5_readvariableop_1_resource*
_output_shapes	
:*
dtype0{
*low_rank_layer_2/Tensordot_5/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Ã
$low_rank_layer_2/Tensordot_5/ReshapeReshape3low_rank_layer_2/Tensordot_5/ReadVariableOp:value:03low_rank_layer_2/Tensordot_5/Reshape/shape:output:0*
T0*
_output_shapes
:	}
,low_rank_layer_2/Tensordot_5/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  É
&low_rank_layer_2/Tensordot_5/Reshape_1Reshape5low_rank_layer_2/Tensordot_5/ReadVariableOp_1:value:05low_rank_layer_2/Tensordot_5/Reshape_1/shape:output:0*
T0*
_output_shapes
:	¸
#low_rank_layer_2/Tensordot_5/MatMulMatMul-low_rank_layer_2/Tensordot_5/Reshape:output:0/low_rank_layer_2/Tensordot_5/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_4AddV2low_rank_layer_2/add_3:z:0-low_rank_layer_2/Tensordot_5/MatMul:product:0*
T0* 
_output_shapes
:

+low_rank_layer_2/Tensordot_6/ReadVariableOpReadVariableOp4low_rank_layer_2_tensordot_6_readvariableop_resource*
_output_shapes	
:*
dtype0¡
-low_rank_layer_2/Tensordot_6/ReadVariableOp_1ReadVariableOp6low_rank_layer_2_tensordot_6_readvariableop_1_resource*
_output_shapes	
:*
dtype0{
*low_rank_layer_2/Tensordot_6/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Ã
$low_rank_layer_2/Tensordot_6/ReshapeReshape3low_rank_layer_2/Tensordot_6/ReadVariableOp:value:03low_rank_layer_2/Tensordot_6/Reshape/shape:output:0*
T0*
_output_shapes
:	}
,low_rank_layer_2/Tensordot_6/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  É
&low_rank_layer_2/Tensordot_6/Reshape_1Reshape5low_rank_layer_2/Tensordot_6/ReadVariableOp_1:value:05low_rank_layer_2/Tensordot_6/Reshape_1/shape:output:0*
T0*
_output_shapes
:	¸
#low_rank_layer_2/Tensordot_6/MatMulMatMul-low_rank_layer_2/Tensordot_6/Reshape:output:0/low_rank_layer_2/Tensordot_6/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_5AddV2low_rank_layer_2/add_4:z:0-low_rank_layer_2/Tensordot_6/MatMul:product:0*
T0* 
_output_shapes
:

+low_rank_layer_2/Tensordot_7/ReadVariableOpReadVariableOp4low_rank_layer_2_tensordot_7_readvariableop_resource*
_output_shapes	
:*
dtype0¡
-low_rank_layer_2/Tensordot_7/ReadVariableOp_1ReadVariableOp6low_rank_layer_2_tensordot_7_readvariableop_1_resource*
_output_shapes	
:*
dtype0{
*low_rank_layer_2/Tensordot_7/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Ã
$low_rank_layer_2/Tensordot_7/ReshapeReshape3low_rank_layer_2/Tensordot_7/ReadVariableOp:value:03low_rank_layer_2/Tensordot_7/Reshape/shape:output:0*
T0*
_output_shapes
:	}
,low_rank_layer_2/Tensordot_7/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  É
&low_rank_layer_2/Tensordot_7/Reshape_1Reshape5low_rank_layer_2/Tensordot_7/ReadVariableOp_1:value:05low_rank_layer_2/Tensordot_7/Reshape_1/shape:output:0*
T0*
_output_shapes
:	¸
#low_rank_layer_2/Tensordot_7/MatMulMatMul-low_rank_layer_2/Tensordot_7/Reshape:output:0/low_rank_layer_2/Tensordot_7/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_6AddV2low_rank_layer_2/add_5:z:0-low_rank_layer_2/Tensordot_7/MatMul:product:0*
T0* 
_output_shapes
:

+low_rank_layer_2/Tensordot_8/ReadVariableOpReadVariableOp4low_rank_layer_2_tensordot_8_readvariableop_resource*
_output_shapes	
:*
dtype0¡
-low_rank_layer_2/Tensordot_8/ReadVariableOp_1ReadVariableOp6low_rank_layer_2_tensordot_8_readvariableop_1_resource*
_output_shapes	
:*
dtype0{
*low_rank_layer_2/Tensordot_8/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Ã
$low_rank_layer_2/Tensordot_8/ReshapeReshape3low_rank_layer_2/Tensordot_8/ReadVariableOp:value:03low_rank_layer_2/Tensordot_8/Reshape/shape:output:0*
T0*
_output_shapes
:	}
,low_rank_layer_2/Tensordot_8/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  É
&low_rank_layer_2/Tensordot_8/Reshape_1Reshape5low_rank_layer_2/Tensordot_8/ReadVariableOp_1:value:05low_rank_layer_2/Tensordot_8/Reshape_1/shape:output:0*
T0*
_output_shapes
:	¸
#low_rank_layer_2/Tensordot_8/MatMulMatMul-low_rank_layer_2/Tensordot_8/Reshape:output:0/low_rank_layer_2/Tensordot_8/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_7AddV2low_rank_layer_2/add_6:z:0-low_rank_layer_2/Tensordot_8/MatMul:product:0*
T0* 
_output_shapes
:

+low_rank_layer_2/Tensordot_9/ReadVariableOpReadVariableOp4low_rank_layer_2_tensordot_9_readvariableop_resource*
_output_shapes	
:*
dtype0¡
-low_rank_layer_2/Tensordot_9/ReadVariableOp_1ReadVariableOp6low_rank_layer_2_tensordot_9_readvariableop_1_resource*
_output_shapes	
:*
dtype0{
*low_rank_layer_2/Tensordot_9/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Ã
$low_rank_layer_2/Tensordot_9/ReshapeReshape3low_rank_layer_2/Tensordot_9/ReadVariableOp:value:03low_rank_layer_2/Tensordot_9/Reshape/shape:output:0*
T0*
_output_shapes
:	}
,low_rank_layer_2/Tensordot_9/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  É
&low_rank_layer_2/Tensordot_9/Reshape_1Reshape5low_rank_layer_2/Tensordot_9/ReadVariableOp_1:value:05low_rank_layer_2/Tensordot_9/Reshape_1/shape:output:0*
T0*
_output_shapes
:	¸
#low_rank_layer_2/Tensordot_9/MatMulMatMul-low_rank_layer_2/Tensordot_9/Reshape:output:0/low_rank_layer_2/Tensordot_9/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_8AddV2low_rank_layer_2/add_7:z:0-low_rank_layer_2/Tensordot_9/MatMul:product:0*
T0* 
_output_shapes
:

,low_rank_layer_2/Tensordot_10/ReadVariableOpReadVariableOp5low_rank_layer_2_tensordot_10_readvariableop_resource*
_output_shapes	
:*
dtype0£
.low_rank_layer_2/Tensordot_10/ReadVariableOp_1ReadVariableOp7low_rank_layer_2_tensordot_10_readvariableop_1_resource*
_output_shapes	
:*
dtype0|
+low_rank_layer_2/Tensordot_10/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Æ
%low_rank_layer_2/Tensordot_10/ReshapeReshape4low_rank_layer_2/Tensordot_10/ReadVariableOp:value:04low_rank_layer_2/Tensordot_10/Reshape/shape:output:0*
T0*
_output_shapes
:	~
-low_rank_layer_2/Tensordot_10/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  Ì
'low_rank_layer_2/Tensordot_10/Reshape_1Reshape6low_rank_layer_2/Tensordot_10/ReadVariableOp_1:value:06low_rank_layer_2/Tensordot_10/Reshape_1/shape:output:0*
T0*
_output_shapes
:	»
$low_rank_layer_2/Tensordot_10/MatMulMatMul.low_rank_layer_2/Tensordot_10/Reshape:output:00low_rank_layer_2/Tensordot_10/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_9AddV2low_rank_layer_2/add_8:z:0.low_rank_layer_2/Tensordot_10/MatMul:product:0*
T0* 
_output_shapes
:

,low_rank_layer_2/Tensordot_11/ReadVariableOpReadVariableOp5low_rank_layer_2_tensordot_11_readvariableop_resource*
_output_shapes	
:*
dtype0£
.low_rank_layer_2/Tensordot_11/ReadVariableOp_1ReadVariableOp7low_rank_layer_2_tensordot_11_readvariableop_1_resource*
_output_shapes	
:*
dtype0|
+low_rank_layer_2/Tensordot_11/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Æ
%low_rank_layer_2/Tensordot_11/ReshapeReshape4low_rank_layer_2/Tensordot_11/ReadVariableOp:value:04low_rank_layer_2/Tensordot_11/Reshape/shape:output:0*
T0*
_output_shapes
:	~
-low_rank_layer_2/Tensordot_11/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  Ì
'low_rank_layer_2/Tensordot_11/Reshape_1Reshape6low_rank_layer_2/Tensordot_11/ReadVariableOp_1:value:06low_rank_layer_2/Tensordot_11/Reshape_1/shape:output:0*
T0*
_output_shapes
:	»
$low_rank_layer_2/Tensordot_11/MatMulMatMul.low_rank_layer_2/Tensordot_11/Reshape:output:00low_rank_layer_2/Tensordot_11/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_10AddV2low_rank_layer_2/add_9:z:0.low_rank_layer_2/Tensordot_11/MatMul:product:0*
T0* 
_output_shapes
:

,low_rank_layer_2/Tensordot_12/ReadVariableOpReadVariableOp5low_rank_layer_2_tensordot_12_readvariableop_resource*
_output_shapes	
:*
dtype0£
.low_rank_layer_2/Tensordot_12/ReadVariableOp_1ReadVariableOp7low_rank_layer_2_tensordot_12_readvariableop_1_resource*
_output_shapes	
:*
dtype0|
+low_rank_layer_2/Tensordot_12/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Æ
%low_rank_layer_2/Tensordot_12/ReshapeReshape4low_rank_layer_2/Tensordot_12/ReadVariableOp:value:04low_rank_layer_2/Tensordot_12/Reshape/shape:output:0*
T0*
_output_shapes
:	~
-low_rank_layer_2/Tensordot_12/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  Ì
'low_rank_layer_2/Tensordot_12/Reshape_1Reshape6low_rank_layer_2/Tensordot_12/ReadVariableOp_1:value:06low_rank_layer_2/Tensordot_12/Reshape_1/shape:output:0*
T0*
_output_shapes
:	»
$low_rank_layer_2/Tensordot_12/MatMulMatMul.low_rank_layer_2/Tensordot_12/Reshape:output:00low_rank_layer_2/Tensordot_12/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_11AddV2low_rank_layer_2/add_10:z:0.low_rank_layer_2/Tensordot_12/MatMul:product:0*
T0* 
_output_shapes
:

,low_rank_layer_2/Tensordot_13/ReadVariableOpReadVariableOp5low_rank_layer_2_tensordot_13_readvariableop_resource*
_output_shapes	
:*
dtype0£
.low_rank_layer_2/Tensordot_13/ReadVariableOp_1ReadVariableOp7low_rank_layer_2_tensordot_13_readvariableop_1_resource*
_output_shapes	
:*
dtype0|
+low_rank_layer_2/Tensordot_13/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Æ
%low_rank_layer_2/Tensordot_13/ReshapeReshape4low_rank_layer_2/Tensordot_13/ReadVariableOp:value:04low_rank_layer_2/Tensordot_13/Reshape/shape:output:0*
T0*
_output_shapes
:	~
-low_rank_layer_2/Tensordot_13/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  Ì
'low_rank_layer_2/Tensordot_13/Reshape_1Reshape6low_rank_layer_2/Tensordot_13/ReadVariableOp_1:value:06low_rank_layer_2/Tensordot_13/Reshape_1/shape:output:0*
T0*
_output_shapes
:	»
$low_rank_layer_2/Tensordot_13/MatMulMatMul.low_rank_layer_2/Tensordot_13/Reshape:output:00low_rank_layer_2/Tensordot_13/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_12AddV2low_rank_layer_2/add_11:z:0.low_rank_layer_2/Tensordot_13/MatMul:product:0*
T0* 
_output_shapes
:

,low_rank_layer_2/Tensordot_14/ReadVariableOpReadVariableOp5low_rank_layer_2_tensordot_14_readvariableop_resource*
_output_shapes	
:*
dtype0£
.low_rank_layer_2/Tensordot_14/ReadVariableOp_1ReadVariableOp7low_rank_layer_2_tensordot_14_readvariableop_1_resource*
_output_shapes	
:*
dtype0|
+low_rank_layer_2/Tensordot_14/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Æ
%low_rank_layer_2/Tensordot_14/ReshapeReshape4low_rank_layer_2/Tensordot_14/ReadVariableOp:value:04low_rank_layer_2/Tensordot_14/Reshape/shape:output:0*
T0*
_output_shapes
:	~
-low_rank_layer_2/Tensordot_14/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  Ì
'low_rank_layer_2/Tensordot_14/Reshape_1Reshape6low_rank_layer_2/Tensordot_14/ReadVariableOp_1:value:06low_rank_layer_2/Tensordot_14/Reshape_1/shape:output:0*
T0*
_output_shapes
:	»
$low_rank_layer_2/Tensordot_14/MatMulMatMul.low_rank_layer_2/Tensordot_14/Reshape:output:00low_rank_layer_2/Tensordot_14/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_13AddV2low_rank_layer_2/add_12:z:0.low_rank_layer_2/Tensordot_14/MatMul:product:0*
T0* 
_output_shapes
:

,low_rank_layer_2/Tensordot_15/ReadVariableOpReadVariableOp5low_rank_layer_2_tensordot_15_readvariableop_resource*
_output_shapes	
:*
dtype0£
.low_rank_layer_2/Tensordot_15/ReadVariableOp_1ReadVariableOp7low_rank_layer_2_tensordot_15_readvariableop_1_resource*
_output_shapes	
:*
dtype0|
+low_rank_layer_2/Tensordot_15/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Æ
%low_rank_layer_2/Tensordot_15/ReshapeReshape4low_rank_layer_2/Tensordot_15/ReadVariableOp:value:04low_rank_layer_2/Tensordot_15/Reshape/shape:output:0*
T0*
_output_shapes
:	~
-low_rank_layer_2/Tensordot_15/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  Ì
'low_rank_layer_2/Tensordot_15/Reshape_1Reshape6low_rank_layer_2/Tensordot_15/ReadVariableOp_1:value:06low_rank_layer_2/Tensordot_15/Reshape_1/shape:output:0*
T0*
_output_shapes
:	»
$low_rank_layer_2/Tensordot_15/MatMulMatMul.low_rank_layer_2/Tensordot_15/Reshape:output:00low_rank_layer_2/Tensordot_15/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_14AddV2low_rank_layer_2/add_13:z:0.low_rank_layer_2/Tensordot_15/MatMul:product:0*
T0* 
_output_shapes
:

,low_rank_layer_2/Tensordot_16/ReadVariableOpReadVariableOp5low_rank_layer_2_tensordot_16_readvariableop_resource*
_output_shapes	
:*
dtype0£
.low_rank_layer_2/Tensordot_16/ReadVariableOp_1ReadVariableOp7low_rank_layer_2_tensordot_16_readvariableop_1_resource*
_output_shapes	
:*
dtype0|
+low_rank_layer_2/Tensordot_16/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Æ
%low_rank_layer_2/Tensordot_16/ReshapeReshape4low_rank_layer_2/Tensordot_16/ReadVariableOp:value:04low_rank_layer_2/Tensordot_16/Reshape/shape:output:0*
T0*
_output_shapes
:	~
-low_rank_layer_2/Tensordot_16/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  Ì
'low_rank_layer_2/Tensordot_16/Reshape_1Reshape6low_rank_layer_2/Tensordot_16/ReadVariableOp_1:value:06low_rank_layer_2/Tensordot_16/Reshape_1/shape:output:0*
T0*
_output_shapes
:	»
$low_rank_layer_2/Tensordot_16/MatMulMatMul.low_rank_layer_2/Tensordot_16/Reshape:output:00low_rank_layer_2/Tensordot_16/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_15AddV2low_rank_layer_2/add_14:z:0.low_rank_layer_2/Tensordot_16/MatMul:product:0*
T0* 
_output_shapes
:

,low_rank_layer_2/Tensordot_17/ReadVariableOpReadVariableOp5low_rank_layer_2_tensordot_17_readvariableop_resource*
_output_shapes	
:*
dtype0£
.low_rank_layer_2/Tensordot_17/ReadVariableOp_1ReadVariableOp7low_rank_layer_2_tensordot_17_readvariableop_1_resource*
_output_shapes	
:*
dtype0|
+low_rank_layer_2/Tensordot_17/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Æ
%low_rank_layer_2/Tensordot_17/ReshapeReshape4low_rank_layer_2/Tensordot_17/ReadVariableOp:value:04low_rank_layer_2/Tensordot_17/Reshape/shape:output:0*
T0*
_output_shapes
:	~
-low_rank_layer_2/Tensordot_17/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  Ì
'low_rank_layer_2/Tensordot_17/Reshape_1Reshape6low_rank_layer_2/Tensordot_17/ReadVariableOp_1:value:06low_rank_layer_2/Tensordot_17/Reshape_1/shape:output:0*
T0*
_output_shapes
:	»
$low_rank_layer_2/Tensordot_17/MatMulMatMul.low_rank_layer_2/Tensordot_17/Reshape:output:00low_rank_layer_2/Tensordot_17/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_16AddV2low_rank_layer_2/add_15:z:0.low_rank_layer_2/Tensordot_17/MatMul:product:0*
T0* 
_output_shapes
:

,low_rank_layer_2/Tensordot_18/ReadVariableOpReadVariableOp5low_rank_layer_2_tensordot_18_readvariableop_resource*
_output_shapes	
:*
dtype0£
.low_rank_layer_2/Tensordot_18/ReadVariableOp_1ReadVariableOp7low_rank_layer_2_tensordot_18_readvariableop_1_resource*
_output_shapes	
:*
dtype0|
+low_rank_layer_2/Tensordot_18/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Æ
%low_rank_layer_2/Tensordot_18/ReshapeReshape4low_rank_layer_2/Tensordot_18/ReadVariableOp:value:04low_rank_layer_2/Tensordot_18/Reshape/shape:output:0*
T0*
_output_shapes
:	~
-low_rank_layer_2/Tensordot_18/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  Ì
'low_rank_layer_2/Tensordot_18/Reshape_1Reshape6low_rank_layer_2/Tensordot_18/ReadVariableOp_1:value:06low_rank_layer_2/Tensordot_18/Reshape_1/shape:output:0*
T0*
_output_shapes
:	»
$low_rank_layer_2/Tensordot_18/MatMulMatMul.low_rank_layer_2/Tensordot_18/Reshape:output:00low_rank_layer_2/Tensordot_18/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_17AddV2low_rank_layer_2/add_16:z:0.low_rank_layer_2/Tensordot_18/MatMul:product:0*
T0* 
_output_shapes
:

,low_rank_layer_2/Tensordot_19/ReadVariableOpReadVariableOp5low_rank_layer_2_tensordot_19_readvariableop_resource*
_output_shapes	
:*
dtype0£
.low_rank_layer_2/Tensordot_19/ReadVariableOp_1ReadVariableOp7low_rank_layer_2_tensordot_19_readvariableop_1_resource*
_output_shapes	
:*
dtype0|
+low_rank_layer_2/Tensordot_19/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Æ
%low_rank_layer_2/Tensordot_19/ReshapeReshape4low_rank_layer_2/Tensordot_19/ReadVariableOp:value:04low_rank_layer_2/Tensordot_19/Reshape/shape:output:0*
T0*
_output_shapes
:	~
-low_rank_layer_2/Tensordot_19/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  Ì
'low_rank_layer_2/Tensordot_19/Reshape_1Reshape6low_rank_layer_2/Tensordot_19/ReadVariableOp_1:value:06low_rank_layer_2/Tensordot_19/Reshape_1/shape:output:0*
T0*
_output_shapes
:	»
$low_rank_layer_2/Tensordot_19/MatMulMatMul.low_rank_layer_2/Tensordot_19/Reshape:output:00low_rank_layer_2/Tensordot_19/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_18AddV2low_rank_layer_2/add_17:z:0.low_rank_layer_2/Tensordot_19/MatMul:product:0*
T0* 
_output_shapes
:

,low_rank_layer_2/Tensordot_20/ReadVariableOpReadVariableOp5low_rank_layer_2_tensordot_20_readvariableop_resource*
_output_shapes	
:*
dtype0£
.low_rank_layer_2/Tensordot_20/ReadVariableOp_1ReadVariableOp7low_rank_layer_2_tensordot_20_readvariableop_1_resource*
_output_shapes	
:*
dtype0|
+low_rank_layer_2/Tensordot_20/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Æ
%low_rank_layer_2/Tensordot_20/ReshapeReshape4low_rank_layer_2/Tensordot_20/ReadVariableOp:value:04low_rank_layer_2/Tensordot_20/Reshape/shape:output:0*
T0*
_output_shapes
:	~
-low_rank_layer_2/Tensordot_20/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  Ì
'low_rank_layer_2/Tensordot_20/Reshape_1Reshape6low_rank_layer_2/Tensordot_20/ReadVariableOp_1:value:06low_rank_layer_2/Tensordot_20/Reshape_1/shape:output:0*
T0*
_output_shapes
:	»
$low_rank_layer_2/Tensordot_20/MatMulMatMul.low_rank_layer_2/Tensordot_20/Reshape:output:00low_rank_layer_2/Tensordot_20/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_19AddV2low_rank_layer_2/add_18:z:0.low_rank_layer_2/Tensordot_20/MatMul:product:0*
T0* 
_output_shapes
:

,low_rank_layer_2/Tensordot_21/ReadVariableOpReadVariableOp5low_rank_layer_2_tensordot_21_readvariableop_resource*
_output_shapes	
:*
dtype0£
.low_rank_layer_2/Tensordot_21/ReadVariableOp_1ReadVariableOp7low_rank_layer_2_tensordot_21_readvariableop_1_resource*
_output_shapes	
:*
dtype0|
+low_rank_layer_2/Tensordot_21/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Æ
%low_rank_layer_2/Tensordot_21/ReshapeReshape4low_rank_layer_2/Tensordot_21/ReadVariableOp:value:04low_rank_layer_2/Tensordot_21/Reshape/shape:output:0*
T0*
_output_shapes
:	~
-low_rank_layer_2/Tensordot_21/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  Ì
'low_rank_layer_2/Tensordot_21/Reshape_1Reshape6low_rank_layer_2/Tensordot_21/ReadVariableOp_1:value:06low_rank_layer_2/Tensordot_21/Reshape_1/shape:output:0*
T0*
_output_shapes
:	»
$low_rank_layer_2/Tensordot_21/MatMulMatMul.low_rank_layer_2/Tensordot_21/Reshape:output:00low_rank_layer_2/Tensordot_21/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_20AddV2low_rank_layer_2/add_19:z:0.low_rank_layer_2/Tensordot_21/MatMul:product:0*
T0* 
_output_shapes
:

,low_rank_layer_2/Tensordot_22/ReadVariableOpReadVariableOp5low_rank_layer_2_tensordot_22_readvariableop_resource*
_output_shapes	
:*
dtype0£
.low_rank_layer_2/Tensordot_22/ReadVariableOp_1ReadVariableOp7low_rank_layer_2_tensordot_22_readvariableop_1_resource*
_output_shapes	
:*
dtype0|
+low_rank_layer_2/Tensordot_22/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Æ
%low_rank_layer_2/Tensordot_22/ReshapeReshape4low_rank_layer_2/Tensordot_22/ReadVariableOp:value:04low_rank_layer_2/Tensordot_22/Reshape/shape:output:0*
T0*
_output_shapes
:	~
-low_rank_layer_2/Tensordot_22/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  Ì
'low_rank_layer_2/Tensordot_22/Reshape_1Reshape6low_rank_layer_2/Tensordot_22/ReadVariableOp_1:value:06low_rank_layer_2/Tensordot_22/Reshape_1/shape:output:0*
T0*
_output_shapes
:	»
$low_rank_layer_2/Tensordot_22/MatMulMatMul.low_rank_layer_2/Tensordot_22/Reshape:output:00low_rank_layer_2/Tensordot_22/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_21AddV2low_rank_layer_2/add_20:z:0.low_rank_layer_2/Tensordot_22/MatMul:product:0*
T0* 
_output_shapes
:

,low_rank_layer_2/Tensordot_23/ReadVariableOpReadVariableOp5low_rank_layer_2_tensordot_23_readvariableop_resource*
_output_shapes	
:*
dtype0£
.low_rank_layer_2/Tensordot_23/ReadVariableOp_1ReadVariableOp7low_rank_layer_2_tensordot_23_readvariableop_1_resource*
_output_shapes	
:*
dtype0|
+low_rank_layer_2/Tensordot_23/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Æ
%low_rank_layer_2/Tensordot_23/ReshapeReshape4low_rank_layer_2/Tensordot_23/ReadVariableOp:value:04low_rank_layer_2/Tensordot_23/Reshape/shape:output:0*
T0*
_output_shapes
:	~
-low_rank_layer_2/Tensordot_23/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  Ì
'low_rank_layer_2/Tensordot_23/Reshape_1Reshape6low_rank_layer_2/Tensordot_23/ReadVariableOp_1:value:06low_rank_layer_2/Tensordot_23/Reshape_1/shape:output:0*
T0*
_output_shapes
:	»
$low_rank_layer_2/Tensordot_23/MatMulMatMul.low_rank_layer_2/Tensordot_23/Reshape:output:00low_rank_layer_2/Tensordot_23/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_22AddV2low_rank_layer_2/add_21:z:0.low_rank_layer_2/Tensordot_23/MatMul:product:0*
T0* 
_output_shapes
:

,low_rank_layer_2/Tensordot_24/ReadVariableOpReadVariableOp5low_rank_layer_2_tensordot_24_readvariableop_resource*
_output_shapes	
:*
dtype0£
.low_rank_layer_2/Tensordot_24/ReadVariableOp_1ReadVariableOp7low_rank_layer_2_tensordot_24_readvariableop_1_resource*
_output_shapes	
:*
dtype0|
+low_rank_layer_2/Tensordot_24/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Æ
%low_rank_layer_2/Tensordot_24/ReshapeReshape4low_rank_layer_2/Tensordot_24/ReadVariableOp:value:04low_rank_layer_2/Tensordot_24/Reshape/shape:output:0*
T0*
_output_shapes
:	~
-low_rank_layer_2/Tensordot_24/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  Ì
'low_rank_layer_2/Tensordot_24/Reshape_1Reshape6low_rank_layer_2/Tensordot_24/ReadVariableOp_1:value:06low_rank_layer_2/Tensordot_24/Reshape_1/shape:output:0*
T0*
_output_shapes
:	»
$low_rank_layer_2/Tensordot_24/MatMulMatMul.low_rank_layer_2/Tensordot_24/Reshape:output:00low_rank_layer_2/Tensordot_24/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_23AddV2low_rank_layer_2/add_22:z:0.low_rank_layer_2/Tensordot_24/MatMul:product:0*
T0* 
_output_shapes
:

,low_rank_layer_2/Tensordot_25/ReadVariableOpReadVariableOp5low_rank_layer_2_tensordot_25_readvariableop_resource*
_output_shapes	
:*
dtype0£
.low_rank_layer_2/Tensordot_25/ReadVariableOp_1ReadVariableOp7low_rank_layer_2_tensordot_25_readvariableop_1_resource*
_output_shapes	
:*
dtype0|
+low_rank_layer_2/Tensordot_25/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Æ
%low_rank_layer_2/Tensordot_25/ReshapeReshape4low_rank_layer_2/Tensordot_25/ReadVariableOp:value:04low_rank_layer_2/Tensordot_25/Reshape/shape:output:0*
T0*
_output_shapes
:	~
-low_rank_layer_2/Tensordot_25/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  Ì
'low_rank_layer_2/Tensordot_25/Reshape_1Reshape6low_rank_layer_2/Tensordot_25/ReadVariableOp_1:value:06low_rank_layer_2/Tensordot_25/Reshape_1/shape:output:0*
T0*
_output_shapes
:	»
$low_rank_layer_2/Tensordot_25/MatMulMatMul.low_rank_layer_2/Tensordot_25/Reshape:output:00low_rank_layer_2/Tensordot_25/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_24AddV2low_rank_layer_2/add_23:z:0.low_rank_layer_2/Tensordot_25/MatMul:product:0*
T0* 
_output_shapes
:

,low_rank_layer_2/Tensordot_26/ReadVariableOpReadVariableOp5low_rank_layer_2_tensordot_26_readvariableop_resource*
_output_shapes	
:*
dtype0£
.low_rank_layer_2/Tensordot_26/ReadVariableOp_1ReadVariableOp7low_rank_layer_2_tensordot_26_readvariableop_1_resource*
_output_shapes	
:*
dtype0|
+low_rank_layer_2/Tensordot_26/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Æ
%low_rank_layer_2/Tensordot_26/ReshapeReshape4low_rank_layer_2/Tensordot_26/ReadVariableOp:value:04low_rank_layer_2/Tensordot_26/Reshape/shape:output:0*
T0*
_output_shapes
:	~
-low_rank_layer_2/Tensordot_26/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  Ì
'low_rank_layer_2/Tensordot_26/Reshape_1Reshape6low_rank_layer_2/Tensordot_26/ReadVariableOp_1:value:06low_rank_layer_2/Tensordot_26/Reshape_1/shape:output:0*
T0*
_output_shapes
:	»
$low_rank_layer_2/Tensordot_26/MatMulMatMul.low_rank_layer_2/Tensordot_26/Reshape:output:00low_rank_layer_2/Tensordot_26/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_25AddV2low_rank_layer_2/add_24:z:0.low_rank_layer_2/Tensordot_26/MatMul:product:0*
T0* 
_output_shapes
:

,low_rank_layer_2/Tensordot_27/ReadVariableOpReadVariableOp5low_rank_layer_2_tensordot_27_readvariableop_resource*
_output_shapes	
:*
dtype0£
.low_rank_layer_2/Tensordot_27/ReadVariableOp_1ReadVariableOp7low_rank_layer_2_tensordot_27_readvariableop_1_resource*
_output_shapes	
:*
dtype0|
+low_rank_layer_2/Tensordot_27/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Æ
%low_rank_layer_2/Tensordot_27/ReshapeReshape4low_rank_layer_2/Tensordot_27/ReadVariableOp:value:04low_rank_layer_2/Tensordot_27/Reshape/shape:output:0*
T0*
_output_shapes
:	~
-low_rank_layer_2/Tensordot_27/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  Ì
'low_rank_layer_2/Tensordot_27/Reshape_1Reshape6low_rank_layer_2/Tensordot_27/ReadVariableOp_1:value:06low_rank_layer_2/Tensordot_27/Reshape_1/shape:output:0*
T0*
_output_shapes
:	»
$low_rank_layer_2/Tensordot_27/MatMulMatMul.low_rank_layer_2/Tensordot_27/Reshape:output:00low_rank_layer_2/Tensordot_27/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_26AddV2low_rank_layer_2/add_25:z:0.low_rank_layer_2/Tensordot_27/MatMul:product:0*
T0* 
_output_shapes
:

,low_rank_layer_2/Tensordot_28/ReadVariableOpReadVariableOp5low_rank_layer_2_tensordot_28_readvariableop_resource*
_output_shapes	
:*
dtype0£
.low_rank_layer_2/Tensordot_28/ReadVariableOp_1ReadVariableOp7low_rank_layer_2_tensordot_28_readvariableop_1_resource*
_output_shapes	
:*
dtype0|
+low_rank_layer_2/Tensordot_28/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Æ
%low_rank_layer_2/Tensordot_28/ReshapeReshape4low_rank_layer_2/Tensordot_28/ReadVariableOp:value:04low_rank_layer_2/Tensordot_28/Reshape/shape:output:0*
T0*
_output_shapes
:	~
-low_rank_layer_2/Tensordot_28/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  Ì
'low_rank_layer_2/Tensordot_28/Reshape_1Reshape6low_rank_layer_2/Tensordot_28/ReadVariableOp_1:value:06low_rank_layer_2/Tensordot_28/Reshape_1/shape:output:0*
T0*
_output_shapes
:	»
$low_rank_layer_2/Tensordot_28/MatMulMatMul.low_rank_layer_2/Tensordot_28/Reshape:output:00low_rank_layer_2/Tensordot_28/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_27AddV2low_rank_layer_2/add_26:z:0.low_rank_layer_2/Tensordot_28/MatMul:product:0*
T0* 
_output_shapes
:

,low_rank_layer_2/Tensordot_29/ReadVariableOpReadVariableOp5low_rank_layer_2_tensordot_29_readvariableop_resource*
_output_shapes	
:*
dtype0£
.low_rank_layer_2/Tensordot_29/ReadVariableOp_1ReadVariableOp7low_rank_layer_2_tensordot_29_readvariableop_1_resource*
_output_shapes	
:*
dtype0|
+low_rank_layer_2/Tensordot_29/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Æ
%low_rank_layer_2/Tensordot_29/ReshapeReshape4low_rank_layer_2/Tensordot_29/ReadVariableOp:value:04low_rank_layer_2/Tensordot_29/Reshape/shape:output:0*
T0*
_output_shapes
:	~
-low_rank_layer_2/Tensordot_29/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  Ì
'low_rank_layer_2/Tensordot_29/Reshape_1Reshape6low_rank_layer_2/Tensordot_29/ReadVariableOp_1:value:06low_rank_layer_2/Tensordot_29/Reshape_1/shape:output:0*
T0*
_output_shapes
:	»
$low_rank_layer_2/Tensordot_29/MatMulMatMul.low_rank_layer_2/Tensordot_29/Reshape:output:00low_rank_layer_2/Tensordot_29/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_28AddV2low_rank_layer_2/add_27:z:0.low_rank_layer_2/Tensordot_29/MatMul:product:0*
T0* 
_output_shapes
:

,low_rank_layer_2/Tensordot_30/ReadVariableOpReadVariableOp5low_rank_layer_2_tensordot_30_readvariableop_resource*
_output_shapes	
:*
dtype0£
.low_rank_layer_2/Tensordot_30/ReadVariableOp_1ReadVariableOp7low_rank_layer_2_tensordot_30_readvariableop_1_resource*
_output_shapes	
:*
dtype0|
+low_rank_layer_2/Tensordot_30/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Æ
%low_rank_layer_2/Tensordot_30/ReshapeReshape4low_rank_layer_2/Tensordot_30/ReadVariableOp:value:04low_rank_layer_2/Tensordot_30/Reshape/shape:output:0*
T0*
_output_shapes
:	~
-low_rank_layer_2/Tensordot_30/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  Ì
'low_rank_layer_2/Tensordot_30/Reshape_1Reshape6low_rank_layer_2/Tensordot_30/ReadVariableOp_1:value:06low_rank_layer_2/Tensordot_30/Reshape_1/shape:output:0*
T0*
_output_shapes
:	»
$low_rank_layer_2/Tensordot_30/MatMulMatMul.low_rank_layer_2/Tensordot_30/Reshape:output:00low_rank_layer_2/Tensordot_30/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_29AddV2low_rank_layer_2/add_28:z:0.low_rank_layer_2/Tensordot_30/MatMul:product:0*
T0* 
_output_shapes
:

,low_rank_layer_2/Tensordot_31/ReadVariableOpReadVariableOp5low_rank_layer_2_tensordot_31_readvariableop_resource*
_output_shapes	
:*
dtype0£
.low_rank_layer_2/Tensordot_31/ReadVariableOp_1ReadVariableOp7low_rank_layer_2_tensordot_31_readvariableop_1_resource*
_output_shapes	
:*
dtype0|
+low_rank_layer_2/Tensordot_31/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Æ
%low_rank_layer_2/Tensordot_31/ReshapeReshape4low_rank_layer_2/Tensordot_31/ReadVariableOp:value:04low_rank_layer_2/Tensordot_31/Reshape/shape:output:0*
T0*
_output_shapes
:	~
-low_rank_layer_2/Tensordot_31/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  Ì
'low_rank_layer_2/Tensordot_31/Reshape_1Reshape6low_rank_layer_2/Tensordot_31/ReadVariableOp_1:value:06low_rank_layer_2/Tensordot_31/Reshape_1/shape:output:0*
T0*
_output_shapes
:	»
$low_rank_layer_2/Tensordot_31/MatMulMatMul.low_rank_layer_2/Tensordot_31/Reshape:output:00low_rank_layer_2/Tensordot_31/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_30AddV2low_rank_layer_2/add_29:z:0.low_rank_layer_2/Tensordot_31/MatMul:product:0*
T0* 
_output_shapes
:

low_rank_layer_2/matmulBatchMatMulV2low_rank_layer_2/add_30:z:0reshape_4/Reshape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
reshape_5/ShapeShape low_rank_layer_2/matmul:output:0*
T0*
_output_shapes
:g
reshape_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
reshape_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
reshape_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
reshape_5/strided_sliceStridedSlicereshape_5/Shape:output:0&reshape_5/strided_slice/stack:output:0(reshape_5/strided_slice/stack_1:output:0(reshape_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
reshape_5/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :[
reshape_5/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :[
reshape_5/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :Û
reshape_5/Reshape/shapePack reshape_5/strided_slice:output:0"reshape_5/Reshape/shape/1:output:0"reshape_5/Reshape/shape/2:output:0"reshape_5/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:
reshape_5/ReshapeReshape low_rank_layer_2/matmul:output:0 reshape_5/Reshape/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ«
max_pooling2d_6/MaxPoolMaxPoolreshape_5/Reshape:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides

conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0È
conv2d_10/Conv2DConv2D max_pooling2d_6/MaxPool:output:0'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

 conv2d_10/BiasAdd/ReadVariableOpReadVariableOp)conv2d_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_10/BiasAddBiasAddconv2d_10/Conv2D:output:0(conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
conv2d_10/ReluReluconv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ­
max_pooling2d_7/MaxPoolMaxPoolconv2d_10/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides

conv2d_11/Conv2D/ReadVariableOpReadVariableOp(conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0È
conv2d_11/Conv2DConv2D max_pooling2d_7/MaxPool:output:0'conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

 conv2d_11/BiasAdd/ReadVariableOpReadVariableOp)conv2d_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_11/BiasAddBiasAddconv2d_11/Conv2D:output:0(conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
conv2d_11/ReluReluconv2d_11/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
flatten_3/ReshapeReshapeconv2d_11/Relu:activations:0flatten_3/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @
dropout_3/dropout/MulMulflatten_3/Reshape:output:0 dropout_3/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
dropout_3/dropout/ShapeShapeflatten_3/Reshape:output:0*
T0*
_output_shapes
:¡
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0e
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Å
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_3/dropout/CastCast"dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_3/dropout/Mul_1Muldropout_3/dropout/Mul:z:0dropout_3/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0
dense_3/MatMulMatMuldropout_3/dropout/Mul_1:z:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
f
dense_3/SoftmaxSoftmaxdense_3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
h
IdentityIdentitydense_3/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¼
NoOpNoOp!^conv2d_10/BiasAdd/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp!^conv2d_11/BiasAdd/ReadVariableOp ^conv2d_11/Conv2D/ReadVariableOp ^conv2d_9/BiasAdd/ReadVariableOp^conv2d_9/Conv2D/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*^low_rank_layer_2/Tensordot/ReadVariableOp,^low_rank_layer_2/Tensordot/ReadVariableOp_1,^low_rank_layer_2/Tensordot_1/ReadVariableOp.^low_rank_layer_2/Tensordot_1/ReadVariableOp_1-^low_rank_layer_2/Tensordot_10/ReadVariableOp/^low_rank_layer_2/Tensordot_10/ReadVariableOp_1-^low_rank_layer_2/Tensordot_11/ReadVariableOp/^low_rank_layer_2/Tensordot_11/ReadVariableOp_1-^low_rank_layer_2/Tensordot_12/ReadVariableOp/^low_rank_layer_2/Tensordot_12/ReadVariableOp_1-^low_rank_layer_2/Tensordot_13/ReadVariableOp/^low_rank_layer_2/Tensordot_13/ReadVariableOp_1-^low_rank_layer_2/Tensordot_14/ReadVariableOp/^low_rank_layer_2/Tensordot_14/ReadVariableOp_1-^low_rank_layer_2/Tensordot_15/ReadVariableOp/^low_rank_layer_2/Tensordot_15/ReadVariableOp_1-^low_rank_layer_2/Tensordot_16/ReadVariableOp/^low_rank_layer_2/Tensordot_16/ReadVariableOp_1-^low_rank_layer_2/Tensordot_17/ReadVariableOp/^low_rank_layer_2/Tensordot_17/ReadVariableOp_1-^low_rank_layer_2/Tensordot_18/ReadVariableOp/^low_rank_layer_2/Tensordot_18/ReadVariableOp_1-^low_rank_layer_2/Tensordot_19/ReadVariableOp/^low_rank_layer_2/Tensordot_19/ReadVariableOp_1,^low_rank_layer_2/Tensordot_2/ReadVariableOp.^low_rank_layer_2/Tensordot_2/ReadVariableOp_1-^low_rank_layer_2/Tensordot_20/ReadVariableOp/^low_rank_layer_2/Tensordot_20/ReadVariableOp_1-^low_rank_layer_2/Tensordot_21/ReadVariableOp/^low_rank_layer_2/Tensordot_21/ReadVariableOp_1-^low_rank_layer_2/Tensordot_22/ReadVariableOp/^low_rank_layer_2/Tensordot_22/ReadVariableOp_1-^low_rank_layer_2/Tensordot_23/ReadVariableOp/^low_rank_layer_2/Tensordot_23/ReadVariableOp_1-^low_rank_layer_2/Tensordot_24/ReadVariableOp/^low_rank_layer_2/Tensordot_24/ReadVariableOp_1-^low_rank_layer_2/Tensordot_25/ReadVariableOp/^low_rank_layer_2/Tensordot_25/ReadVariableOp_1-^low_rank_layer_2/Tensordot_26/ReadVariableOp/^low_rank_layer_2/Tensordot_26/ReadVariableOp_1-^low_rank_layer_2/Tensordot_27/ReadVariableOp/^low_rank_layer_2/Tensordot_27/ReadVariableOp_1-^low_rank_layer_2/Tensordot_28/ReadVariableOp/^low_rank_layer_2/Tensordot_28/ReadVariableOp_1-^low_rank_layer_2/Tensordot_29/ReadVariableOp/^low_rank_layer_2/Tensordot_29/ReadVariableOp_1,^low_rank_layer_2/Tensordot_3/ReadVariableOp.^low_rank_layer_2/Tensordot_3/ReadVariableOp_1-^low_rank_layer_2/Tensordot_30/ReadVariableOp/^low_rank_layer_2/Tensordot_30/ReadVariableOp_1-^low_rank_layer_2/Tensordot_31/ReadVariableOp/^low_rank_layer_2/Tensordot_31/ReadVariableOp_1,^low_rank_layer_2/Tensordot_4/ReadVariableOp.^low_rank_layer_2/Tensordot_4/ReadVariableOp_1,^low_rank_layer_2/Tensordot_5/ReadVariableOp.^low_rank_layer_2/Tensordot_5/ReadVariableOp_1,^low_rank_layer_2/Tensordot_6/ReadVariableOp.^low_rank_layer_2/Tensordot_6/ReadVariableOp_1,^low_rank_layer_2/Tensordot_7/ReadVariableOp.^low_rank_layer_2/Tensordot_7/ReadVariableOp_1,^low_rank_layer_2/Tensordot_8/ReadVariableOp.^low_rank_layer_2/Tensordot_8/ReadVariableOp_1,^low_rank_layer_2/Tensordot_9/ReadVariableOp.^low_rank_layer_2/Tensordot_9/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*À
_input_shapes®
«:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2D
 conv2d_10/BiasAdd/ReadVariableOp conv2d_10/BiasAdd/ReadVariableOp2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp2D
 conv2d_11/BiasAdd/ReadVariableOp conv2d_11/BiasAdd/ReadVariableOp2B
conv2d_11/Conv2D/ReadVariableOpconv2d_11/Conv2D/ReadVariableOp2B
conv2d_9/BiasAdd/ReadVariableOpconv2d_9/BiasAdd/ReadVariableOp2@
conv2d_9/Conv2D/ReadVariableOpconv2d_9/Conv2D/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2V
)low_rank_layer_2/Tensordot/ReadVariableOp)low_rank_layer_2/Tensordot/ReadVariableOp2Z
+low_rank_layer_2/Tensordot/ReadVariableOp_1+low_rank_layer_2/Tensordot/ReadVariableOp_12Z
+low_rank_layer_2/Tensordot_1/ReadVariableOp+low_rank_layer_2/Tensordot_1/ReadVariableOp2^
-low_rank_layer_2/Tensordot_1/ReadVariableOp_1-low_rank_layer_2/Tensordot_1/ReadVariableOp_12\
,low_rank_layer_2/Tensordot_10/ReadVariableOp,low_rank_layer_2/Tensordot_10/ReadVariableOp2`
.low_rank_layer_2/Tensordot_10/ReadVariableOp_1.low_rank_layer_2/Tensordot_10/ReadVariableOp_12\
,low_rank_layer_2/Tensordot_11/ReadVariableOp,low_rank_layer_2/Tensordot_11/ReadVariableOp2`
.low_rank_layer_2/Tensordot_11/ReadVariableOp_1.low_rank_layer_2/Tensordot_11/ReadVariableOp_12\
,low_rank_layer_2/Tensordot_12/ReadVariableOp,low_rank_layer_2/Tensordot_12/ReadVariableOp2`
.low_rank_layer_2/Tensordot_12/ReadVariableOp_1.low_rank_layer_2/Tensordot_12/ReadVariableOp_12\
,low_rank_layer_2/Tensordot_13/ReadVariableOp,low_rank_layer_2/Tensordot_13/ReadVariableOp2`
.low_rank_layer_2/Tensordot_13/ReadVariableOp_1.low_rank_layer_2/Tensordot_13/ReadVariableOp_12\
,low_rank_layer_2/Tensordot_14/ReadVariableOp,low_rank_layer_2/Tensordot_14/ReadVariableOp2`
.low_rank_layer_2/Tensordot_14/ReadVariableOp_1.low_rank_layer_2/Tensordot_14/ReadVariableOp_12\
,low_rank_layer_2/Tensordot_15/ReadVariableOp,low_rank_layer_2/Tensordot_15/ReadVariableOp2`
.low_rank_layer_2/Tensordot_15/ReadVariableOp_1.low_rank_layer_2/Tensordot_15/ReadVariableOp_12\
,low_rank_layer_2/Tensordot_16/ReadVariableOp,low_rank_layer_2/Tensordot_16/ReadVariableOp2`
.low_rank_layer_2/Tensordot_16/ReadVariableOp_1.low_rank_layer_2/Tensordot_16/ReadVariableOp_12\
,low_rank_layer_2/Tensordot_17/ReadVariableOp,low_rank_layer_2/Tensordot_17/ReadVariableOp2`
.low_rank_layer_2/Tensordot_17/ReadVariableOp_1.low_rank_layer_2/Tensordot_17/ReadVariableOp_12\
,low_rank_layer_2/Tensordot_18/ReadVariableOp,low_rank_layer_2/Tensordot_18/ReadVariableOp2`
.low_rank_layer_2/Tensordot_18/ReadVariableOp_1.low_rank_layer_2/Tensordot_18/ReadVariableOp_12\
,low_rank_layer_2/Tensordot_19/ReadVariableOp,low_rank_layer_2/Tensordot_19/ReadVariableOp2`
.low_rank_layer_2/Tensordot_19/ReadVariableOp_1.low_rank_layer_2/Tensordot_19/ReadVariableOp_12Z
+low_rank_layer_2/Tensordot_2/ReadVariableOp+low_rank_layer_2/Tensordot_2/ReadVariableOp2^
-low_rank_layer_2/Tensordot_2/ReadVariableOp_1-low_rank_layer_2/Tensordot_2/ReadVariableOp_12\
,low_rank_layer_2/Tensordot_20/ReadVariableOp,low_rank_layer_2/Tensordot_20/ReadVariableOp2`
.low_rank_layer_2/Tensordot_20/ReadVariableOp_1.low_rank_layer_2/Tensordot_20/ReadVariableOp_12\
,low_rank_layer_2/Tensordot_21/ReadVariableOp,low_rank_layer_2/Tensordot_21/ReadVariableOp2`
.low_rank_layer_2/Tensordot_21/ReadVariableOp_1.low_rank_layer_2/Tensordot_21/ReadVariableOp_12\
,low_rank_layer_2/Tensordot_22/ReadVariableOp,low_rank_layer_2/Tensordot_22/ReadVariableOp2`
.low_rank_layer_2/Tensordot_22/ReadVariableOp_1.low_rank_layer_2/Tensordot_22/ReadVariableOp_12\
,low_rank_layer_2/Tensordot_23/ReadVariableOp,low_rank_layer_2/Tensordot_23/ReadVariableOp2`
.low_rank_layer_2/Tensordot_23/ReadVariableOp_1.low_rank_layer_2/Tensordot_23/ReadVariableOp_12\
,low_rank_layer_2/Tensordot_24/ReadVariableOp,low_rank_layer_2/Tensordot_24/ReadVariableOp2`
.low_rank_layer_2/Tensordot_24/ReadVariableOp_1.low_rank_layer_2/Tensordot_24/ReadVariableOp_12\
,low_rank_layer_2/Tensordot_25/ReadVariableOp,low_rank_layer_2/Tensordot_25/ReadVariableOp2`
.low_rank_layer_2/Tensordot_25/ReadVariableOp_1.low_rank_layer_2/Tensordot_25/ReadVariableOp_12\
,low_rank_layer_2/Tensordot_26/ReadVariableOp,low_rank_layer_2/Tensordot_26/ReadVariableOp2`
.low_rank_layer_2/Tensordot_26/ReadVariableOp_1.low_rank_layer_2/Tensordot_26/ReadVariableOp_12\
,low_rank_layer_2/Tensordot_27/ReadVariableOp,low_rank_layer_2/Tensordot_27/ReadVariableOp2`
.low_rank_layer_2/Tensordot_27/ReadVariableOp_1.low_rank_layer_2/Tensordot_27/ReadVariableOp_12\
,low_rank_layer_2/Tensordot_28/ReadVariableOp,low_rank_layer_2/Tensordot_28/ReadVariableOp2`
.low_rank_layer_2/Tensordot_28/ReadVariableOp_1.low_rank_layer_2/Tensordot_28/ReadVariableOp_12\
,low_rank_layer_2/Tensordot_29/ReadVariableOp,low_rank_layer_2/Tensordot_29/ReadVariableOp2`
.low_rank_layer_2/Tensordot_29/ReadVariableOp_1.low_rank_layer_2/Tensordot_29/ReadVariableOp_12Z
+low_rank_layer_2/Tensordot_3/ReadVariableOp+low_rank_layer_2/Tensordot_3/ReadVariableOp2^
-low_rank_layer_2/Tensordot_3/ReadVariableOp_1-low_rank_layer_2/Tensordot_3/ReadVariableOp_12\
,low_rank_layer_2/Tensordot_30/ReadVariableOp,low_rank_layer_2/Tensordot_30/ReadVariableOp2`
.low_rank_layer_2/Tensordot_30/ReadVariableOp_1.low_rank_layer_2/Tensordot_30/ReadVariableOp_12\
,low_rank_layer_2/Tensordot_31/ReadVariableOp,low_rank_layer_2/Tensordot_31/ReadVariableOp2`
.low_rank_layer_2/Tensordot_31/ReadVariableOp_1.low_rank_layer_2/Tensordot_31/ReadVariableOp_12Z
+low_rank_layer_2/Tensordot_4/ReadVariableOp+low_rank_layer_2/Tensordot_4/ReadVariableOp2^
-low_rank_layer_2/Tensordot_4/ReadVariableOp_1-low_rank_layer_2/Tensordot_4/ReadVariableOp_12Z
+low_rank_layer_2/Tensordot_5/ReadVariableOp+low_rank_layer_2/Tensordot_5/ReadVariableOp2^
-low_rank_layer_2/Tensordot_5/ReadVariableOp_1-low_rank_layer_2/Tensordot_5/ReadVariableOp_12Z
+low_rank_layer_2/Tensordot_6/ReadVariableOp+low_rank_layer_2/Tensordot_6/ReadVariableOp2^
-low_rank_layer_2/Tensordot_6/ReadVariableOp_1-low_rank_layer_2/Tensordot_6/ReadVariableOp_12Z
+low_rank_layer_2/Tensordot_7/ReadVariableOp+low_rank_layer_2/Tensordot_7/ReadVariableOp2^
-low_rank_layer_2/Tensordot_7/ReadVariableOp_1-low_rank_layer_2/Tensordot_7/ReadVariableOp_12Z
+low_rank_layer_2/Tensordot_8/ReadVariableOp+low_rank_layer_2/Tensordot_8/ReadVariableOp2^
-low_rank_layer_2/Tensordot_8/ReadVariableOp_1-low_rank_layer_2/Tensordot_8/ReadVariableOp_12Z
+low_rank_layer_2/Tensordot_9/ReadVariableOp+low_rank_layer_2/Tensordot_9/ReadVariableOp2^
-low_rank_layer_2/Tensordot_9/ReadVariableOp_1-low_rank_layer_2/Tensordot_9/ReadVariableOp_1:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ú
d
+__inference_dropout_3_layer_call_fn_4832330

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
F__inference_dropout_3_layer_call_and_return_conditional_losses_4829412p
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
ë

b
F__inference_reshape_4_layer_call_and_return_conditional_losses_4831773

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
B :Q
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
:ÿÿÿÿÿÿÿÿÿ]
IdentityIdentityReshape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
£
ËT
 __inference__traced_save_4833065
file_prefix.
*savev2_conv2d_9_kernel_read_readvariableop,
(savev2_conv2d_9_bias_read_readvariableop(
$savev2_weightu_0_read_readvariableop(
$savev2_weightv_0_read_readvariableop(
$savev2_weightu_1_read_readvariableop(
$savev2_weightv_1_read_readvariableop(
$savev2_weightu_2_read_readvariableop(
$savev2_weightv_2_read_readvariableop(
$savev2_weightu_3_read_readvariableop(
$savev2_weightv_3_read_readvariableop(
$savev2_weightu_4_read_readvariableop(
$savev2_weightv_4_read_readvariableop(
$savev2_weightu_5_read_readvariableop(
$savev2_weightv_5_read_readvariableop(
$savev2_weightu_6_read_readvariableop(
$savev2_weightv_6_read_readvariableop(
$savev2_weightu_7_read_readvariableop(
$savev2_weightv_7_read_readvariableop(
$savev2_weightu_8_read_readvariableop(
$savev2_weightv_8_read_readvariableop(
$savev2_weightu_9_read_readvariableop(
$savev2_weightv_9_read_readvariableop)
%savev2_weightu_10_read_readvariableop)
%savev2_weightv_10_read_readvariableop)
%savev2_weightu_11_read_readvariableop)
%savev2_weightv_11_read_readvariableop)
%savev2_weightu_12_read_readvariableop)
%savev2_weightv_12_read_readvariableop)
%savev2_weightu_13_read_readvariableop)
%savev2_weightv_13_read_readvariableop)
%savev2_weightu_14_read_readvariableop)
%savev2_weightv_14_read_readvariableop)
%savev2_weightu_15_read_readvariableop)
%savev2_weightv_15_read_readvariableop)
%savev2_weightu_16_read_readvariableop)
%savev2_weightv_16_read_readvariableop)
%savev2_weightu_17_read_readvariableop)
%savev2_weightv_17_read_readvariableop)
%savev2_weightu_18_read_readvariableop)
%savev2_weightv_18_read_readvariableop)
%savev2_weightu_19_read_readvariableop)
%savev2_weightv_19_read_readvariableop)
%savev2_weightu_20_read_readvariableop)
%savev2_weightv_20_read_readvariableop)
%savev2_weightu_21_read_readvariableop)
%savev2_weightv_21_read_readvariableop)
%savev2_weightu_22_read_readvariableop)
%savev2_weightv_22_read_readvariableop)
%savev2_weightu_23_read_readvariableop)
%savev2_weightv_23_read_readvariableop)
%savev2_weightu_24_read_readvariableop)
%savev2_weightv_24_read_readvariableop)
%savev2_weightu_25_read_readvariableop)
%savev2_weightv_25_read_readvariableop)
%savev2_weightu_26_read_readvariableop)
%savev2_weightv_26_read_readvariableop)
%savev2_weightu_27_read_readvariableop)
%savev2_weightv_27_read_readvariableop)
%savev2_weightu_28_read_readvariableop)
%savev2_weightv_28_read_readvariableop)
%savev2_weightu_29_read_readvariableop)
%savev2_weightv_29_read_readvariableop)
%savev2_weightu_30_read_readvariableop)
%savev2_weightv_30_read_readvariableop)
%savev2_weightu_31_read_readvariableop)
%savev2_weightv_31_read_readvariableop/
+savev2_conv2d_10_kernel_read_readvariableop-
)savev2_conv2d_10_bias_read_readvariableop/
+savev2_conv2d_11_kernel_read_readvariableop-
)savev2_conv2d_11_bias_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_conv2d_9_kernel_m_read_readvariableop3
/savev2_adam_conv2d_9_bias_m_read_readvariableop/
+savev2_adam_weightu_0_m_read_readvariableop/
+savev2_adam_weightv_0_m_read_readvariableop/
+savev2_adam_weightu_1_m_read_readvariableop/
+savev2_adam_weightv_1_m_read_readvariableop/
+savev2_adam_weightu_2_m_read_readvariableop/
+savev2_adam_weightv_2_m_read_readvariableop/
+savev2_adam_weightu_3_m_read_readvariableop/
+savev2_adam_weightv_3_m_read_readvariableop/
+savev2_adam_weightu_4_m_read_readvariableop/
+savev2_adam_weightv_4_m_read_readvariableop/
+savev2_adam_weightu_5_m_read_readvariableop/
+savev2_adam_weightv_5_m_read_readvariableop/
+savev2_adam_weightu_6_m_read_readvariableop/
+savev2_adam_weightv_6_m_read_readvariableop/
+savev2_adam_weightu_7_m_read_readvariableop/
+savev2_adam_weightv_7_m_read_readvariableop/
+savev2_adam_weightu_8_m_read_readvariableop/
+savev2_adam_weightv_8_m_read_readvariableop/
+savev2_adam_weightu_9_m_read_readvariableop/
+savev2_adam_weightv_9_m_read_readvariableop0
,savev2_adam_weightu_10_m_read_readvariableop0
,savev2_adam_weightv_10_m_read_readvariableop0
,savev2_adam_weightu_11_m_read_readvariableop0
,savev2_adam_weightv_11_m_read_readvariableop0
,savev2_adam_weightu_12_m_read_readvariableop0
,savev2_adam_weightv_12_m_read_readvariableop0
,savev2_adam_weightu_13_m_read_readvariableop0
,savev2_adam_weightv_13_m_read_readvariableop0
,savev2_adam_weightu_14_m_read_readvariableop0
,savev2_adam_weightv_14_m_read_readvariableop0
,savev2_adam_weightu_15_m_read_readvariableop0
,savev2_adam_weightv_15_m_read_readvariableop0
,savev2_adam_weightu_16_m_read_readvariableop0
,savev2_adam_weightv_16_m_read_readvariableop0
,savev2_adam_weightu_17_m_read_readvariableop0
,savev2_adam_weightv_17_m_read_readvariableop0
,savev2_adam_weightu_18_m_read_readvariableop0
,savev2_adam_weightv_18_m_read_readvariableop0
,savev2_adam_weightu_19_m_read_readvariableop0
,savev2_adam_weightv_19_m_read_readvariableop0
,savev2_adam_weightu_20_m_read_readvariableop0
,savev2_adam_weightv_20_m_read_readvariableop0
,savev2_adam_weightu_21_m_read_readvariableop0
,savev2_adam_weightv_21_m_read_readvariableop0
,savev2_adam_weightu_22_m_read_readvariableop0
,savev2_adam_weightv_22_m_read_readvariableop0
,savev2_adam_weightu_23_m_read_readvariableop0
,savev2_adam_weightv_23_m_read_readvariableop0
,savev2_adam_weightu_24_m_read_readvariableop0
,savev2_adam_weightv_24_m_read_readvariableop0
,savev2_adam_weightu_25_m_read_readvariableop0
,savev2_adam_weightv_25_m_read_readvariableop0
,savev2_adam_weightu_26_m_read_readvariableop0
,savev2_adam_weightv_26_m_read_readvariableop0
,savev2_adam_weightu_27_m_read_readvariableop0
,savev2_adam_weightv_27_m_read_readvariableop0
,savev2_adam_weightu_28_m_read_readvariableop0
,savev2_adam_weightv_28_m_read_readvariableop0
,savev2_adam_weightu_29_m_read_readvariableop0
,savev2_adam_weightv_29_m_read_readvariableop0
,savev2_adam_weightu_30_m_read_readvariableop0
,savev2_adam_weightv_30_m_read_readvariableop0
,savev2_adam_weightu_31_m_read_readvariableop0
,savev2_adam_weightv_31_m_read_readvariableop6
2savev2_adam_conv2d_10_kernel_m_read_readvariableop4
0savev2_adam_conv2d_10_bias_m_read_readvariableop6
2savev2_adam_conv2d_11_kernel_m_read_readvariableop4
0savev2_adam_conv2d_11_bias_m_read_readvariableop4
0savev2_adam_dense_3_kernel_m_read_readvariableop2
.savev2_adam_dense_3_bias_m_read_readvariableop5
1savev2_adam_conv2d_9_kernel_v_read_readvariableop3
/savev2_adam_conv2d_9_bias_v_read_readvariableop/
+savev2_adam_weightu_0_v_read_readvariableop/
+savev2_adam_weightv_0_v_read_readvariableop/
+savev2_adam_weightu_1_v_read_readvariableop/
+savev2_adam_weightv_1_v_read_readvariableop/
+savev2_adam_weightu_2_v_read_readvariableop/
+savev2_adam_weightv_2_v_read_readvariableop/
+savev2_adam_weightu_3_v_read_readvariableop/
+savev2_adam_weightv_3_v_read_readvariableop/
+savev2_adam_weightu_4_v_read_readvariableop/
+savev2_adam_weightv_4_v_read_readvariableop/
+savev2_adam_weightu_5_v_read_readvariableop/
+savev2_adam_weightv_5_v_read_readvariableop/
+savev2_adam_weightu_6_v_read_readvariableop/
+savev2_adam_weightv_6_v_read_readvariableop/
+savev2_adam_weightu_7_v_read_readvariableop/
+savev2_adam_weightv_7_v_read_readvariableop/
+savev2_adam_weightu_8_v_read_readvariableop/
+savev2_adam_weightv_8_v_read_readvariableop/
+savev2_adam_weightu_9_v_read_readvariableop/
+savev2_adam_weightv_9_v_read_readvariableop0
,savev2_adam_weightu_10_v_read_readvariableop0
,savev2_adam_weightv_10_v_read_readvariableop0
,savev2_adam_weightu_11_v_read_readvariableop0
,savev2_adam_weightv_11_v_read_readvariableop0
,savev2_adam_weightu_12_v_read_readvariableop0
,savev2_adam_weightv_12_v_read_readvariableop0
,savev2_adam_weightu_13_v_read_readvariableop0
,savev2_adam_weightv_13_v_read_readvariableop0
,savev2_adam_weightu_14_v_read_readvariableop0
,savev2_adam_weightv_14_v_read_readvariableop0
,savev2_adam_weightu_15_v_read_readvariableop0
,savev2_adam_weightv_15_v_read_readvariableop0
,savev2_adam_weightu_16_v_read_readvariableop0
,savev2_adam_weightv_16_v_read_readvariableop0
,savev2_adam_weightu_17_v_read_readvariableop0
,savev2_adam_weightv_17_v_read_readvariableop0
,savev2_adam_weightu_18_v_read_readvariableop0
,savev2_adam_weightv_18_v_read_readvariableop0
,savev2_adam_weightu_19_v_read_readvariableop0
,savev2_adam_weightv_19_v_read_readvariableop0
,savev2_adam_weightu_20_v_read_readvariableop0
,savev2_adam_weightv_20_v_read_readvariableop0
,savev2_adam_weightu_21_v_read_readvariableop0
,savev2_adam_weightv_21_v_read_readvariableop0
,savev2_adam_weightu_22_v_read_readvariableop0
,savev2_adam_weightv_22_v_read_readvariableop0
,savev2_adam_weightu_23_v_read_readvariableop0
,savev2_adam_weightv_23_v_read_readvariableop0
,savev2_adam_weightu_24_v_read_readvariableop0
,savev2_adam_weightv_24_v_read_readvariableop0
,savev2_adam_weightu_25_v_read_readvariableop0
,savev2_adam_weightv_25_v_read_readvariableop0
,savev2_adam_weightu_26_v_read_readvariableop0
,savev2_adam_weightv_26_v_read_readvariableop0
,savev2_adam_weightu_27_v_read_readvariableop0
,savev2_adam_weightv_27_v_read_readvariableop0
,savev2_adam_weightu_28_v_read_readvariableop0
,savev2_adam_weightv_28_v_read_readvariableop0
,savev2_adam_weightu_29_v_read_readvariableop0
,savev2_adam_weightv_29_v_read_readvariableop0
,savev2_adam_weightu_30_v_read_readvariableop0
,savev2_adam_weightv_30_v_read_readvariableop0
,savev2_adam_weightu_31_v_read_readvariableop0
,savev2_adam_weightv_31_v_read_readvariableop6
2savev2_adam_conv2d_10_kernel_v_read_readvariableop4
0savev2_adam_conv2d_10_bias_v_read_readvariableop6
2savev2_adam_conv2d_11_kernel_v_read_readvariableop4
0savev2_adam_conv2d_11_bias_v_read_readvariableop4
0savev2_adam_dense_3_kernel_v_read_readvariableop2
.savev2_adam_dense_3_bias_v_read_readvariableop
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
: ø
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:â*
dtype0*
valueBâB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-1/weightu_0/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-1/weightv_0/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-1/weightu_1/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-1/weightv_1/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-1/weightu_2/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-1/weightv_2/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-1/weightu_3/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-1/weightv_3/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-1/weightu_4/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-1/weightv_4/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-1/weightu_5/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-1/weightv_5/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-1/weightu_6/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-1/weightv_6/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-1/weightu_7/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-1/weightv_7/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-1/weightu_8/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-1/weightv_8/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-1/weightu_9/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-1/weightv_9/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightu_10/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightv_10/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightu_11/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightv_11/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightu_12/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightv_12/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightu_13/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightv_13/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightu_14/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightv_14/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightu_15/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightv_15/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightu_16/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightv_16/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightu_17/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightv_17/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightu_18/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightv_18/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightu_19/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightv_19/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightu_20/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightv_20/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightu_21/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightv_21/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightu_22/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightv_22/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightu_23/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightv_23/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightu_24/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightv_24/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightu_25/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightv_25/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightu_26/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightv_26/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightu_27/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightv_27/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightu_28/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightv_28/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightu_29/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightv_29/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightu_30/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightv_30/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightu_31/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightv_31/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightu_0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightv_0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightu_1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightv_1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightu_2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightv_2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightu_3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightv_3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightu_4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightv_4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightu_5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightv_5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightu_6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightv_6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightu_7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightv_7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightu_8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightv_8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightu_9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightv_9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_22/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_22/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_23/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_23/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_24/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_24/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_25/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_25/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_28/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_28/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_29/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_29/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_30/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_30/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_31/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_31/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightu_0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightv_0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightu_1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightv_1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightu_2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightv_2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightu_3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightv_3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightu_4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightv_4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightu_5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightv_5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightu_6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightv_6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightu_7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightv_7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightu_8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightv_8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightu_9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightv_9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_22/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_22/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_23/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_23/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_24/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_24/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_25/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_25/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_28/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_28/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_29/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_29/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_30/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_30/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_31/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_31/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH¶
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:â*
dtype0*Ú
valueÐBÍâB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ïO
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv2d_9_kernel_read_readvariableop(savev2_conv2d_9_bias_read_readvariableop$savev2_weightu_0_read_readvariableop$savev2_weightv_0_read_readvariableop$savev2_weightu_1_read_readvariableop$savev2_weightv_1_read_readvariableop$savev2_weightu_2_read_readvariableop$savev2_weightv_2_read_readvariableop$savev2_weightu_3_read_readvariableop$savev2_weightv_3_read_readvariableop$savev2_weightu_4_read_readvariableop$savev2_weightv_4_read_readvariableop$savev2_weightu_5_read_readvariableop$savev2_weightv_5_read_readvariableop$savev2_weightu_6_read_readvariableop$savev2_weightv_6_read_readvariableop$savev2_weightu_7_read_readvariableop$savev2_weightv_7_read_readvariableop$savev2_weightu_8_read_readvariableop$savev2_weightv_8_read_readvariableop$savev2_weightu_9_read_readvariableop$savev2_weightv_9_read_readvariableop%savev2_weightu_10_read_readvariableop%savev2_weightv_10_read_readvariableop%savev2_weightu_11_read_readvariableop%savev2_weightv_11_read_readvariableop%savev2_weightu_12_read_readvariableop%savev2_weightv_12_read_readvariableop%savev2_weightu_13_read_readvariableop%savev2_weightv_13_read_readvariableop%savev2_weightu_14_read_readvariableop%savev2_weightv_14_read_readvariableop%savev2_weightu_15_read_readvariableop%savev2_weightv_15_read_readvariableop%savev2_weightu_16_read_readvariableop%savev2_weightv_16_read_readvariableop%savev2_weightu_17_read_readvariableop%savev2_weightv_17_read_readvariableop%savev2_weightu_18_read_readvariableop%savev2_weightv_18_read_readvariableop%savev2_weightu_19_read_readvariableop%savev2_weightv_19_read_readvariableop%savev2_weightu_20_read_readvariableop%savev2_weightv_20_read_readvariableop%savev2_weightu_21_read_readvariableop%savev2_weightv_21_read_readvariableop%savev2_weightu_22_read_readvariableop%savev2_weightv_22_read_readvariableop%savev2_weightu_23_read_readvariableop%savev2_weightv_23_read_readvariableop%savev2_weightu_24_read_readvariableop%savev2_weightv_24_read_readvariableop%savev2_weightu_25_read_readvariableop%savev2_weightv_25_read_readvariableop%savev2_weightu_26_read_readvariableop%savev2_weightv_26_read_readvariableop%savev2_weightu_27_read_readvariableop%savev2_weightv_27_read_readvariableop%savev2_weightu_28_read_readvariableop%savev2_weightv_28_read_readvariableop%savev2_weightu_29_read_readvariableop%savev2_weightv_29_read_readvariableop%savev2_weightu_30_read_readvariableop%savev2_weightv_30_read_readvariableop%savev2_weightu_31_read_readvariableop%savev2_weightv_31_read_readvariableop+savev2_conv2d_10_kernel_read_readvariableop)savev2_conv2d_10_bias_read_readvariableop+savev2_conv2d_11_kernel_read_readvariableop)savev2_conv2d_11_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_conv2d_9_kernel_m_read_readvariableop/savev2_adam_conv2d_9_bias_m_read_readvariableop+savev2_adam_weightu_0_m_read_readvariableop+savev2_adam_weightv_0_m_read_readvariableop+savev2_adam_weightu_1_m_read_readvariableop+savev2_adam_weightv_1_m_read_readvariableop+savev2_adam_weightu_2_m_read_readvariableop+savev2_adam_weightv_2_m_read_readvariableop+savev2_adam_weightu_3_m_read_readvariableop+savev2_adam_weightv_3_m_read_readvariableop+savev2_adam_weightu_4_m_read_readvariableop+savev2_adam_weightv_4_m_read_readvariableop+savev2_adam_weightu_5_m_read_readvariableop+savev2_adam_weightv_5_m_read_readvariableop+savev2_adam_weightu_6_m_read_readvariableop+savev2_adam_weightv_6_m_read_readvariableop+savev2_adam_weightu_7_m_read_readvariableop+savev2_adam_weightv_7_m_read_readvariableop+savev2_adam_weightu_8_m_read_readvariableop+savev2_adam_weightv_8_m_read_readvariableop+savev2_adam_weightu_9_m_read_readvariableop+savev2_adam_weightv_9_m_read_readvariableop,savev2_adam_weightu_10_m_read_readvariableop,savev2_adam_weightv_10_m_read_readvariableop,savev2_adam_weightu_11_m_read_readvariableop,savev2_adam_weightv_11_m_read_readvariableop,savev2_adam_weightu_12_m_read_readvariableop,savev2_adam_weightv_12_m_read_readvariableop,savev2_adam_weightu_13_m_read_readvariableop,savev2_adam_weightv_13_m_read_readvariableop,savev2_adam_weightu_14_m_read_readvariableop,savev2_adam_weightv_14_m_read_readvariableop,savev2_adam_weightu_15_m_read_readvariableop,savev2_adam_weightv_15_m_read_readvariableop,savev2_adam_weightu_16_m_read_readvariableop,savev2_adam_weightv_16_m_read_readvariableop,savev2_adam_weightu_17_m_read_readvariableop,savev2_adam_weightv_17_m_read_readvariableop,savev2_adam_weightu_18_m_read_readvariableop,savev2_adam_weightv_18_m_read_readvariableop,savev2_adam_weightu_19_m_read_readvariableop,savev2_adam_weightv_19_m_read_readvariableop,savev2_adam_weightu_20_m_read_readvariableop,savev2_adam_weightv_20_m_read_readvariableop,savev2_adam_weightu_21_m_read_readvariableop,savev2_adam_weightv_21_m_read_readvariableop,savev2_adam_weightu_22_m_read_readvariableop,savev2_adam_weightv_22_m_read_readvariableop,savev2_adam_weightu_23_m_read_readvariableop,savev2_adam_weightv_23_m_read_readvariableop,savev2_adam_weightu_24_m_read_readvariableop,savev2_adam_weightv_24_m_read_readvariableop,savev2_adam_weightu_25_m_read_readvariableop,savev2_adam_weightv_25_m_read_readvariableop,savev2_adam_weightu_26_m_read_readvariableop,savev2_adam_weightv_26_m_read_readvariableop,savev2_adam_weightu_27_m_read_readvariableop,savev2_adam_weightv_27_m_read_readvariableop,savev2_adam_weightu_28_m_read_readvariableop,savev2_adam_weightv_28_m_read_readvariableop,savev2_adam_weightu_29_m_read_readvariableop,savev2_adam_weightv_29_m_read_readvariableop,savev2_adam_weightu_30_m_read_readvariableop,savev2_adam_weightv_30_m_read_readvariableop,savev2_adam_weightu_31_m_read_readvariableop,savev2_adam_weightv_31_m_read_readvariableop2savev2_adam_conv2d_10_kernel_m_read_readvariableop0savev2_adam_conv2d_10_bias_m_read_readvariableop2savev2_adam_conv2d_11_kernel_m_read_readvariableop0savev2_adam_conv2d_11_bias_m_read_readvariableop0savev2_adam_dense_3_kernel_m_read_readvariableop.savev2_adam_dense_3_bias_m_read_readvariableop1savev2_adam_conv2d_9_kernel_v_read_readvariableop/savev2_adam_conv2d_9_bias_v_read_readvariableop+savev2_adam_weightu_0_v_read_readvariableop+savev2_adam_weightv_0_v_read_readvariableop+savev2_adam_weightu_1_v_read_readvariableop+savev2_adam_weightv_1_v_read_readvariableop+savev2_adam_weightu_2_v_read_readvariableop+savev2_adam_weightv_2_v_read_readvariableop+savev2_adam_weightu_3_v_read_readvariableop+savev2_adam_weightv_3_v_read_readvariableop+savev2_adam_weightu_4_v_read_readvariableop+savev2_adam_weightv_4_v_read_readvariableop+savev2_adam_weightu_5_v_read_readvariableop+savev2_adam_weightv_5_v_read_readvariableop+savev2_adam_weightu_6_v_read_readvariableop+savev2_adam_weightv_6_v_read_readvariableop+savev2_adam_weightu_7_v_read_readvariableop+savev2_adam_weightv_7_v_read_readvariableop+savev2_adam_weightu_8_v_read_readvariableop+savev2_adam_weightv_8_v_read_readvariableop+savev2_adam_weightu_9_v_read_readvariableop+savev2_adam_weightv_9_v_read_readvariableop,savev2_adam_weightu_10_v_read_readvariableop,savev2_adam_weightv_10_v_read_readvariableop,savev2_adam_weightu_11_v_read_readvariableop,savev2_adam_weightv_11_v_read_readvariableop,savev2_adam_weightu_12_v_read_readvariableop,savev2_adam_weightv_12_v_read_readvariableop,savev2_adam_weightu_13_v_read_readvariableop,savev2_adam_weightv_13_v_read_readvariableop,savev2_adam_weightu_14_v_read_readvariableop,savev2_adam_weightv_14_v_read_readvariableop,savev2_adam_weightu_15_v_read_readvariableop,savev2_adam_weightv_15_v_read_readvariableop,savev2_adam_weightu_16_v_read_readvariableop,savev2_adam_weightv_16_v_read_readvariableop,savev2_adam_weightu_17_v_read_readvariableop,savev2_adam_weightv_17_v_read_readvariableop,savev2_adam_weightu_18_v_read_readvariableop,savev2_adam_weightv_18_v_read_readvariableop,savev2_adam_weightu_19_v_read_readvariableop,savev2_adam_weightv_19_v_read_readvariableop,savev2_adam_weightu_20_v_read_readvariableop,savev2_adam_weightv_20_v_read_readvariableop,savev2_adam_weightu_21_v_read_readvariableop,savev2_adam_weightv_21_v_read_readvariableop,savev2_adam_weightu_22_v_read_readvariableop,savev2_adam_weightv_22_v_read_readvariableop,savev2_adam_weightu_23_v_read_readvariableop,savev2_adam_weightv_23_v_read_readvariableop,savev2_adam_weightu_24_v_read_readvariableop,savev2_adam_weightv_24_v_read_readvariableop,savev2_adam_weightu_25_v_read_readvariableop,savev2_adam_weightv_25_v_read_readvariableop,savev2_adam_weightu_26_v_read_readvariableop,savev2_adam_weightv_26_v_read_readvariableop,savev2_adam_weightu_27_v_read_readvariableop,savev2_adam_weightv_27_v_read_readvariableop,savev2_adam_weightu_28_v_read_readvariableop,savev2_adam_weightv_28_v_read_readvariableop,savev2_adam_weightu_29_v_read_readvariableop,savev2_adam_weightv_29_v_read_readvariableop,savev2_adam_weightu_30_v_read_readvariableop,savev2_adam_weightv_30_v_read_readvariableop,savev2_adam_weightu_31_v_read_readvariableop,savev2_adam_weightv_31_v_read_readvariableop2savev2_adam_conv2d_10_kernel_v_read_readvariableop0savev2_adam_conv2d_10_bias_v_read_readvariableop2savev2_adam_conv2d_11_kernel_v_read_readvariableop0savev2_adam_conv2d_11_bias_v_read_readvariableop0savev2_adam_dense_3_kernel_v_read_readvariableop.savev2_adam_dense_3_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *ó
dtypesè
å2â	
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

identity_1Identity_1:output:0*ö
_input_shapesä
á: :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::	
:
: : : : : : : : : :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::	
:
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::	
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
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!	

_output_shapes	
::!


_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::! 

_output_shapes	
::!!

_output_shapes	
::!"

_output_shapes	
::!#

_output_shapes	
::!$

_output_shapes	
::!%

_output_shapes	
::!&

_output_shapes	
::!'

_output_shapes	
::!(

_output_shapes	
::!)

_output_shapes	
::!*

_output_shapes	
::!+

_output_shapes	
::!,

_output_shapes	
::!-

_output_shapes	
::!.

_output_shapes	
::!/

_output_shapes	
::!0

_output_shapes	
::!1

_output_shapes	
::!2

_output_shapes	
::!3

_output_shapes	
::!4

_output_shapes	
::!5

_output_shapes	
::!6

_output_shapes	
::!7

_output_shapes	
::!8

_output_shapes	
::!9

_output_shapes	
::!:

_output_shapes	
::!;

_output_shapes	
::!<

_output_shapes	
::!=

_output_shapes	
::!>

_output_shapes	
::!?

_output_shapes	
::!@

_output_shapes	
::!A

_output_shapes	
::!B

_output_shapes	
::,C(
&
_output_shapes
:: D

_output_shapes
::,E(
&
_output_shapes
:: F

_output_shapes
::%G!

_output_shapes
:	
: H

_output_shapes
:
:I

_output_shapes
: :J

_output_shapes
: :K

_output_shapes
: :L

_output_shapes
: :M

_output_shapes
: :N

_output_shapes
: :O

_output_shapes
: :P

_output_shapes
: :Q

_output_shapes
: :,R(
&
_output_shapes
:: S

_output_shapes
::!T

_output_shapes	
::!U

_output_shapes	
::!V

_output_shapes	
::!W

_output_shapes	
::!X

_output_shapes	
::!Y

_output_shapes	
::!Z

_output_shapes	
::![

_output_shapes	
::!\

_output_shapes	
::!]

_output_shapes	
::!^

_output_shapes	
::!_

_output_shapes	
::!`

_output_shapes	
::!a

_output_shapes	
::!b

_output_shapes	
::!c

_output_shapes	
::!d

_output_shapes	
::!e

_output_shapes	
::!f

_output_shapes	
::!g

_output_shapes	
::!h

_output_shapes	
::!i

_output_shapes	
::!j

_output_shapes	
::!k

_output_shapes	
::!l

_output_shapes	
::!m

_output_shapes	
::!n

_output_shapes	
::!o

_output_shapes	
::!p

_output_shapes	
::!q

_output_shapes	
::!r

_output_shapes	
::!s

_output_shapes	
::!t

_output_shapes	
::!u

_output_shapes	
::!v

_output_shapes	
::!w

_output_shapes	
::!x

_output_shapes	
::!y

_output_shapes	
::!z

_output_shapes	
::!{

_output_shapes	
::!|

_output_shapes	
::!}

_output_shapes	
::!~

_output_shapes	
::!

_output_shapes	
::"

_output_shapes	
::"

_output_shapes	
::"

_output_shapes	
::"

_output_shapes	
::"

_output_shapes	
::"

_output_shapes	
::"

_output_shapes	
::"

_output_shapes	
::"

_output_shapes	
::"

_output_shapes	
::"

_output_shapes	
::"

_output_shapes	
::"

_output_shapes	
::"

_output_shapes	
::"

_output_shapes	
::"

_output_shapes	
::"

_output_shapes	
::"

_output_shapes	
::"

_output_shapes	
::"

_output_shapes	
::-(
&
_output_shapes
::!

_output_shapes
::-(
&
_output_shapes
::!

_output_shapes
::&!

_output_shapes
:	
:!

_output_shapes
:
:-(
&
_output_shapes
::!

_output_shapes
::"

_output_shapes	
::"

_output_shapes	
::"

_output_shapes	
::"

_output_shapes	
::" 

_output_shapes	
::"¡

_output_shapes	
::"¢

_output_shapes	
::"£

_output_shapes	
::"¤

_output_shapes	
::"¥

_output_shapes	
::"¦

_output_shapes	
::"§

_output_shapes	
::"¨

_output_shapes	
::"©

_output_shapes	
::"ª

_output_shapes	
::"«

_output_shapes	
::"¬

_output_shapes	
::"­

_output_shapes	
::"®

_output_shapes	
::"¯

_output_shapes	
::"°

_output_shapes	
::"±

_output_shapes	
::"²

_output_shapes	
::"³

_output_shapes	
::"´

_output_shapes	
::"µ

_output_shapes	
::"¶

_output_shapes	
::"·

_output_shapes	
::"¸

_output_shapes	
::"¹

_output_shapes	
::"º

_output_shapes	
::"»

_output_shapes	
::"¼

_output_shapes	
::"½

_output_shapes	
::"¾

_output_shapes	
::"¿

_output_shapes	
::"À

_output_shapes	
::"Á

_output_shapes	
::"Â

_output_shapes	
::"Ã

_output_shapes	
::"Ä

_output_shapes	
::"Å

_output_shapes	
::"Æ

_output_shapes	
::"Ç

_output_shapes	
::"È

_output_shapes	
::"É

_output_shapes	
::"Ê

_output_shapes	
::"Ë

_output_shapes	
::"Ì

_output_shapes	
::"Í

_output_shapes	
::"Î

_output_shapes	
::"Ï

_output_shapes	
::"Ð

_output_shapes	
::"Ñ

_output_shapes	
::"Ò

_output_shapes	
::"Ó

_output_shapes	
::"Ô

_output_shapes	
::"Õ

_output_shapes	
::"Ö

_output_shapes	
::"×

_output_shapes	
::"Ø

_output_shapes	
::"Ù

_output_shapes	
::"Ú

_output_shapes	
::"Û

_output_shapes	
::-Ü(
&
_output_shapes
::!Ý

_output_shapes
::-Þ(
&
_output_shapes
::!ß

_output_shapes
::&à!

_output_shapes
:	
:!á

_output_shapes
:
:â

_output_shapes
: 
¤

ö
D__inference_dense_3_layer_call_and_return_conditional_losses_4829228

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
ü	
e
F__inference_dropout_3_layer_call_and_return_conditional_losses_4829412

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

ÿ
F__inference_conv2d_10_layer_call_and_return_conditional_losses_4832279

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
¾
G
+__inference_reshape_5_layer_call_fn_4832235

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
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_reshape_5_layer_call_and_return_conditional_losses_4829164h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÊP

I__inference_sequential_3_layer_call_and_return_conditional_losses_4829235

inputs*
conv2d_9_4828676:
conv2d_9_4828678:'
low_rank_layer_2_4829021:	'
low_rank_layer_2_4829023:	'
low_rank_layer_2_4829025:	'
low_rank_layer_2_4829027:	'
low_rank_layer_2_4829029:	'
low_rank_layer_2_4829031:	'
low_rank_layer_2_4829033:	'
low_rank_layer_2_4829035:	'
low_rank_layer_2_4829037:	'
low_rank_layer_2_4829039:	'
low_rank_layer_2_4829041:	'
low_rank_layer_2_4829043:	'
low_rank_layer_2_4829045:	'
low_rank_layer_2_4829047:	'
low_rank_layer_2_4829049:	'
low_rank_layer_2_4829051:	'
low_rank_layer_2_4829053:	'
low_rank_layer_2_4829055:	'
low_rank_layer_2_4829057:	'
low_rank_layer_2_4829059:	'
low_rank_layer_2_4829061:	'
low_rank_layer_2_4829063:	'
low_rank_layer_2_4829065:	'
low_rank_layer_2_4829067:	'
low_rank_layer_2_4829069:	'
low_rank_layer_2_4829071:	'
low_rank_layer_2_4829073:	'
low_rank_layer_2_4829075:	'
low_rank_layer_2_4829077:	'
low_rank_layer_2_4829079:	'
low_rank_layer_2_4829081:	'
low_rank_layer_2_4829083:	'
low_rank_layer_2_4829085:	'
low_rank_layer_2_4829087:	'
low_rank_layer_2_4829089:	'
low_rank_layer_2_4829091:	'
low_rank_layer_2_4829093:	'
low_rank_layer_2_4829095:	'
low_rank_layer_2_4829097:	'
low_rank_layer_2_4829099:	'
low_rank_layer_2_4829101:	'
low_rank_layer_2_4829103:	'
low_rank_layer_2_4829105:	'
low_rank_layer_2_4829107:	'
low_rank_layer_2_4829109:	'
low_rank_layer_2_4829111:	'
low_rank_layer_2_4829113:	'
low_rank_layer_2_4829115:	'
low_rank_layer_2_4829117:	'
low_rank_layer_2_4829119:	'
low_rank_layer_2_4829121:	'
low_rank_layer_2_4829123:	'
low_rank_layer_2_4829125:	'
low_rank_layer_2_4829127:	'
low_rank_layer_2_4829129:	'
low_rank_layer_2_4829131:	'
low_rank_layer_2_4829133:	'
low_rank_layer_2_4829135:	'
low_rank_layer_2_4829137:	'
low_rank_layer_2_4829139:	'
low_rank_layer_2_4829141:	'
low_rank_layer_2_4829143:	'
low_rank_layer_2_4829145:	'
low_rank_layer_2_4829147:	+
conv2d_10_4829179:
conv2d_10_4829181:+
conv2d_11_4829197:
conv2d_11_4829199:"
dense_3_4829229:	

dense_3_4829231:

identity¢!conv2d_10/StatefulPartitionedCall¢!conv2d_11/StatefulPartitionedCall¢ conv2d_9/StatefulPartitionedCall¢dense_3/StatefulPartitionedCall¢(low_rank_layer_2/StatefulPartitionedCallþ
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_9_4828676conv2d_9_4828678*
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
E__inference_conv2d_9_layer_call_and_return_conditional_losses_4828675æ
reshape_4/PartitionedCallPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_reshape_4_layer_call_and_return_conditional_losses_4828694ÿ
(low_rank_layer_2/StatefulPartitionedCallStatefulPartitionedCall"reshape_4/PartitionedCall:output:0low_rank_layer_2_4829021low_rank_layer_2_4829023low_rank_layer_2_4829025low_rank_layer_2_4829027low_rank_layer_2_4829029low_rank_layer_2_4829031low_rank_layer_2_4829033low_rank_layer_2_4829035low_rank_layer_2_4829037low_rank_layer_2_4829039low_rank_layer_2_4829041low_rank_layer_2_4829043low_rank_layer_2_4829045low_rank_layer_2_4829047low_rank_layer_2_4829049low_rank_layer_2_4829051low_rank_layer_2_4829053low_rank_layer_2_4829055low_rank_layer_2_4829057low_rank_layer_2_4829059low_rank_layer_2_4829061low_rank_layer_2_4829063low_rank_layer_2_4829065low_rank_layer_2_4829067low_rank_layer_2_4829069low_rank_layer_2_4829071low_rank_layer_2_4829073low_rank_layer_2_4829075low_rank_layer_2_4829077low_rank_layer_2_4829079low_rank_layer_2_4829081low_rank_layer_2_4829083low_rank_layer_2_4829085low_rank_layer_2_4829087low_rank_layer_2_4829089low_rank_layer_2_4829091low_rank_layer_2_4829093low_rank_layer_2_4829095low_rank_layer_2_4829097low_rank_layer_2_4829099low_rank_layer_2_4829101low_rank_layer_2_4829103low_rank_layer_2_4829105low_rank_layer_2_4829107low_rank_layer_2_4829109low_rank_layer_2_4829111low_rank_layer_2_4829113low_rank_layer_2_4829115low_rank_layer_2_4829117low_rank_layer_2_4829119low_rank_layer_2_4829121low_rank_layer_2_4829123low_rank_layer_2_4829125low_rank_layer_2_4829127low_rank_layer_2_4829129low_rank_layer_2_4829131low_rank_layer_2_4829133low_rank_layer_2_4829135low_rank_layer_2_4829137low_rank_layer_2_4829139low_rank_layer_2_4829141low_rank_layer_2_4829143low_rank_layer_2_4829145low_rank_layer_2_4829147*L
TinE
C2A*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*b
_read_only_resource_inputsD
B@	
 !"#$%&'()*+,-./0123456789:;<=>?@*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_low_rank_layer_2_layer_call_and_return_conditional_losses_4829020ñ
reshape_5/PartitionedCallPartitionedCall1low_rank_layer_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_reshape_5_layer_call_and_return_conditional_losses_4829164î
max_pooling2d_6/PartitionedCallPartitionedCall"reshape_5/PartitionedCall:output:0*
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
L__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_4828642¤
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_6/PartitionedCall:output:0conv2d_10_4829179conv2d_10_4829181*
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
GPU2*0J 8 *O
fJRH
F__inference_conv2d_10_layer_call_and_return_conditional_losses_4829178ö
max_pooling2d_7/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
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
L__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_4828654¤
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_7/PartitionedCall:output:0conv2d_11_4829197conv2d_11_4829199*
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
GPU2*0J 8 *O
fJRH
F__inference_conv2d_11_layer_call_and_return_conditional_losses_4829196ã
flatten_3/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
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
F__inference_flatten_3_layer_call_and_return_conditional_losses_4829208Û
dropout_3/PartitionedCallPartitionedCall"flatten_3/PartitionedCall:output:0*
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
F__inference_dropout_3_layer_call_and_return_conditional_losses_4829215
dense_3/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0dense_3_4829229dense_3_4829231*
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
D__inference_dense_3_layer_call_and_return_conditional_losses_4829228w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
þ
NoOpNoOp"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall)^low_rank_layer_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*À
_input_shapes®
«:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2T
(low_rank_layer_2/StatefulPartitionedCall(low_rank_layer_2/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

h
L__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_4832259

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
ñ
 
+__inference_conv2d_11_layer_call_fn_4832298

inputs!
unknown:
	unknown_0:
identity¢StatefulPartitionedCallæ
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
GPU2*0J 8 *O
fJRH
F__inference_conv2d_11_layer_call_and_return_conditional_losses_4829196w
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
×
b
F__inference_reshape_5_layer_call_and_return_conditional_losses_4832249

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
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :©
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:l
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

þ
E__inference_conv2d_9_layer_call_and_return_conditional_losses_4831755

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
å÷

#__inference__traced_restore_4833750
file_prefix:
 assignvariableop_conv2d_9_kernel:.
 assignvariableop_1_conv2d_9_bias:+
assignvariableop_2_weightu_0:	+
assignvariableop_3_weightv_0:	+
assignvariableop_4_weightu_1:	+
assignvariableop_5_weightv_1:	+
assignvariableop_6_weightu_2:	+
assignvariableop_7_weightv_2:	+
assignvariableop_8_weightu_3:	+
assignvariableop_9_weightv_3:	,
assignvariableop_10_weightu_4:	,
assignvariableop_11_weightv_4:	,
assignvariableop_12_weightu_5:	,
assignvariableop_13_weightv_5:	,
assignvariableop_14_weightu_6:	,
assignvariableop_15_weightv_6:	,
assignvariableop_16_weightu_7:	,
assignvariableop_17_weightv_7:	,
assignvariableop_18_weightu_8:	,
assignvariableop_19_weightv_8:	,
assignvariableop_20_weightu_9:	,
assignvariableop_21_weightv_9:	-
assignvariableop_22_weightu_10:	-
assignvariableop_23_weightv_10:	-
assignvariableop_24_weightu_11:	-
assignvariableop_25_weightv_11:	-
assignvariableop_26_weightu_12:	-
assignvariableop_27_weightv_12:	-
assignvariableop_28_weightu_13:	-
assignvariableop_29_weightv_13:	-
assignvariableop_30_weightu_14:	-
assignvariableop_31_weightv_14:	-
assignvariableop_32_weightu_15:	-
assignvariableop_33_weightv_15:	-
assignvariableop_34_weightu_16:	-
assignvariableop_35_weightv_16:	-
assignvariableop_36_weightu_17:	-
assignvariableop_37_weightv_17:	-
assignvariableop_38_weightu_18:	-
assignvariableop_39_weightv_18:	-
assignvariableop_40_weightu_19:	-
assignvariableop_41_weightv_19:	-
assignvariableop_42_weightu_20:	-
assignvariableop_43_weightv_20:	-
assignvariableop_44_weightu_21:	-
assignvariableop_45_weightv_21:	-
assignvariableop_46_weightu_22:	-
assignvariableop_47_weightv_22:	-
assignvariableop_48_weightu_23:	-
assignvariableop_49_weightv_23:	-
assignvariableop_50_weightu_24:	-
assignvariableop_51_weightv_24:	-
assignvariableop_52_weightu_25:	-
assignvariableop_53_weightv_25:	-
assignvariableop_54_weightu_26:	-
assignvariableop_55_weightv_26:	-
assignvariableop_56_weightu_27:	-
assignvariableop_57_weightv_27:	-
assignvariableop_58_weightu_28:	-
assignvariableop_59_weightv_28:	-
assignvariableop_60_weightu_29:	-
assignvariableop_61_weightv_29:	-
assignvariableop_62_weightu_30:	-
assignvariableop_63_weightv_30:	-
assignvariableop_64_weightu_31:	-
assignvariableop_65_weightv_31:	>
$assignvariableop_66_conv2d_10_kernel:0
"assignvariableop_67_conv2d_10_bias:>
$assignvariableop_68_conv2d_11_kernel:0
"assignvariableop_69_conv2d_11_bias:5
"assignvariableop_70_dense_3_kernel:	
.
 assignvariableop_71_dense_3_bias:
'
assignvariableop_72_adam_iter:	 )
assignvariableop_73_adam_beta_1: )
assignvariableop_74_adam_beta_2: (
assignvariableop_75_adam_decay: 0
&assignvariableop_76_adam_learning_rate: %
assignvariableop_77_total_1: %
assignvariableop_78_count_1: #
assignvariableop_79_total: #
assignvariableop_80_count: D
*assignvariableop_81_adam_conv2d_9_kernel_m:6
(assignvariableop_82_adam_conv2d_9_bias_m:3
$assignvariableop_83_adam_weightu_0_m:	3
$assignvariableop_84_adam_weightv_0_m:	3
$assignvariableop_85_adam_weightu_1_m:	3
$assignvariableop_86_adam_weightv_1_m:	3
$assignvariableop_87_adam_weightu_2_m:	3
$assignvariableop_88_adam_weightv_2_m:	3
$assignvariableop_89_adam_weightu_3_m:	3
$assignvariableop_90_adam_weightv_3_m:	3
$assignvariableop_91_adam_weightu_4_m:	3
$assignvariableop_92_adam_weightv_4_m:	3
$assignvariableop_93_adam_weightu_5_m:	3
$assignvariableop_94_adam_weightv_5_m:	3
$assignvariableop_95_adam_weightu_6_m:	3
$assignvariableop_96_adam_weightv_6_m:	3
$assignvariableop_97_adam_weightu_7_m:	3
$assignvariableop_98_adam_weightv_7_m:	3
$assignvariableop_99_adam_weightu_8_m:	4
%assignvariableop_100_adam_weightv_8_m:	4
%assignvariableop_101_adam_weightu_9_m:	4
%assignvariableop_102_adam_weightv_9_m:	5
&assignvariableop_103_adam_weightu_10_m:	5
&assignvariableop_104_adam_weightv_10_m:	5
&assignvariableop_105_adam_weightu_11_m:	5
&assignvariableop_106_adam_weightv_11_m:	5
&assignvariableop_107_adam_weightu_12_m:	5
&assignvariableop_108_adam_weightv_12_m:	5
&assignvariableop_109_adam_weightu_13_m:	5
&assignvariableop_110_adam_weightv_13_m:	5
&assignvariableop_111_adam_weightu_14_m:	5
&assignvariableop_112_adam_weightv_14_m:	5
&assignvariableop_113_adam_weightu_15_m:	5
&assignvariableop_114_adam_weightv_15_m:	5
&assignvariableop_115_adam_weightu_16_m:	5
&assignvariableop_116_adam_weightv_16_m:	5
&assignvariableop_117_adam_weightu_17_m:	5
&assignvariableop_118_adam_weightv_17_m:	5
&assignvariableop_119_adam_weightu_18_m:	5
&assignvariableop_120_adam_weightv_18_m:	5
&assignvariableop_121_adam_weightu_19_m:	5
&assignvariableop_122_adam_weightv_19_m:	5
&assignvariableop_123_adam_weightu_20_m:	5
&assignvariableop_124_adam_weightv_20_m:	5
&assignvariableop_125_adam_weightu_21_m:	5
&assignvariableop_126_adam_weightv_21_m:	5
&assignvariableop_127_adam_weightu_22_m:	5
&assignvariableop_128_adam_weightv_22_m:	5
&assignvariableop_129_adam_weightu_23_m:	5
&assignvariableop_130_adam_weightv_23_m:	5
&assignvariableop_131_adam_weightu_24_m:	5
&assignvariableop_132_adam_weightv_24_m:	5
&assignvariableop_133_adam_weightu_25_m:	5
&assignvariableop_134_adam_weightv_25_m:	5
&assignvariableop_135_adam_weightu_26_m:	5
&assignvariableop_136_adam_weightv_26_m:	5
&assignvariableop_137_adam_weightu_27_m:	5
&assignvariableop_138_adam_weightv_27_m:	5
&assignvariableop_139_adam_weightu_28_m:	5
&assignvariableop_140_adam_weightv_28_m:	5
&assignvariableop_141_adam_weightu_29_m:	5
&assignvariableop_142_adam_weightv_29_m:	5
&assignvariableop_143_adam_weightu_30_m:	5
&assignvariableop_144_adam_weightv_30_m:	5
&assignvariableop_145_adam_weightu_31_m:	5
&assignvariableop_146_adam_weightv_31_m:	F
,assignvariableop_147_adam_conv2d_10_kernel_m:8
*assignvariableop_148_adam_conv2d_10_bias_m:F
,assignvariableop_149_adam_conv2d_11_kernel_m:8
*assignvariableop_150_adam_conv2d_11_bias_m:=
*assignvariableop_151_adam_dense_3_kernel_m:	
6
(assignvariableop_152_adam_dense_3_bias_m:
E
+assignvariableop_153_adam_conv2d_9_kernel_v:7
)assignvariableop_154_adam_conv2d_9_bias_v:4
%assignvariableop_155_adam_weightu_0_v:	4
%assignvariableop_156_adam_weightv_0_v:	4
%assignvariableop_157_adam_weightu_1_v:	4
%assignvariableop_158_adam_weightv_1_v:	4
%assignvariableop_159_adam_weightu_2_v:	4
%assignvariableop_160_adam_weightv_2_v:	4
%assignvariableop_161_adam_weightu_3_v:	4
%assignvariableop_162_adam_weightv_3_v:	4
%assignvariableop_163_adam_weightu_4_v:	4
%assignvariableop_164_adam_weightv_4_v:	4
%assignvariableop_165_adam_weightu_5_v:	4
%assignvariableop_166_adam_weightv_5_v:	4
%assignvariableop_167_adam_weightu_6_v:	4
%assignvariableop_168_adam_weightv_6_v:	4
%assignvariableop_169_adam_weightu_7_v:	4
%assignvariableop_170_adam_weightv_7_v:	4
%assignvariableop_171_adam_weightu_8_v:	4
%assignvariableop_172_adam_weightv_8_v:	4
%assignvariableop_173_adam_weightu_9_v:	4
%assignvariableop_174_adam_weightv_9_v:	5
&assignvariableop_175_adam_weightu_10_v:	5
&assignvariableop_176_adam_weightv_10_v:	5
&assignvariableop_177_adam_weightu_11_v:	5
&assignvariableop_178_adam_weightv_11_v:	5
&assignvariableop_179_adam_weightu_12_v:	5
&assignvariableop_180_adam_weightv_12_v:	5
&assignvariableop_181_adam_weightu_13_v:	5
&assignvariableop_182_adam_weightv_13_v:	5
&assignvariableop_183_adam_weightu_14_v:	5
&assignvariableop_184_adam_weightv_14_v:	5
&assignvariableop_185_adam_weightu_15_v:	5
&assignvariableop_186_adam_weightv_15_v:	5
&assignvariableop_187_adam_weightu_16_v:	5
&assignvariableop_188_adam_weightv_16_v:	5
&assignvariableop_189_adam_weightu_17_v:	5
&assignvariableop_190_adam_weightv_17_v:	5
&assignvariableop_191_adam_weightu_18_v:	5
&assignvariableop_192_adam_weightv_18_v:	5
&assignvariableop_193_adam_weightu_19_v:	5
&assignvariableop_194_adam_weightv_19_v:	5
&assignvariableop_195_adam_weightu_20_v:	5
&assignvariableop_196_adam_weightv_20_v:	5
&assignvariableop_197_adam_weightu_21_v:	5
&assignvariableop_198_adam_weightv_21_v:	5
&assignvariableop_199_adam_weightu_22_v:	5
&assignvariableop_200_adam_weightv_22_v:	5
&assignvariableop_201_adam_weightu_23_v:	5
&assignvariableop_202_adam_weightv_23_v:	5
&assignvariableop_203_adam_weightu_24_v:	5
&assignvariableop_204_adam_weightv_24_v:	5
&assignvariableop_205_adam_weightu_25_v:	5
&assignvariableop_206_adam_weightv_25_v:	5
&assignvariableop_207_adam_weightu_26_v:	5
&assignvariableop_208_adam_weightv_26_v:	5
&assignvariableop_209_adam_weightu_27_v:	5
&assignvariableop_210_adam_weightv_27_v:	5
&assignvariableop_211_adam_weightu_28_v:	5
&assignvariableop_212_adam_weightv_28_v:	5
&assignvariableop_213_adam_weightu_29_v:	5
&assignvariableop_214_adam_weightv_29_v:	5
&assignvariableop_215_adam_weightu_30_v:	5
&assignvariableop_216_adam_weightv_30_v:	5
&assignvariableop_217_adam_weightu_31_v:	5
&assignvariableop_218_adam_weightv_31_v:	F
,assignvariableop_219_adam_conv2d_10_kernel_v:8
*assignvariableop_220_adam_conv2d_10_bias_v:F
,assignvariableop_221_adam_conv2d_11_kernel_v:8
*assignvariableop_222_adam_conv2d_11_bias_v:=
*assignvariableop_223_adam_dense_3_kernel_v:	
6
(assignvariableop_224_adam_dense_3_bias_v:

identity_226¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_100¢AssignVariableOp_101¢AssignVariableOp_102¢AssignVariableOp_103¢AssignVariableOp_104¢AssignVariableOp_105¢AssignVariableOp_106¢AssignVariableOp_107¢AssignVariableOp_108¢AssignVariableOp_109¢AssignVariableOp_11¢AssignVariableOp_110¢AssignVariableOp_111¢AssignVariableOp_112¢AssignVariableOp_113¢AssignVariableOp_114¢AssignVariableOp_115¢AssignVariableOp_116¢AssignVariableOp_117¢AssignVariableOp_118¢AssignVariableOp_119¢AssignVariableOp_12¢AssignVariableOp_120¢AssignVariableOp_121¢AssignVariableOp_122¢AssignVariableOp_123¢AssignVariableOp_124¢AssignVariableOp_125¢AssignVariableOp_126¢AssignVariableOp_127¢AssignVariableOp_128¢AssignVariableOp_129¢AssignVariableOp_13¢AssignVariableOp_130¢AssignVariableOp_131¢AssignVariableOp_132¢AssignVariableOp_133¢AssignVariableOp_134¢AssignVariableOp_135¢AssignVariableOp_136¢AssignVariableOp_137¢AssignVariableOp_138¢AssignVariableOp_139¢AssignVariableOp_14¢AssignVariableOp_140¢AssignVariableOp_141¢AssignVariableOp_142¢AssignVariableOp_143¢AssignVariableOp_144¢AssignVariableOp_145¢AssignVariableOp_146¢AssignVariableOp_147¢AssignVariableOp_148¢AssignVariableOp_149¢AssignVariableOp_15¢AssignVariableOp_150¢AssignVariableOp_151¢AssignVariableOp_152¢AssignVariableOp_153¢AssignVariableOp_154¢AssignVariableOp_155¢AssignVariableOp_156¢AssignVariableOp_157¢AssignVariableOp_158¢AssignVariableOp_159¢AssignVariableOp_16¢AssignVariableOp_160¢AssignVariableOp_161¢AssignVariableOp_162¢AssignVariableOp_163¢AssignVariableOp_164¢AssignVariableOp_165¢AssignVariableOp_166¢AssignVariableOp_167¢AssignVariableOp_168¢AssignVariableOp_169¢AssignVariableOp_17¢AssignVariableOp_170¢AssignVariableOp_171¢AssignVariableOp_172¢AssignVariableOp_173¢AssignVariableOp_174¢AssignVariableOp_175¢AssignVariableOp_176¢AssignVariableOp_177¢AssignVariableOp_178¢AssignVariableOp_179¢AssignVariableOp_18¢AssignVariableOp_180¢AssignVariableOp_181¢AssignVariableOp_182¢AssignVariableOp_183¢AssignVariableOp_184¢AssignVariableOp_185¢AssignVariableOp_186¢AssignVariableOp_187¢AssignVariableOp_188¢AssignVariableOp_189¢AssignVariableOp_19¢AssignVariableOp_190¢AssignVariableOp_191¢AssignVariableOp_192¢AssignVariableOp_193¢AssignVariableOp_194¢AssignVariableOp_195¢AssignVariableOp_196¢AssignVariableOp_197¢AssignVariableOp_198¢AssignVariableOp_199¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_200¢AssignVariableOp_201¢AssignVariableOp_202¢AssignVariableOp_203¢AssignVariableOp_204¢AssignVariableOp_205¢AssignVariableOp_206¢AssignVariableOp_207¢AssignVariableOp_208¢AssignVariableOp_209¢AssignVariableOp_21¢AssignVariableOp_210¢AssignVariableOp_211¢AssignVariableOp_212¢AssignVariableOp_213¢AssignVariableOp_214¢AssignVariableOp_215¢AssignVariableOp_216¢AssignVariableOp_217¢AssignVariableOp_218¢AssignVariableOp_219¢AssignVariableOp_22¢AssignVariableOp_220¢AssignVariableOp_221¢AssignVariableOp_222¢AssignVariableOp_223¢AssignVariableOp_224¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_46¢AssignVariableOp_47¢AssignVariableOp_48¢AssignVariableOp_49¢AssignVariableOp_5¢AssignVariableOp_50¢AssignVariableOp_51¢AssignVariableOp_52¢AssignVariableOp_53¢AssignVariableOp_54¢AssignVariableOp_55¢AssignVariableOp_56¢AssignVariableOp_57¢AssignVariableOp_58¢AssignVariableOp_59¢AssignVariableOp_6¢AssignVariableOp_60¢AssignVariableOp_61¢AssignVariableOp_62¢AssignVariableOp_63¢AssignVariableOp_64¢AssignVariableOp_65¢AssignVariableOp_66¢AssignVariableOp_67¢AssignVariableOp_68¢AssignVariableOp_69¢AssignVariableOp_7¢AssignVariableOp_70¢AssignVariableOp_71¢AssignVariableOp_72¢AssignVariableOp_73¢AssignVariableOp_74¢AssignVariableOp_75¢AssignVariableOp_76¢AssignVariableOp_77¢AssignVariableOp_78¢AssignVariableOp_79¢AssignVariableOp_8¢AssignVariableOp_80¢AssignVariableOp_81¢AssignVariableOp_82¢AssignVariableOp_83¢AssignVariableOp_84¢AssignVariableOp_85¢AssignVariableOp_86¢AssignVariableOp_87¢AssignVariableOp_88¢AssignVariableOp_89¢AssignVariableOp_9¢AssignVariableOp_90¢AssignVariableOp_91¢AssignVariableOp_92¢AssignVariableOp_93¢AssignVariableOp_94¢AssignVariableOp_95¢AssignVariableOp_96¢AssignVariableOp_97¢AssignVariableOp_98¢AssignVariableOp_99û
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:â*
dtype0*
valueBâB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-1/weightu_0/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-1/weightv_0/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-1/weightu_1/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-1/weightv_1/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-1/weightu_2/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-1/weightv_2/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-1/weightu_3/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-1/weightv_3/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-1/weightu_4/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-1/weightv_4/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-1/weightu_5/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-1/weightv_5/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-1/weightu_6/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-1/weightv_6/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-1/weightu_7/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-1/weightv_7/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-1/weightu_8/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-1/weightv_8/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-1/weightu_9/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-1/weightv_9/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightu_10/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightv_10/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightu_11/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightv_11/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightu_12/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightv_12/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightu_13/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightv_13/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightu_14/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightv_14/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightu_15/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightv_15/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightu_16/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightv_16/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightu_17/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightv_17/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightu_18/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightv_18/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightu_19/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightv_19/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightu_20/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightv_20/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightu_21/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightv_21/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightu_22/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightv_22/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightu_23/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightv_23/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightu_24/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightv_24/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightu_25/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightv_25/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightu_26/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightv_26/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightu_27/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightv_27/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightu_28/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightv_28/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightu_29/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightv_29/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightu_30/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightv_30/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightu_31/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/weightv_31/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightu_0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightv_0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightu_1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightv_1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightu_2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightv_2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightu_3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightv_3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightu_4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightv_4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightu_5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightv_5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightu_6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightv_6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightu_7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightv_7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightu_8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightv_8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightu_9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightv_9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_22/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_22/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_23/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_23/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_24/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_24/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_25/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_25/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_28/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_28/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_29/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_29/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_30/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_30/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_31/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_31/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightu_0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightv_0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightu_1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightv_1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightu_2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightv_2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightu_3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightv_3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightu_4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightv_4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightu_5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightv_5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightu_6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightv_6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightu_7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightv_7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightu_8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightv_8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightu_9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/weightv_9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_22/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_22/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_23/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_23/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_24/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_24/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_25/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_25/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_28/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_28/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_29/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_29/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_30/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_30/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightu_31/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/weightv_31/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH¹
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:â*
dtype0*Ú
valueÐBÍâB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 

	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*ó
dtypesè
å2â	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp assignvariableop_conv2d_9_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv2d_9_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOpassignvariableop_2_weightu_0Identity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOpassignvariableop_3_weightv_0Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOpassignvariableop_4_weightu_1Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOpassignvariableop_5_weightv_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOpassignvariableop_6_weightu_2Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_weightv_2Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOpassignvariableop_8_weightu_3Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_weightv_3Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOpassignvariableop_10_weightu_4Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOpassignvariableop_11_weightv_4Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOpassignvariableop_12_weightu_5Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOpassignvariableop_13_weightv_5Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOpassignvariableop_14_weightu_6Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_weightv_6Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_weightu_7Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOpassignvariableop_17_weightv_7Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOpassignvariableop_18_weightu_8Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOpassignvariableop_19_weightv_8Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOpassignvariableop_20_weightu_9Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOpassignvariableop_21_weightv_9Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOpassignvariableop_22_weightu_10Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOpassignvariableop_23_weightv_10Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOpassignvariableop_24_weightu_11Identity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOpassignvariableop_25_weightv_11Identity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOpassignvariableop_26_weightu_12Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOpassignvariableop_27_weightv_12Identity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOpassignvariableop_28_weightu_13Identity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOpassignvariableop_29_weightv_13Identity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOpassignvariableop_30_weightu_14Identity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOpassignvariableop_31_weightv_14Identity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOpassignvariableop_32_weightu_15Identity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOpassignvariableop_33_weightv_15Identity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOpassignvariableop_34_weightu_16Identity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOpassignvariableop_35_weightv_16Identity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_36AssignVariableOpassignvariableop_36_weightu_17Identity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_37AssignVariableOpassignvariableop_37_weightv_17Identity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_38AssignVariableOpassignvariableop_38_weightu_18Identity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_39AssignVariableOpassignvariableop_39_weightv_18Identity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_40AssignVariableOpassignvariableop_40_weightu_19Identity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_41AssignVariableOpassignvariableop_41_weightv_19Identity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_42AssignVariableOpassignvariableop_42_weightu_20Identity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_43AssignVariableOpassignvariableop_43_weightv_20Identity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_44AssignVariableOpassignvariableop_44_weightu_21Identity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_45AssignVariableOpassignvariableop_45_weightv_21Identity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_46AssignVariableOpassignvariableop_46_weightu_22Identity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_47AssignVariableOpassignvariableop_47_weightv_22Identity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_48AssignVariableOpassignvariableop_48_weightu_23Identity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_49AssignVariableOpassignvariableop_49_weightv_23Identity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_50AssignVariableOpassignvariableop_50_weightu_24Identity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_51AssignVariableOpassignvariableop_51_weightv_24Identity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_52AssignVariableOpassignvariableop_52_weightu_25Identity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_53AssignVariableOpassignvariableop_53_weightv_25Identity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_54AssignVariableOpassignvariableop_54_weightu_26Identity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_55AssignVariableOpassignvariableop_55_weightv_26Identity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_56AssignVariableOpassignvariableop_56_weightu_27Identity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_57AssignVariableOpassignvariableop_57_weightv_27Identity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_58AssignVariableOpassignvariableop_58_weightu_28Identity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_59AssignVariableOpassignvariableop_59_weightv_28Identity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_60AssignVariableOpassignvariableop_60_weightu_29Identity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_61AssignVariableOpassignvariableop_61_weightv_29Identity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_62AssignVariableOpassignvariableop_62_weightu_30Identity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_63AssignVariableOpassignvariableop_63_weightv_30Identity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_64AssignVariableOpassignvariableop_64_weightu_31Identity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_65AssignVariableOpassignvariableop_65_weightv_31Identity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_66AssignVariableOp$assignvariableop_66_conv2d_10_kernelIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_67AssignVariableOp"assignvariableop_67_conv2d_10_biasIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_68AssignVariableOp$assignvariableop_68_conv2d_11_kernelIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_69AssignVariableOp"assignvariableop_69_conv2d_11_biasIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_70AssignVariableOp"assignvariableop_70_dense_3_kernelIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_71AssignVariableOp assignvariableop_71_dense_3_biasIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_72AssignVariableOpassignvariableop_72_adam_iterIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_73AssignVariableOpassignvariableop_73_adam_beta_1Identity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_74AssignVariableOpassignvariableop_74_adam_beta_2Identity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_75AssignVariableOpassignvariableop_75_adam_decayIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_76AssignVariableOp&assignvariableop_76_adam_learning_rateIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_77AssignVariableOpassignvariableop_77_total_1Identity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_78AssignVariableOpassignvariableop_78_count_1Identity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_79AssignVariableOpassignvariableop_79_totalIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_80AssignVariableOpassignvariableop_80_countIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_81AssignVariableOp*assignvariableop_81_adam_conv2d_9_kernel_mIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_82AssignVariableOp(assignvariableop_82_adam_conv2d_9_bias_mIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_83AssignVariableOp$assignvariableop_83_adam_weightu_0_mIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_84AssignVariableOp$assignvariableop_84_adam_weightv_0_mIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_85AssignVariableOp$assignvariableop_85_adam_weightu_1_mIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_86AssignVariableOp$assignvariableop_86_adam_weightv_1_mIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_87AssignVariableOp$assignvariableop_87_adam_weightu_2_mIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_88AssignVariableOp$assignvariableop_88_adam_weightv_2_mIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_89AssignVariableOp$assignvariableop_89_adam_weightu_3_mIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_90AssignVariableOp$assignvariableop_90_adam_weightv_3_mIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_91AssignVariableOp$assignvariableop_91_adam_weightu_4_mIdentity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_92AssignVariableOp$assignvariableop_92_adam_weightv_4_mIdentity_92:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_93AssignVariableOp$assignvariableop_93_adam_weightu_5_mIdentity_93:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_94AssignVariableOp$assignvariableop_94_adam_weightv_5_mIdentity_94:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_95AssignVariableOp$assignvariableop_95_adam_weightu_6_mIdentity_95:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_96AssignVariableOp$assignvariableop_96_adam_weightv_6_mIdentity_96:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_97AssignVariableOp$assignvariableop_97_adam_weightu_7_mIdentity_97:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_98AssignVariableOp$assignvariableop_98_adam_weightv_7_mIdentity_98:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_99AssignVariableOp$assignvariableop_99_adam_weightu_8_mIdentity_99:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_100AssignVariableOp%assignvariableop_100_adam_weightv_8_mIdentity_100:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_101IdentityRestoreV2:tensors:101"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_101AssignVariableOp%assignvariableop_101_adam_weightu_9_mIdentity_101:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_102IdentityRestoreV2:tensors:102"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_102AssignVariableOp%assignvariableop_102_adam_weightv_9_mIdentity_102:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_103IdentityRestoreV2:tensors:103"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_103AssignVariableOp&assignvariableop_103_adam_weightu_10_mIdentity_103:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_104IdentityRestoreV2:tensors:104"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_104AssignVariableOp&assignvariableop_104_adam_weightv_10_mIdentity_104:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_105IdentityRestoreV2:tensors:105"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_105AssignVariableOp&assignvariableop_105_adam_weightu_11_mIdentity_105:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_106IdentityRestoreV2:tensors:106"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_106AssignVariableOp&assignvariableop_106_adam_weightv_11_mIdentity_106:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_107IdentityRestoreV2:tensors:107"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_107AssignVariableOp&assignvariableop_107_adam_weightu_12_mIdentity_107:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_108IdentityRestoreV2:tensors:108"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_108AssignVariableOp&assignvariableop_108_adam_weightv_12_mIdentity_108:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_109IdentityRestoreV2:tensors:109"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_109AssignVariableOp&assignvariableop_109_adam_weightu_13_mIdentity_109:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_110IdentityRestoreV2:tensors:110"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_110AssignVariableOp&assignvariableop_110_adam_weightv_13_mIdentity_110:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_111IdentityRestoreV2:tensors:111"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_111AssignVariableOp&assignvariableop_111_adam_weightu_14_mIdentity_111:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_112IdentityRestoreV2:tensors:112"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_112AssignVariableOp&assignvariableop_112_adam_weightv_14_mIdentity_112:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_113IdentityRestoreV2:tensors:113"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_113AssignVariableOp&assignvariableop_113_adam_weightu_15_mIdentity_113:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_114IdentityRestoreV2:tensors:114"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_114AssignVariableOp&assignvariableop_114_adam_weightv_15_mIdentity_114:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_115IdentityRestoreV2:tensors:115"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_115AssignVariableOp&assignvariableop_115_adam_weightu_16_mIdentity_115:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_116IdentityRestoreV2:tensors:116"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_116AssignVariableOp&assignvariableop_116_adam_weightv_16_mIdentity_116:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_117IdentityRestoreV2:tensors:117"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_117AssignVariableOp&assignvariableop_117_adam_weightu_17_mIdentity_117:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_118IdentityRestoreV2:tensors:118"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_118AssignVariableOp&assignvariableop_118_adam_weightv_17_mIdentity_118:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_119IdentityRestoreV2:tensors:119"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_119AssignVariableOp&assignvariableop_119_adam_weightu_18_mIdentity_119:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_120IdentityRestoreV2:tensors:120"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_120AssignVariableOp&assignvariableop_120_adam_weightv_18_mIdentity_120:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_121IdentityRestoreV2:tensors:121"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_121AssignVariableOp&assignvariableop_121_adam_weightu_19_mIdentity_121:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_122IdentityRestoreV2:tensors:122"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_122AssignVariableOp&assignvariableop_122_adam_weightv_19_mIdentity_122:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_123IdentityRestoreV2:tensors:123"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_123AssignVariableOp&assignvariableop_123_adam_weightu_20_mIdentity_123:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_124IdentityRestoreV2:tensors:124"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_124AssignVariableOp&assignvariableop_124_adam_weightv_20_mIdentity_124:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_125IdentityRestoreV2:tensors:125"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_125AssignVariableOp&assignvariableop_125_adam_weightu_21_mIdentity_125:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_126IdentityRestoreV2:tensors:126"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_126AssignVariableOp&assignvariableop_126_adam_weightv_21_mIdentity_126:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_127IdentityRestoreV2:tensors:127"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_127AssignVariableOp&assignvariableop_127_adam_weightu_22_mIdentity_127:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_128IdentityRestoreV2:tensors:128"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_128AssignVariableOp&assignvariableop_128_adam_weightv_22_mIdentity_128:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_129IdentityRestoreV2:tensors:129"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_129AssignVariableOp&assignvariableop_129_adam_weightu_23_mIdentity_129:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_130IdentityRestoreV2:tensors:130"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_130AssignVariableOp&assignvariableop_130_adam_weightv_23_mIdentity_130:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_131IdentityRestoreV2:tensors:131"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_131AssignVariableOp&assignvariableop_131_adam_weightu_24_mIdentity_131:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_132IdentityRestoreV2:tensors:132"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_132AssignVariableOp&assignvariableop_132_adam_weightv_24_mIdentity_132:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_133IdentityRestoreV2:tensors:133"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_133AssignVariableOp&assignvariableop_133_adam_weightu_25_mIdentity_133:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_134IdentityRestoreV2:tensors:134"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_134AssignVariableOp&assignvariableop_134_adam_weightv_25_mIdentity_134:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_135IdentityRestoreV2:tensors:135"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_135AssignVariableOp&assignvariableop_135_adam_weightu_26_mIdentity_135:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_136IdentityRestoreV2:tensors:136"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_136AssignVariableOp&assignvariableop_136_adam_weightv_26_mIdentity_136:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_137IdentityRestoreV2:tensors:137"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_137AssignVariableOp&assignvariableop_137_adam_weightu_27_mIdentity_137:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_138IdentityRestoreV2:tensors:138"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_138AssignVariableOp&assignvariableop_138_adam_weightv_27_mIdentity_138:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_139IdentityRestoreV2:tensors:139"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_139AssignVariableOp&assignvariableop_139_adam_weightu_28_mIdentity_139:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_140IdentityRestoreV2:tensors:140"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_140AssignVariableOp&assignvariableop_140_adam_weightv_28_mIdentity_140:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_141IdentityRestoreV2:tensors:141"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_141AssignVariableOp&assignvariableop_141_adam_weightu_29_mIdentity_141:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_142IdentityRestoreV2:tensors:142"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_142AssignVariableOp&assignvariableop_142_adam_weightv_29_mIdentity_142:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_143IdentityRestoreV2:tensors:143"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_143AssignVariableOp&assignvariableop_143_adam_weightu_30_mIdentity_143:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_144IdentityRestoreV2:tensors:144"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_144AssignVariableOp&assignvariableop_144_adam_weightv_30_mIdentity_144:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_145IdentityRestoreV2:tensors:145"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_145AssignVariableOp&assignvariableop_145_adam_weightu_31_mIdentity_145:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_146IdentityRestoreV2:tensors:146"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_146AssignVariableOp&assignvariableop_146_adam_weightv_31_mIdentity_146:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_147IdentityRestoreV2:tensors:147"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_147AssignVariableOp,assignvariableop_147_adam_conv2d_10_kernel_mIdentity_147:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_148IdentityRestoreV2:tensors:148"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_148AssignVariableOp*assignvariableop_148_adam_conv2d_10_bias_mIdentity_148:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_149IdentityRestoreV2:tensors:149"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_149AssignVariableOp,assignvariableop_149_adam_conv2d_11_kernel_mIdentity_149:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_150IdentityRestoreV2:tensors:150"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_150AssignVariableOp*assignvariableop_150_adam_conv2d_11_bias_mIdentity_150:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_151IdentityRestoreV2:tensors:151"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_151AssignVariableOp*assignvariableop_151_adam_dense_3_kernel_mIdentity_151:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_152IdentityRestoreV2:tensors:152"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_152AssignVariableOp(assignvariableop_152_adam_dense_3_bias_mIdentity_152:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_153IdentityRestoreV2:tensors:153"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_153AssignVariableOp+assignvariableop_153_adam_conv2d_9_kernel_vIdentity_153:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_154IdentityRestoreV2:tensors:154"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_154AssignVariableOp)assignvariableop_154_adam_conv2d_9_bias_vIdentity_154:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_155IdentityRestoreV2:tensors:155"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_155AssignVariableOp%assignvariableop_155_adam_weightu_0_vIdentity_155:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_156IdentityRestoreV2:tensors:156"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_156AssignVariableOp%assignvariableop_156_adam_weightv_0_vIdentity_156:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_157IdentityRestoreV2:tensors:157"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_157AssignVariableOp%assignvariableop_157_adam_weightu_1_vIdentity_157:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_158IdentityRestoreV2:tensors:158"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_158AssignVariableOp%assignvariableop_158_adam_weightv_1_vIdentity_158:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_159IdentityRestoreV2:tensors:159"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_159AssignVariableOp%assignvariableop_159_adam_weightu_2_vIdentity_159:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_160IdentityRestoreV2:tensors:160"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_160AssignVariableOp%assignvariableop_160_adam_weightv_2_vIdentity_160:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_161IdentityRestoreV2:tensors:161"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_161AssignVariableOp%assignvariableop_161_adam_weightu_3_vIdentity_161:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_162IdentityRestoreV2:tensors:162"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_162AssignVariableOp%assignvariableop_162_adam_weightv_3_vIdentity_162:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_163IdentityRestoreV2:tensors:163"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_163AssignVariableOp%assignvariableop_163_adam_weightu_4_vIdentity_163:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_164IdentityRestoreV2:tensors:164"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_164AssignVariableOp%assignvariableop_164_adam_weightv_4_vIdentity_164:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_165IdentityRestoreV2:tensors:165"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_165AssignVariableOp%assignvariableop_165_adam_weightu_5_vIdentity_165:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_166IdentityRestoreV2:tensors:166"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_166AssignVariableOp%assignvariableop_166_adam_weightv_5_vIdentity_166:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_167IdentityRestoreV2:tensors:167"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_167AssignVariableOp%assignvariableop_167_adam_weightu_6_vIdentity_167:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_168IdentityRestoreV2:tensors:168"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_168AssignVariableOp%assignvariableop_168_adam_weightv_6_vIdentity_168:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_169IdentityRestoreV2:tensors:169"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_169AssignVariableOp%assignvariableop_169_adam_weightu_7_vIdentity_169:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_170IdentityRestoreV2:tensors:170"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_170AssignVariableOp%assignvariableop_170_adam_weightv_7_vIdentity_170:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_171IdentityRestoreV2:tensors:171"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_171AssignVariableOp%assignvariableop_171_adam_weightu_8_vIdentity_171:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_172IdentityRestoreV2:tensors:172"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_172AssignVariableOp%assignvariableop_172_adam_weightv_8_vIdentity_172:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_173IdentityRestoreV2:tensors:173"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_173AssignVariableOp%assignvariableop_173_adam_weightu_9_vIdentity_173:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_174IdentityRestoreV2:tensors:174"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_174AssignVariableOp%assignvariableop_174_adam_weightv_9_vIdentity_174:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_175IdentityRestoreV2:tensors:175"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_175AssignVariableOp&assignvariableop_175_adam_weightu_10_vIdentity_175:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_176IdentityRestoreV2:tensors:176"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_176AssignVariableOp&assignvariableop_176_adam_weightv_10_vIdentity_176:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_177IdentityRestoreV2:tensors:177"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_177AssignVariableOp&assignvariableop_177_adam_weightu_11_vIdentity_177:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_178IdentityRestoreV2:tensors:178"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_178AssignVariableOp&assignvariableop_178_adam_weightv_11_vIdentity_178:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_179IdentityRestoreV2:tensors:179"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_179AssignVariableOp&assignvariableop_179_adam_weightu_12_vIdentity_179:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_180IdentityRestoreV2:tensors:180"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_180AssignVariableOp&assignvariableop_180_adam_weightv_12_vIdentity_180:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_181IdentityRestoreV2:tensors:181"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_181AssignVariableOp&assignvariableop_181_adam_weightu_13_vIdentity_181:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_182IdentityRestoreV2:tensors:182"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_182AssignVariableOp&assignvariableop_182_adam_weightv_13_vIdentity_182:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_183IdentityRestoreV2:tensors:183"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_183AssignVariableOp&assignvariableop_183_adam_weightu_14_vIdentity_183:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_184IdentityRestoreV2:tensors:184"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_184AssignVariableOp&assignvariableop_184_adam_weightv_14_vIdentity_184:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_185IdentityRestoreV2:tensors:185"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_185AssignVariableOp&assignvariableop_185_adam_weightu_15_vIdentity_185:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_186IdentityRestoreV2:tensors:186"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_186AssignVariableOp&assignvariableop_186_adam_weightv_15_vIdentity_186:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_187IdentityRestoreV2:tensors:187"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_187AssignVariableOp&assignvariableop_187_adam_weightu_16_vIdentity_187:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_188IdentityRestoreV2:tensors:188"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_188AssignVariableOp&assignvariableop_188_adam_weightv_16_vIdentity_188:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_189IdentityRestoreV2:tensors:189"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_189AssignVariableOp&assignvariableop_189_adam_weightu_17_vIdentity_189:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_190IdentityRestoreV2:tensors:190"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_190AssignVariableOp&assignvariableop_190_adam_weightv_17_vIdentity_190:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_191IdentityRestoreV2:tensors:191"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_191AssignVariableOp&assignvariableop_191_adam_weightu_18_vIdentity_191:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_192IdentityRestoreV2:tensors:192"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_192AssignVariableOp&assignvariableop_192_adam_weightv_18_vIdentity_192:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_193IdentityRestoreV2:tensors:193"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_193AssignVariableOp&assignvariableop_193_adam_weightu_19_vIdentity_193:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_194IdentityRestoreV2:tensors:194"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_194AssignVariableOp&assignvariableop_194_adam_weightv_19_vIdentity_194:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_195IdentityRestoreV2:tensors:195"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_195AssignVariableOp&assignvariableop_195_adam_weightu_20_vIdentity_195:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_196IdentityRestoreV2:tensors:196"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_196AssignVariableOp&assignvariableop_196_adam_weightv_20_vIdentity_196:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_197IdentityRestoreV2:tensors:197"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_197AssignVariableOp&assignvariableop_197_adam_weightu_21_vIdentity_197:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_198IdentityRestoreV2:tensors:198"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_198AssignVariableOp&assignvariableop_198_adam_weightv_21_vIdentity_198:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_199IdentityRestoreV2:tensors:199"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_199AssignVariableOp&assignvariableop_199_adam_weightu_22_vIdentity_199:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_200IdentityRestoreV2:tensors:200"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_200AssignVariableOp&assignvariableop_200_adam_weightv_22_vIdentity_200:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_201IdentityRestoreV2:tensors:201"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_201AssignVariableOp&assignvariableop_201_adam_weightu_23_vIdentity_201:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_202IdentityRestoreV2:tensors:202"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_202AssignVariableOp&assignvariableop_202_adam_weightv_23_vIdentity_202:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_203IdentityRestoreV2:tensors:203"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_203AssignVariableOp&assignvariableop_203_adam_weightu_24_vIdentity_203:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_204IdentityRestoreV2:tensors:204"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_204AssignVariableOp&assignvariableop_204_adam_weightv_24_vIdentity_204:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_205IdentityRestoreV2:tensors:205"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_205AssignVariableOp&assignvariableop_205_adam_weightu_25_vIdentity_205:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_206IdentityRestoreV2:tensors:206"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_206AssignVariableOp&assignvariableop_206_adam_weightv_25_vIdentity_206:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_207IdentityRestoreV2:tensors:207"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_207AssignVariableOp&assignvariableop_207_adam_weightu_26_vIdentity_207:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_208IdentityRestoreV2:tensors:208"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_208AssignVariableOp&assignvariableop_208_adam_weightv_26_vIdentity_208:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_209IdentityRestoreV2:tensors:209"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_209AssignVariableOp&assignvariableop_209_adam_weightu_27_vIdentity_209:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_210IdentityRestoreV2:tensors:210"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_210AssignVariableOp&assignvariableop_210_adam_weightv_27_vIdentity_210:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_211IdentityRestoreV2:tensors:211"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_211AssignVariableOp&assignvariableop_211_adam_weightu_28_vIdentity_211:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_212IdentityRestoreV2:tensors:212"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_212AssignVariableOp&assignvariableop_212_adam_weightv_28_vIdentity_212:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_213IdentityRestoreV2:tensors:213"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_213AssignVariableOp&assignvariableop_213_adam_weightu_29_vIdentity_213:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_214IdentityRestoreV2:tensors:214"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_214AssignVariableOp&assignvariableop_214_adam_weightv_29_vIdentity_214:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_215IdentityRestoreV2:tensors:215"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_215AssignVariableOp&assignvariableop_215_adam_weightu_30_vIdentity_215:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_216IdentityRestoreV2:tensors:216"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_216AssignVariableOp&assignvariableop_216_adam_weightv_30_vIdentity_216:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_217IdentityRestoreV2:tensors:217"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_217AssignVariableOp&assignvariableop_217_adam_weightu_31_vIdentity_217:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_218IdentityRestoreV2:tensors:218"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_218AssignVariableOp&assignvariableop_218_adam_weightv_31_vIdentity_218:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_219IdentityRestoreV2:tensors:219"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_219AssignVariableOp,assignvariableop_219_adam_conv2d_10_kernel_vIdentity_219:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_220IdentityRestoreV2:tensors:220"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_220AssignVariableOp*assignvariableop_220_adam_conv2d_10_bias_vIdentity_220:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_221IdentityRestoreV2:tensors:221"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_221AssignVariableOp,assignvariableop_221_adam_conv2d_11_kernel_vIdentity_221:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_222IdentityRestoreV2:tensors:222"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_222AssignVariableOp*assignvariableop_222_adam_conv2d_11_bias_vIdentity_222:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_223IdentityRestoreV2:tensors:223"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_223AssignVariableOp*assignvariableop_223_adam_dense_3_kernel_vIdentity_223:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_224IdentityRestoreV2:tensors:224"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_224AssignVariableOp(assignvariableop_224_adam_dense_3_bias_vIdentity_224:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 £(
Identity_225Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_125^AssignVariableOp_126^AssignVariableOp_127^AssignVariableOp_128^AssignVariableOp_129^AssignVariableOp_13^AssignVariableOp_130^AssignVariableOp_131^AssignVariableOp_132^AssignVariableOp_133^AssignVariableOp_134^AssignVariableOp_135^AssignVariableOp_136^AssignVariableOp_137^AssignVariableOp_138^AssignVariableOp_139^AssignVariableOp_14^AssignVariableOp_140^AssignVariableOp_141^AssignVariableOp_142^AssignVariableOp_143^AssignVariableOp_144^AssignVariableOp_145^AssignVariableOp_146^AssignVariableOp_147^AssignVariableOp_148^AssignVariableOp_149^AssignVariableOp_15^AssignVariableOp_150^AssignVariableOp_151^AssignVariableOp_152^AssignVariableOp_153^AssignVariableOp_154^AssignVariableOp_155^AssignVariableOp_156^AssignVariableOp_157^AssignVariableOp_158^AssignVariableOp_159^AssignVariableOp_16^AssignVariableOp_160^AssignVariableOp_161^AssignVariableOp_162^AssignVariableOp_163^AssignVariableOp_164^AssignVariableOp_165^AssignVariableOp_166^AssignVariableOp_167^AssignVariableOp_168^AssignVariableOp_169^AssignVariableOp_17^AssignVariableOp_170^AssignVariableOp_171^AssignVariableOp_172^AssignVariableOp_173^AssignVariableOp_174^AssignVariableOp_175^AssignVariableOp_176^AssignVariableOp_177^AssignVariableOp_178^AssignVariableOp_179^AssignVariableOp_18^AssignVariableOp_180^AssignVariableOp_181^AssignVariableOp_182^AssignVariableOp_183^AssignVariableOp_184^AssignVariableOp_185^AssignVariableOp_186^AssignVariableOp_187^AssignVariableOp_188^AssignVariableOp_189^AssignVariableOp_19^AssignVariableOp_190^AssignVariableOp_191^AssignVariableOp_192^AssignVariableOp_193^AssignVariableOp_194^AssignVariableOp_195^AssignVariableOp_196^AssignVariableOp_197^AssignVariableOp_198^AssignVariableOp_199^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_200^AssignVariableOp_201^AssignVariableOp_202^AssignVariableOp_203^AssignVariableOp_204^AssignVariableOp_205^AssignVariableOp_206^AssignVariableOp_207^AssignVariableOp_208^AssignVariableOp_209^AssignVariableOp_21^AssignVariableOp_210^AssignVariableOp_211^AssignVariableOp_212^AssignVariableOp_213^AssignVariableOp_214^AssignVariableOp_215^AssignVariableOp_216^AssignVariableOp_217^AssignVariableOp_218^AssignVariableOp_219^AssignVariableOp_22^AssignVariableOp_220^AssignVariableOp_221^AssignVariableOp_222^AssignVariableOp_223^AssignVariableOp_224^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99^NoOp"/device:CPU:0*
T0*
_output_shapes
: Y
Identity_226IdentityIdentity_225:output:0^NoOp_1*
T0*
_output_shapes
: (
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_125^AssignVariableOp_126^AssignVariableOp_127^AssignVariableOp_128^AssignVariableOp_129^AssignVariableOp_13^AssignVariableOp_130^AssignVariableOp_131^AssignVariableOp_132^AssignVariableOp_133^AssignVariableOp_134^AssignVariableOp_135^AssignVariableOp_136^AssignVariableOp_137^AssignVariableOp_138^AssignVariableOp_139^AssignVariableOp_14^AssignVariableOp_140^AssignVariableOp_141^AssignVariableOp_142^AssignVariableOp_143^AssignVariableOp_144^AssignVariableOp_145^AssignVariableOp_146^AssignVariableOp_147^AssignVariableOp_148^AssignVariableOp_149^AssignVariableOp_15^AssignVariableOp_150^AssignVariableOp_151^AssignVariableOp_152^AssignVariableOp_153^AssignVariableOp_154^AssignVariableOp_155^AssignVariableOp_156^AssignVariableOp_157^AssignVariableOp_158^AssignVariableOp_159^AssignVariableOp_16^AssignVariableOp_160^AssignVariableOp_161^AssignVariableOp_162^AssignVariableOp_163^AssignVariableOp_164^AssignVariableOp_165^AssignVariableOp_166^AssignVariableOp_167^AssignVariableOp_168^AssignVariableOp_169^AssignVariableOp_17^AssignVariableOp_170^AssignVariableOp_171^AssignVariableOp_172^AssignVariableOp_173^AssignVariableOp_174^AssignVariableOp_175^AssignVariableOp_176^AssignVariableOp_177^AssignVariableOp_178^AssignVariableOp_179^AssignVariableOp_18^AssignVariableOp_180^AssignVariableOp_181^AssignVariableOp_182^AssignVariableOp_183^AssignVariableOp_184^AssignVariableOp_185^AssignVariableOp_186^AssignVariableOp_187^AssignVariableOp_188^AssignVariableOp_189^AssignVariableOp_19^AssignVariableOp_190^AssignVariableOp_191^AssignVariableOp_192^AssignVariableOp_193^AssignVariableOp_194^AssignVariableOp_195^AssignVariableOp_196^AssignVariableOp_197^AssignVariableOp_198^AssignVariableOp_199^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_200^AssignVariableOp_201^AssignVariableOp_202^AssignVariableOp_203^AssignVariableOp_204^AssignVariableOp_205^AssignVariableOp_206^AssignVariableOp_207^AssignVariableOp_208^AssignVariableOp_209^AssignVariableOp_21^AssignVariableOp_210^AssignVariableOp_211^AssignVariableOp_212^AssignVariableOp_213^AssignVariableOp_214^AssignVariableOp_215^AssignVariableOp_216^AssignVariableOp_217^AssignVariableOp_218^AssignVariableOp_219^AssignVariableOp_22^AssignVariableOp_220^AssignVariableOp_221^AssignVariableOp_222^AssignVariableOp_223^AssignVariableOp_224^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99*"
_acd_function_control_output(*
_output_shapes
 "%
identity_226Identity_226:output:0*Ù
_input_shapesÇ
Ä: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102,
AssignVariableOp_100AssignVariableOp_1002,
AssignVariableOp_101AssignVariableOp_1012,
AssignVariableOp_102AssignVariableOp_1022,
AssignVariableOp_103AssignVariableOp_1032,
AssignVariableOp_104AssignVariableOp_1042,
AssignVariableOp_105AssignVariableOp_1052,
AssignVariableOp_106AssignVariableOp_1062,
AssignVariableOp_107AssignVariableOp_1072,
AssignVariableOp_108AssignVariableOp_1082,
AssignVariableOp_109AssignVariableOp_1092*
AssignVariableOp_11AssignVariableOp_112,
AssignVariableOp_110AssignVariableOp_1102,
AssignVariableOp_111AssignVariableOp_1112,
AssignVariableOp_112AssignVariableOp_1122,
AssignVariableOp_113AssignVariableOp_1132,
AssignVariableOp_114AssignVariableOp_1142,
AssignVariableOp_115AssignVariableOp_1152,
AssignVariableOp_116AssignVariableOp_1162,
AssignVariableOp_117AssignVariableOp_1172,
AssignVariableOp_118AssignVariableOp_1182,
AssignVariableOp_119AssignVariableOp_1192*
AssignVariableOp_12AssignVariableOp_122,
AssignVariableOp_120AssignVariableOp_1202,
AssignVariableOp_121AssignVariableOp_1212,
AssignVariableOp_122AssignVariableOp_1222,
AssignVariableOp_123AssignVariableOp_1232,
AssignVariableOp_124AssignVariableOp_1242,
AssignVariableOp_125AssignVariableOp_1252,
AssignVariableOp_126AssignVariableOp_1262,
AssignVariableOp_127AssignVariableOp_1272,
AssignVariableOp_128AssignVariableOp_1282,
AssignVariableOp_129AssignVariableOp_1292*
AssignVariableOp_13AssignVariableOp_132,
AssignVariableOp_130AssignVariableOp_1302,
AssignVariableOp_131AssignVariableOp_1312,
AssignVariableOp_132AssignVariableOp_1322,
AssignVariableOp_133AssignVariableOp_1332,
AssignVariableOp_134AssignVariableOp_1342,
AssignVariableOp_135AssignVariableOp_1352,
AssignVariableOp_136AssignVariableOp_1362,
AssignVariableOp_137AssignVariableOp_1372,
AssignVariableOp_138AssignVariableOp_1382,
AssignVariableOp_139AssignVariableOp_1392*
AssignVariableOp_14AssignVariableOp_142,
AssignVariableOp_140AssignVariableOp_1402,
AssignVariableOp_141AssignVariableOp_1412,
AssignVariableOp_142AssignVariableOp_1422,
AssignVariableOp_143AssignVariableOp_1432,
AssignVariableOp_144AssignVariableOp_1442,
AssignVariableOp_145AssignVariableOp_1452,
AssignVariableOp_146AssignVariableOp_1462,
AssignVariableOp_147AssignVariableOp_1472,
AssignVariableOp_148AssignVariableOp_1482,
AssignVariableOp_149AssignVariableOp_1492*
AssignVariableOp_15AssignVariableOp_152,
AssignVariableOp_150AssignVariableOp_1502,
AssignVariableOp_151AssignVariableOp_1512,
AssignVariableOp_152AssignVariableOp_1522,
AssignVariableOp_153AssignVariableOp_1532,
AssignVariableOp_154AssignVariableOp_1542,
AssignVariableOp_155AssignVariableOp_1552,
AssignVariableOp_156AssignVariableOp_1562,
AssignVariableOp_157AssignVariableOp_1572,
AssignVariableOp_158AssignVariableOp_1582,
AssignVariableOp_159AssignVariableOp_1592*
AssignVariableOp_16AssignVariableOp_162,
AssignVariableOp_160AssignVariableOp_1602,
AssignVariableOp_161AssignVariableOp_1612,
AssignVariableOp_162AssignVariableOp_1622,
AssignVariableOp_163AssignVariableOp_1632,
AssignVariableOp_164AssignVariableOp_1642,
AssignVariableOp_165AssignVariableOp_1652,
AssignVariableOp_166AssignVariableOp_1662,
AssignVariableOp_167AssignVariableOp_1672,
AssignVariableOp_168AssignVariableOp_1682,
AssignVariableOp_169AssignVariableOp_1692*
AssignVariableOp_17AssignVariableOp_172,
AssignVariableOp_170AssignVariableOp_1702,
AssignVariableOp_171AssignVariableOp_1712,
AssignVariableOp_172AssignVariableOp_1722,
AssignVariableOp_173AssignVariableOp_1732,
AssignVariableOp_174AssignVariableOp_1742,
AssignVariableOp_175AssignVariableOp_1752,
AssignVariableOp_176AssignVariableOp_1762,
AssignVariableOp_177AssignVariableOp_1772,
AssignVariableOp_178AssignVariableOp_1782,
AssignVariableOp_179AssignVariableOp_1792*
AssignVariableOp_18AssignVariableOp_182,
AssignVariableOp_180AssignVariableOp_1802,
AssignVariableOp_181AssignVariableOp_1812,
AssignVariableOp_182AssignVariableOp_1822,
AssignVariableOp_183AssignVariableOp_1832,
AssignVariableOp_184AssignVariableOp_1842,
AssignVariableOp_185AssignVariableOp_1852,
AssignVariableOp_186AssignVariableOp_1862,
AssignVariableOp_187AssignVariableOp_1872,
AssignVariableOp_188AssignVariableOp_1882,
AssignVariableOp_189AssignVariableOp_1892*
AssignVariableOp_19AssignVariableOp_192,
AssignVariableOp_190AssignVariableOp_1902,
AssignVariableOp_191AssignVariableOp_1912,
AssignVariableOp_192AssignVariableOp_1922,
AssignVariableOp_193AssignVariableOp_1932,
AssignVariableOp_194AssignVariableOp_1942,
AssignVariableOp_195AssignVariableOp_1952,
AssignVariableOp_196AssignVariableOp_1962,
AssignVariableOp_197AssignVariableOp_1972,
AssignVariableOp_198AssignVariableOp_1982,
AssignVariableOp_199AssignVariableOp_1992(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202,
AssignVariableOp_200AssignVariableOp_2002,
AssignVariableOp_201AssignVariableOp_2012,
AssignVariableOp_202AssignVariableOp_2022,
AssignVariableOp_203AssignVariableOp_2032,
AssignVariableOp_204AssignVariableOp_2042,
AssignVariableOp_205AssignVariableOp_2052,
AssignVariableOp_206AssignVariableOp_2062,
AssignVariableOp_207AssignVariableOp_2072,
AssignVariableOp_208AssignVariableOp_2082,
AssignVariableOp_209AssignVariableOp_2092*
AssignVariableOp_21AssignVariableOp_212,
AssignVariableOp_210AssignVariableOp_2102,
AssignVariableOp_211AssignVariableOp_2112,
AssignVariableOp_212AssignVariableOp_2122,
AssignVariableOp_213AssignVariableOp_2132,
AssignVariableOp_214AssignVariableOp_2142,
AssignVariableOp_215AssignVariableOp_2152,
AssignVariableOp_216AssignVariableOp_2162,
AssignVariableOp_217AssignVariableOp_2172,
AssignVariableOp_218AssignVariableOp_2182,
AssignVariableOp_219AssignVariableOp_2192*
AssignVariableOp_22AssignVariableOp_222,
AssignVariableOp_220AssignVariableOp_2202,
AssignVariableOp_221AssignVariableOp_2212,
AssignVariableOp_222AssignVariableOp_2222,
AssignVariableOp_223AssignVariableOp_2232,
AssignVariableOp_224AssignVariableOp_2242*
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
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952*
AssignVariableOp_96AssignVariableOp_962*
AssignVariableOp_97AssignVariableOp_972*
AssignVariableOp_98AssignVariableOp_982*
AssignVariableOp_99AssignVariableOp_99:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
È
b
F__inference_flatten_3_layer_call_and_return_conditional_losses_4829208

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
¾
G
+__inference_reshape_4_layer_call_fn_4831760

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
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_reshape_4_layer_call_and_return_conditional_losses_4828694e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÍP

I__inference_sequential_3_layer_call_and_return_conditional_losses_4830362
input_4*
conv2d_9_4830206:
conv2d_9_4830208:'
low_rank_layer_2_4830212:	'
low_rank_layer_2_4830214:	'
low_rank_layer_2_4830216:	'
low_rank_layer_2_4830218:	'
low_rank_layer_2_4830220:	'
low_rank_layer_2_4830222:	'
low_rank_layer_2_4830224:	'
low_rank_layer_2_4830226:	'
low_rank_layer_2_4830228:	'
low_rank_layer_2_4830230:	'
low_rank_layer_2_4830232:	'
low_rank_layer_2_4830234:	'
low_rank_layer_2_4830236:	'
low_rank_layer_2_4830238:	'
low_rank_layer_2_4830240:	'
low_rank_layer_2_4830242:	'
low_rank_layer_2_4830244:	'
low_rank_layer_2_4830246:	'
low_rank_layer_2_4830248:	'
low_rank_layer_2_4830250:	'
low_rank_layer_2_4830252:	'
low_rank_layer_2_4830254:	'
low_rank_layer_2_4830256:	'
low_rank_layer_2_4830258:	'
low_rank_layer_2_4830260:	'
low_rank_layer_2_4830262:	'
low_rank_layer_2_4830264:	'
low_rank_layer_2_4830266:	'
low_rank_layer_2_4830268:	'
low_rank_layer_2_4830270:	'
low_rank_layer_2_4830272:	'
low_rank_layer_2_4830274:	'
low_rank_layer_2_4830276:	'
low_rank_layer_2_4830278:	'
low_rank_layer_2_4830280:	'
low_rank_layer_2_4830282:	'
low_rank_layer_2_4830284:	'
low_rank_layer_2_4830286:	'
low_rank_layer_2_4830288:	'
low_rank_layer_2_4830290:	'
low_rank_layer_2_4830292:	'
low_rank_layer_2_4830294:	'
low_rank_layer_2_4830296:	'
low_rank_layer_2_4830298:	'
low_rank_layer_2_4830300:	'
low_rank_layer_2_4830302:	'
low_rank_layer_2_4830304:	'
low_rank_layer_2_4830306:	'
low_rank_layer_2_4830308:	'
low_rank_layer_2_4830310:	'
low_rank_layer_2_4830312:	'
low_rank_layer_2_4830314:	'
low_rank_layer_2_4830316:	'
low_rank_layer_2_4830318:	'
low_rank_layer_2_4830320:	'
low_rank_layer_2_4830322:	'
low_rank_layer_2_4830324:	'
low_rank_layer_2_4830326:	'
low_rank_layer_2_4830328:	'
low_rank_layer_2_4830330:	'
low_rank_layer_2_4830332:	'
low_rank_layer_2_4830334:	'
low_rank_layer_2_4830336:	'
low_rank_layer_2_4830338:	+
conv2d_10_4830343:
conv2d_10_4830345:+
conv2d_11_4830349:
conv2d_11_4830351:"
dense_3_4830356:	

dense_3_4830358:

identity¢!conv2d_10/StatefulPartitionedCall¢!conv2d_11/StatefulPartitionedCall¢ conv2d_9/StatefulPartitionedCall¢dense_3/StatefulPartitionedCall¢(low_rank_layer_2/StatefulPartitionedCallÿ
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCallinput_4conv2d_9_4830206conv2d_9_4830208*
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
E__inference_conv2d_9_layer_call_and_return_conditional_losses_4828675æ
reshape_4/PartitionedCallPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_reshape_4_layer_call_and_return_conditional_losses_4828694ÿ
(low_rank_layer_2/StatefulPartitionedCallStatefulPartitionedCall"reshape_4/PartitionedCall:output:0low_rank_layer_2_4830212low_rank_layer_2_4830214low_rank_layer_2_4830216low_rank_layer_2_4830218low_rank_layer_2_4830220low_rank_layer_2_4830222low_rank_layer_2_4830224low_rank_layer_2_4830226low_rank_layer_2_4830228low_rank_layer_2_4830230low_rank_layer_2_4830232low_rank_layer_2_4830234low_rank_layer_2_4830236low_rank_layer_2_4830238low_rank_layer_2_4830240low_rank_layer_2_4830242low_rank_layer_2_4830244low_rank_layer_2_4830246low_rank_layer_2_4830248low_rank_layer_2_4830250low_rank_layer_2_4830252low_rank_layer_2_4830254low_rank_layer_2_4830256low_rank_layer_2_4830258low_rank_layer_2_4830260low_rank_layer_2_4830262low_rank_layer_2_4830264low_rank_layer_2_4830266low_rank_layer_2_4830268low_rank_layer_2_4830270low_rank_layer_2_4830272low_rank_layer_2_4830274low_rank_layer_2_4830276low_rank_layer_2_4830278low_rank_layer_2_4830280low_rank_layer_2_4830282low_rank_layer_2_4830284low_rank_layer_2_4830286low_rank_layer_2_4830288low_rank_layer_2_4830290low_rank_layer_2_4830292low_rank_layer_2_4830294low_rank_layer_2_4830296low_rank_layer_2_4830298low_rank_layer_2_4830300low_rank_layer_2_4830302low_rank_layer_2_4830304low_rank_layer_2_4830306low_rank_layer_2_4830308low_rank_layer_2_4830310low_rank_layer_2_4830312low_rank_layer_2_4830314low_rank_layer_2_4830316low_rank_layer_2_4830318low_rank_layer_2_4830320low_rank_layer_2_4830322low_rank_layer_2_4830324low_rank_layer_2_4830326low_rank_layer_2_4830328low_rank_layer_2_4830330low_rank_layer_2_4830332low_rank_layer_2_4830334low_rank_layer_2_4830336low_rank_layer_2_4830338*L
TinE
C2A*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*b
_read_only_resource_inputsD
B@	
 !"#$%&'()*+,-./0123456789:;<=>?@*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_low_rank_layer_2_layer_call_and_return_conditional_losses_4829020ñ
reshape_5/PartitionedCallPartitionedCall1low_rank_layer_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_reshape_5_layer_call_and_return_conditional_losses_4829164î
max_pooling2d_6/PartitionedCallPartitionedCall"reshape_5/PartitionedCall:output:0*
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
L__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_4828642¤
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_6/PartitionedCall:output:0conv2d_10_4830343conv2d_10_4830345*
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
GPU2*0J 8 *O
fJRH
F__inference_conv2d_10_layer_call_and_return_conditional_losses_4829178ö
max_pooling2d_7/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
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
L__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_4828654¤
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_7/PartitionedCall:output:0conv2d_11_4830349conv2d_11_4830351*
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
GPU2*0J 8 *O
fJRH
F__inference_conv2d_11_layer_call_and_return_conditional_losses_4829196ã
flatten_3/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
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
F__inference_flatten_3_layer_call_and_return_conditional_losses_4829208Û
dropout_3/PartitionedCallPartitionedCall"flatten_3/PartitionedCall:output:0*
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
F__inference_dropout_3_layer_call_and_return_conditional_losses_4829215
dense_3/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0dense_3_4830356dense_3_4830358*
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
D__inference_dense_3_layer_call_and_return_conditional_losses_4829228w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
þ
NoOpNoOp"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall)^low_rank_layer_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*À
_input_shapes®
«:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2T
(low_rank_layer_2/StatefulPartitionedCall(low_rank_layer_2/StatefulPartitionedCall:X T
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_4
¶
G
+__inference_flatten_3_layer_call_fn_4832314

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
F__inference_flatten_3_layer_call_and_return_conditional_losses_4829208a
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
õQ
°
I__inference_sequential_3_layer_call_and_return_conditional_losses_4830521
input_4*
conv2d_9_4830365:
conv2d_9_4830367:'
low_rank_layer_2_4830371:	'
low_rank_layer_2_4830373:	'
low_rank_layer_2_4830375:	'
low_rank_layer_2_4830377:	'
low_rank_layer_2_4830379:	'
low_rank_layer_2_4830381:	'
low_rank_layer_2_4830383:	'
low_rank_layer_2_4830385:	'
low_rank_layer_2_4830387:	'
low_rank_layer_2_4830389:	'
low_rank_layer_2_4830391:	'
low_rank_layer_2_4830393:	'
low_rank_layer_2_4830395:	'
low_rank_layer_2_4830397:	'
low_rank_layer_2_4830399:	'
low_rank_layer_2_4830401:	'
low_rank_layer_2_4830403:	'
low_rank_layer_2_4830405:	'
low_rank_layer_2_4830407:	'
low_rank_layer_2_4830409:	'
low_rank_layer_2_4830411:	'
low_rank_layer_2_4830413:	'
low_rank_layer_2_4830415:	'
low_rank_layer_2_4830417:	'
low_rank_layer_2_4830419:	'
low_rank_layer_2_4830421:	'
low_rank_layer_2_4830423:	'
low_rank_layer_2_4830425:	'
low_rank_layer_2_4830427:	'
low_rank_layer_2_4830429:	'
low_rank_layer_2_4830431:	'
low_rank_layer_2_4830433:	'
low_rank_layer_2_4830435:	'
low_rank_layer_2_4830437:	'
low_rank_layer_2_4830439:	'
low_rank_layer_2_4830441:	'
low_rank_layer_2_4830443:	'
low_rank_layer_2_4830445:	'
low_rank_layer_2_4830447:	'
low_rank_layer_2_4830449:	'
low_rank_layer_2_4830451:	'
low_rank_layer_2_4830453:	'
low_rank_layer_2_4830455:	'
low_rank_layer_2_4830457:	'
low_rank_layer_2_4830459:	'
low_rank_layer_2_4830461:	'
low_rank_layer_2_4830463:	'
low_rank_layer_2_4830465:	'
low_rank_layer_2_4830467:	'
low_rank_layer_2_4830469:	'
low_rank_layer_2_4830471:	'
low_rank_layer_2_4830473:	'
low_rank_layer_2_4830475:	'
low_rank_layer_2_4830477:	'
low_rank_layer_2_4830479:	'
low_rank_layer_2_4830481:	'
low_rank_layer_2_4830483:	'
low_rank_layer_2_4830485:	'
low_rank_layer_2_4830487:	'
low_rank_layer_2_4830489:	'
low_rank_layer_2_4830491:	'
low_rank_layer_2_4830493:	'
low_rank_layer_2_4830495:	'
low_rank_layer_2_4830497:	+
conv2d_10_4830502:
conv2d_10_4830504:+
conv2d_11_4830508:
conv2d_11_4830510:"
dense_3_4830515:	

dense_3_4830517:

identity¢!conv2d_10/StatefulPartitionedCall¢!conv2d_11/StatefulPartitionedCall¢ conv2d_9/StatefulPartitionedCall¢dense_3/StatefulPartitionedCall¢!dropout_3/StatefulPartitionedCall¢(low_rank_layer_2/StatefulPartitionedCallÿ
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCallinput_4conv2d_9_4830365conv2d_9_4830367*
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
E__inference_conv2d_9_layer_call_and_return_conditional_losses_4828675æ
reshape_4/PartitionedCallPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_reshape_4_layer_call_and_return_conditional_losses_4828694ÿ
(low_rank_layer_2/StatefulPartitionedCallStatefulPartitionedCall"reshape_4/PartitionedCall:output:0low_rank_layer_2_4830371low_rank_layer_2_4830373low_rank_layer_2_4830375low_rank_layer_2_4830377low_rank_layer_2_4830379low_rank_layer_2_4830381low_rank_layer_2_4830383low_rank_layer_2_4830385low_rank_layer_2_4830387low_rank_layer_2_4830389low_rank_layer_2_4830391low_rank_layer_2_4830393low_rank_layer_2_4830395low_rank_layer_2_4830397low_rank_layer_2_4830399low_rank_layer_2_4830401low_rank_layer_2_4830403low_rank_layer_2_4830405low_rank_layer_2_4830407low_rank_layer_2_4830409low_rank_layer_2_4830411low_rank_layer_2_4830413low_rank_layer_2_4830415low_rank_layer_2_4830417low_rank_layer_2_4830419low_rank_layer_2_4830421low_rank_layer_2_4830423low_rank_layer_2_4830425low_rank_layer_2_4830427low_rank_layer_2_4830429low_rank_layer_2_4830431low_rank_layer_2_4830433low_rank_layer_2_4830435low_rank_layer_2_4830437low_rank_layer_2_4830439low_rank_layer_2_4830441low_rank_layer_2_4830443low_rank_layer_2_4830445low_rank_layer_2_4830447low_rank_layer_2_4830449low_rank_layer_2_4830451low_rank_layer_2_4830453low_rank_layer_2_4830455low_rank_layer_2_4830457low_rank_layer_2_4830459low_rank_layer_2_4830461low_rank_layer_2_4830463low_rank_layer_2_4830465low_rank_layer_2_4830467low_rank_layer_2_4830469low_rank_layer_2_4830471low_rank_layer_2_4830473low_rank_layer_2_4830475low_rank_layer_2_4830477low_rank_layer_2_4830479low_rank_layer_2_4830481low_rank_layer_2_4830483low_rank_layer_2_4830485low_rank_layer_2_4830487low_rank_layer_2_4830489low_rank_layer_2_4830491low_rank_layer_2_4830493low_rank_layer_2_4830495low_rank_layer_2_4830497*L
TinE
C2A*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*b
_read_only_resource_inputsD
B@	
 !"#$%&'()*+,-./0123456789:;<=>?@*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_low_rank_layer_2_layer_call_and_return_conditional_losses_4829020ñ
reshape_5/PartitionedCallPartitionedCall1low_rank_layer_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_reshape_5_layer_call_and_return_conditional_losses_4829164î
max_pooling2d_6/PartitionedCallPartitionedCall"reshape_5/PartitionedCall:output:0*
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
L__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_4828642¤
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_6/PartitionedCall:output:0conv2d_10_4830502conv2d_10_4830504*
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
GPU2*0J 8 *O
fJRH
F__inference_conv2d_10_layer_call_and_return_conditional_losses_4829178ö
max_pooling2d_7/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
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
L__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_4828654¤
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_7/PartitionedCall:output:0conv2d_11_4830508conv2d_11_4830510*
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
GPU2*0J 8 *O
fJRH
F__inference_conv2d_11_layer_call_and_return_conditional_losses_4829196ã
flatten_3/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
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
F__inference_flatten_3_layer_call_and_return_conditional_losses_4829208ë
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0*
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
F__inference_dropout_3_layer_call_and_return_conditional_losses_4829412
dense_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0dense_3_4830515dense_3_4830517*
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
D__inference_dense_3_layer_call_and_return_conditional_losses_4829228w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¢
NoOpNoOp"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall)^low_rank_layer_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*À
_input_shapes®
«:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2T
(low_rank_layer_2/StatefulPartitionedCall(low_rank_layer_2/StatefulPartitionedCall:X T
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_4
ù
P
"__inference__wrapped_model_4828633
input_4N
4sequential_3_conv2d_9_conv2d_readvariableop_resource:C
5sequential_3_conv2d_9_biasadd_readvariableop_resource:N
?sequential_3_low_rank_layer_2_tensordot_readvariableop_resource:	P
Asequential_3_low_rank_layer_2_tensordot_readvariableop_1_resource:	P
Asequential_3_low_rank_layer_2_tensordot_1_readvariableop_resource:	R
Csequential_3_low_rank_layer_2_tensordot_1_readvariableop_1_resource:	P
Asequential_3_low_rank_layer_2_tensordot_2_readvariableop_resource:	R
Csequential_3_low_rank_layer_2_tensordot_2_readvariableop_1_resource:	P
Asequential_3_low_rank_layer_2_tensordot_3_readvariableop_resource:	R
Csequential_3_low_rank_layer_2_tensordot_3_readvariableop_1_resource:	P
Asequential_3_low_rank_layer_2_tensordot_4_readvariableop_resource:	R
Csequential_3_low_rank_layer_2_tensordot_4_readvariableop_1_resource:	P
Asequential_3_low_rank_layer_2_tensordot_5_readvariableop_resource:	R
Csequential_3_low_rank_layer_2_tensordot_5_readvariableop_1_resource:	P
Asequential_3_low_rank_layer_2_tensordot_6_readvariableop_resource:	R
Csequential_3_low_rank_layer_2_tensordot_6_readvariableop_1_resource:	P
Asequential_3_low_rank_layer_2_tensordot_7_readvariableop_resource:	R
Csequential_3_low_rank_layer_2_tensordot_7_readvariableop_1_resource:	P
Asequential_3_low_rank_layer_2_tensordot_8_readvariableop_resource:	R
Csequential_3_low_rank_layer_2_tensordot_8_readvariableop_1_resource:	P
Asequential_3_low_rank_layer_2_tensordot_9_readvariableop_resource:	R
Csequential_3_low_rank_layer_2_tensordot_9_readvariableop_1_resource:	Q
Bsequential_3_low_rank_layer_2_tensordot_10_readvariableop_resource:	S
Dsequential_3_low_rank_layer_2_tensordot_10_readvariableop_1_resource:	Q
Bsequential_3_low_rank_layer_2_tensordot_11_readvariableop_resource:	S
Dsequential_3_low_rank_layer_2_tensordot_11_readvariableop_1_resource:	Q
Bsequential_3_low_rank_layer_2_tensordot_12_readvariableop_resource:	S
Dsequential_3_low_rank_layer_2_tensordot_12_readvariableop_1_resource:	Q
Bsequential_3_low_rank_layer_2_tensordot_13_readvariableop_resource:	S
Dsequential_3_low_rank_layer_2_tensordot_13_readvariableop_1_resource:	Q
Bsequential_3_low_rank_layer_2_tensordot_14_readvariableop_resource:	S
Dsequential_3_low_rank_layer_2_tensordot_14_readvariableop_1_resource:	Q
Bsequential_3_low_rank_layer_2_tensordot_15_readvariableop_resource:	S
Dsequential_3_low_rank_layer_2_tensordot_15_readvariableop_1_resource:	Q
Bsequential_3_low_rank_layer_2_tensordot_16_readvariableop_resource:	S
Dsequential_3_low_rank_layer_2_tensordot_16_readvariableop_1_resource:	Q
Bsequential_3_low_rank_layer_2_tensordot_17_readvariableop_resource:	S
Dsequential_3_low_rank_layer_2_tensordot_17_readvariableop_1_resource:	Q
Bsequential_3_low_rank_layer_2_tensordot_18_readvariableop_resource:	S
Dsequential_3_low_rank_layer_2_tensordot_18_readvariableop_1_resource:	Q
Bsequential_3_low_rank_layer_2_tensordot_19_readvariableop_resource:	S
Dsequential_3_low_rank_layer_2_tensordot_19_readvariableop_1_resource:	Q
Bsequential_3_low_rank_layer_2_tensordot_20_readvariableop_resource:	S
Dsequential_3_low_rank_layer_2_tensordot_20_readvariableop_1_resource:	Q
Bsequential_3_low_rank_layer_2_tensordot_21_readvariableop_resource:	S
Dsequential_3_low_rank_layer_2_tensordot_21_readvariableop_1_resource:	Q
Bsequential_3_low_rank_layer_2_tensordot_22_readvariableop_resource:	S
Dsequential_3_low_rank_layer_2_tensordot_22_readvariableop_1_resource:	Q
Bsequential_3_low_rank_layer_2_tensordot_23_readvariableop_resource:	S
Dsequential_3_low_rank_layer_2_tensordot_23_readvariableop_1_resource:	Q
Bsequential_3_low_rank_layer_2_tensordot_24_readvariableop_resource:	S
Dsequential_3_low_rank_layer_2_tensordot_24_readvariableop_1_resource:	Q
Bsequential_3_low_rank_layer_2_tensordot_25_readvariableop_resource:	S
Dsequential_3_low_rank_layer_2_tensordot_25_readvariableop_1_resource:	Q
Bsequential_3_low_rank_layer_2_tensordot_26_readvariableop_resource:	S
Dsequential_3_low_rank_layer_2_tensordot_26_readvariableop_1_resource:	Q
Bsequential_3_low_rank_layer_2_tensordot_27_readvariableop_resource:	S
Dsequential_3_low_rank_layer_2_tensordot_27_readvariableop_1_resource:	Q
Bsequential_3_low_rank_layer_2_tensordot_28_readvariableop_resource:	S
Dsequential_3_low_rank_layer_2_tensordot_28_readvariableop_1_resource:	Q
Bsequential_3_low_rank_layer_2_tensordot_29_readvariableop_resource:	S
Dsequential_3_low_rank_layer_2_tensordot_29_readvariableop_1_resource:	Q
Bsequential_3_low_rank_layer_2_tensordot_30_readvariableop_resource:	S
Dsequential_3_low_rank_layer_2_tensordot_30_readvariableop_1_resource:	Q
Bsequential_3_low_rank_layer_2_tensordot_31_readvariableop_resource:	S
Dsequential_3_low_rank_layer_2_tensordot_31_readvariableop_1_resource:	O
5sequential_3_conv2d_10_conv2d_readvariableop_resource:D
6sequential_3_conv2d_10_biasadd_readvariableop_resource:O
5sequential_3_conv2d_11_conv2d_readvariableop_resource:D
6sequential_3_conv2d_11_biasadd_readvariableop_resource:F
3sequential_3_dense_3_matmul_readvariableop_resource:	
B
4sequential_3_dense_3_biasadd_readvariableop_resource:

identity¢-sequential_3/conv2d_10/BiasAdd/ReadVariableOp¢,sequential_3/conv2d_10/Conv2D/ReadVariableOp¢-sequential_3/conv2d_11/BiasAdd/ReadVariableOp¢,sequential_3/conv2d_11/Conv2D/ReadVariableOp¢,sequential_3/conv2d_9/BiasAdd/ReadVariableOp¢+sequential_3/conv2d_9/Conv2D/ReadVariableOp¢+sequential_3/dense_3/BiasAdd/ReadVariableOp¢*sequential_3/dense_3/MatMul/ReadVariableOp¢6sequential_3/low_rank_layer_2/Tensordot/ReadVariableOp¢8sequential_3/low_rank_layer_2/Tensordot/ReadVariableOp_1¢8sequential_3/low_rank_layer_2/Tensordot_1/ReadVariableOp¢:sequential_3/low_rank_layer_2/Tensordot_1/ReadVariableOp_1¢9sequential_3/low_rank_layer_2/Tensordot_10/ReadVariableOp¢;sequential_3/low_rank_layer_2/Tensordot_10/ReadVariableOp_1¢9sequential_3/low_rank_layer_2/Tensordot_11/ReadVariableOp¢;sequential_3/low_rank_layer_2/Tensordot_11/ReadVariableOp_1¢9sequential_3/low_rank_layer_2/Tensordot_12/ReadVariableOp¢;sequential_3/low_rank_layer_2/Tensordot_12/ReadVariableOp_1¢9sequential_3/low_rank_layer_2/Tensordot_13/ReadVariableOp¢;sequential_3/low_rank_layer_2/Tensordot_13/ReadVariableOp_1¢9sequential_3/low_rank_layer_2/Tensordot_14/ReadVariableOp¢;sequential_3/low_rank_layer_2/Tensordot_14/ReadVariableOp_1¢9sequential_3/low_rank_layer_2/Tensordot_15/ReadVariableOp¢;sequential_3/low_rank_layer_2/Tensordot_15/ReadVariableOp_1¢9sequential_3/low_rank_layer_2/Tensordot_16/ReadVariableOp¢;sequential_3/low_rank_layer_2/Tensordot_16/ReadVariableOp_1¢9sequential_3/low_rank_layer_2/Tensordot_17/ReadVariableOp¢;sequential_3/low_rank_layer_2/Tensordot_17/ReadVariableOp_1¢9sequential_3/low_rank_layer_2/Tensordot_18/ReadVariableOp¢;sequential_3/low_rank_layer_2/Tensordot_18/ReadVariableOp_1¢9sequential_3/low_rank_layer_2/Tensordot_19/ReadVariableOp¢;sequential_3/low_rank_layer_2/Tensordot_19/ReadVariableOp_1¢8sequential_3/low_rank_layer_2/Tensordot_2/ReadVariableOp¢:sequential_3/low_rank_layer_2/Tensordot_2/ReadVariableOp_1¢9sequential_3/low_rank_layer_2/Tensordot_20/ReadVariableOp¢;sequential_3/low_rank_layer_2/Tensordot_20/ReadVariableOp_1¢9sequential_3/low_rank_layer_2/Tensordot_21/ReadVariableOp¢;sequential_3/low_rank_layer_2/Tensordot_21/ReadVariableOp_1¢9sequential_3/low_rank_layer_2/Tensordot_22/ReadVariableOp¢;sequential_3/low_rank_layer_2/Tensordot_22/ReadVariableOp_1¢9sequential_3/low_rank_layer_2/Tensordot_23/ReadVariableOp¢;sequential_3/low_rank_layer_2/Tensordot_23/ReadVariableOp_1¢9sequential_3/low_rank_layer_2/Tensordot_24/ReadVariableOp¢;sequential_3/low_rank_layer_2/Tensordot_24/ReadVariableOp_1¢9sequential_3/low_rank_layer_2/Tensordot_25/ReadVariableOp¢;sequential_3/low_rank_layer_2/Tensordot_25/ReadVariableOp_1¢9sequential_3/low_rank_layer_2/Tensordot_26/ReadVariableOp¢;sequential_3/low_rank_layer_2/Tensordot_26/ReadVariableOp_1¢9sequential_3/low_rank_layer_2/Tensordot_27/ReadVariableOp¢;sequential_3/low_rank_layer_2/Tensordot_27/ReadVariableOp_1¢9sequential_3/low_rank_layer_2/Tensordot_28/ReadVariableOp¢;sequential_3/low_rank_layer_2/Tensordot_28/ReadVariableOp_1¢9sequential_3/low_rank_layer_2/Tensordot_29/ReadVariableOp¢;sequential_3/low_rank_layer_2/Tensordot_29/ReadVariableOp_1¢8sequential_3/low_rank_layer_2/Tensordot_3/ReadVariableOp¢:sequential_3/low_rank_layer_2/Tensordot_3/ReadVariableOp_1¢9sequential_3/low_rank_layer_2/Tensordot_30/ReadVariableOp¢;sequential_3/low_rank_layer_2/Tensordot_30/ReadVariableOp_1¢9sequential_3/low_rank_layer_2/Tensordot_31/ReadVariableOp¢;sequential_3/low_rank_layer_2/Tensordot_31/ReadVariableOp_1¢8sequential_3/low_rank_layer_2/Tensordot_4/ReadVariableOp¢:sequential_3/low_rank_layer_2/Tensordot_4/ReadVariableOp_1¢8sequential_3/low_rank_layer_2/Tensordot_5/ReadVariableOp¢:sequential_3/low_rank_layer_2/Tensordot_5/ReadVariableOp_1¢8sequential_3/low_rank_layer_2/Tensordot_6/ReadVariableOp¢:sequential_3/low_rank_layer_2/Tensordot_6/ReadVariableOp_1¢8sequential_3/low_rank_layer_2/Tensordot_7/ReadVariableOp¢:sequential_3/low_rank_layer_2/Tensordot_7/ReadVariableOp_1¢8sequential_3/low_rank_layer_2/Tensordot_8/ReadVariableOp¢:sequential_3/low_rank_layer_2/Tensordot_8/ReadVariableOp_1¢8sequential_3/low_rank_layer_2/Tensordot_9/ReadVariableOp¢:sequential_3/low_rank_layer_2/Tensordot_9/ReadVariableOp_1¨
+sequential_3/conv2d_9/Conv2D/ReadVariableOpReadVariableOp4sequential_3_conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ç
sequential_3/conv2d_9/Conv2DConv2Dinput_43sequential_3/conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

,sequential_3/conv2d_9/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_conv2d_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¿
sequential_3/conv2d_9/BiasAddBiasAdd%sequential_3/conv2d_9/Conv2D:output:04sequential_3/conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_3/conv2d_9/ReluRelu&sequential_3/conv2d_9/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
sequential_3/reshape_4/ShapeShape(sequential_3/conv2d_9/Relu:activations:0*
T0*
_output_shapes
:t
*sequential_3/reshape_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_3/reshape_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_3/reshape_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ä
$sequential_3/reshape_4/strided_sliceStridedSlice%sequential_3/reshape_4/Shape:output:03sequential_3/reshape_4/strided_slice/stack:output:05sequential_3/reshape_4/strided_slice/stack_1:output:05sequential_3/reshape_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
&sequential_3/reshape_4/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :h
&sequential_3/reshape_4/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :ë
$sequential_3/reshape_4/Reshape/shapePack-sequential_3/reshape_4/strided_slice:output:0/sequential_3/reshape_4/Reshape/shape/1:output:0/sequential_3/reshape_4/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:¹
sequential_3/reshape_4/ReshapeReshape(sequential_3/conv2d_9/Relu:activations:0-sequential_3/reshape_4/Reshape/shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
6sequential_3/low_rank_layer_2/Tensordot/ReadVariableOpReadVariableOp?sequential_3_low_rank_layer_2_tensordot_readvariableop_resource*
_output_shapes	
:*
dtype0·
8sequential_3/low_rank_layer_2/Tensordot/ReadVariableOp_1ReadVariableOpAsequential_3_low_rank_layer_2_tensordot_readvariableop_1_resource*
_output_shapes	
:*
dtype0
5sequential_3/low_rank_layer_2/Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     ä
/sequential_3/low_rank_layer_2/Tensordot/ReshapeReshape>sequential_3/low_rank_layer_2/Tensordot/ReadVariableOp:value:0>sequential_3/low_rank_layer_2/Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	
7sequential_3/low_rank_layer_2/Tensordot/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  ê
1sequential_3/low_rank_layer_2/Tensordot/Reshape_1Reshape@sequential_3/low_rank_layer_2/Tensordot/ReadVariableOp_1:value:0@sequential_3/low_rank_layer_2/Tensordot/Reshape_1/shape:output:0*
T0*
_output_shapes
:	Ù
.sequential_3/low_rank_layer_2/Tensordot/MatMulMatMul8sequential_3/low_rank_layer_2/Tensordot/Reshape:output:0:sequential_3/low_rank_layer_2/Tensordot/Reshape_1:output:0*
T0* 
_output_shapes
:
·
8sequential_3/low_rank_layer_2/Tensordot_1/ReadVariableOpReadVariableOpAsequential_3_low_rank_layer_2_tensordot_1_readvariableop_resource*
_output_shapes	
:*
dtype0»
:sequential_3/low_rank_layer_2/Tensordot_1/ReadVariableOp_1ReadVariableOpCsequential_3_low_rank_layer_2_tensordot_1_readvariableop_1_resource*
_output_shapes	
:*
dtype0
7sequential_3/low_rank_layer_2/Tensordot_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     ê
1sequential_3/low_rank_layer_2/Tensordot_1/ReshapeReshape@sequential_3/low_rank_layer_2/Tensordot_1/ReadVariableOp:value:0@sequential_3/low_rank_layer_2/Tensordot_1/Reshape/shape:output:0*
T0*
_output_shapes
:	
9sequential_3/low_rank_layer_2/Tensordot_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  ð
3sequential_3/low_rank_layer_2/Tensordot_1/Reshape_1ReshapeBsequential_3/low_rank_layer_2/Tensordot_1/ReadVariableOp_1:value:0Bsequential_3/low_rank_layer_2/Tensordot_1/Reshape_1/shape:output:0*
T0*
_output_shapes
:	ß
0sequential_3/low_rank_layer_2/Tensordot_1/MatMulMatMul:sequential_3/low_rank_layer_2/Tensordot_1/Reshape:output:0<sequential_3/low_rank_layer_2/Tensordot_1/Reshape_1:output:0*
T0* 
_output_shapes
:
Ë
!sequential_3/low_rank_layer_2/addAddV28sequential_3/low_rank_layer_2/Tensordot/MatMul:product:0:sequential_3/low_rank_layer_2/Tensordot_1/MatMul:product:0*
T0* 
_output_shapes
:
·
8sequential_3/low_rank_layer_2/Tensordot_2/ReadVariableOpReadVariableOpAsequential_3_low_rank_layer_2_tensordot_2_readvariableop_resource*
_output_shapes	
:*
dtype0»
:sequential_3/low_rank_layer_2/Tensordot_2/ReadVariableOp_1ReadVariableOpCsequential_3_low_rank_layer_2_tensordot_2_readvariableop_1_resource*
_output_shapes	
:*
dtype0
7sequential_3/low_rank_layer_2/Tensordot_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     ê
1sequential_3/low_rank_layer_2/Tensordot_2/ReshapeReshape@sequential_3/low_rank_layer_2/Tensordot_2/ReadVariableOp:value:0@sequential_3/low_rank_layer_2/Tensordot_2/Reshape/shape:output:0*
T0*
_output_shapes
:	
9sequential_3/low_rank_layer_2/Tensordot_2/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  ð
3sequential_3/low_rank_layer_2/Tensordot_2/Reshape_1ReshapeBsequential_3/low_rank_layer_2/Tensordot_2/ReadVariableOp_1:value:0Bsequential_3/low_rank_layer_2/Tensordot_2/Reshape_1/shape:output:0*
T0*
_output_shapes
:	ß
0sequential_3/low_rank_layer_2/Tensordot_2/MatMulMatMul:sequential_3/low_rank_layer_2/Tensordot_2/Reshape:output:0<sequential_3/low_rank_layer_2/Tensordot_2/Reshape_1:output:0*
T0* 
_output_shapes
:
º
#sequential_3/low_rank_layer_2/add_1AddV2%sequential_3/low_rank_layer_2/add:z:0:sequential_3/low_rank_layer_2/Tensordot_2/MatMul:product:0*
T0* 
_output_shapes
:
·
8sequential_3/low_rank_layer_2/Tensordot_3/ReadVariableOpReadVariableOpAsequential_3_low_rank_layer_2_tensordot_3_readvariableop_resource*
_output_shapes	
:*
dtype0»
:sequential_3/low_rank_layer_2/Tensordot_3/ReadVariableOp_1ReadVariableOpCsequential_3_low_rank_layer_2_tensordot_3_readvariableop_1_resource*
_output_shapes	
:*
dtype0
7sequential_3/low_rank_layer_2/Tensordot_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     ê
1sequential_3/low_rank_layer_2/Tensordot_3/ReshapeReshape@sequential_3/low_rank_layer_2/Tensordot_3/ReadVariableOp:value:0@sequential_3/low_rank_layer_2/Tensordot_3/Reshape/shape:output:0*
T0*
_output_shapes
:	
9sequential_3/low_rank_layer_2/Tensordot_3/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  ð
3sequential_3/low_rank_layer_2/Tensordot_3/Reshape_1ReshapeBsequential_3/low_rank_layer_2/Tensordot_3/ReadVariableOp_1:value:0Bsequential_3/low_rank_layer_2/Tensordot_3/Reshape_1/shape:output:0*
T0*
_output_shapes
:	ß
0sequential_3/low_rank_layer_2/Tensordot_3/MatMulMatMul:sequential_3/low_rank_layer_2/Tensordot_3/Reshape:output:0<sequential_3/low_rank_layer_2/Tensordot_3/Reshape_1:output:0*
T0* 
_output_shapes
:
¼
#sequential_3/low_rank_layer_2/add_2AddV2'sequential_3/low_rank_layer_2/add_1:z:0:sequential_3/low_rank_layer_2/Tensordot_3/MatMul:product:0*
T0* 
_output_shapes
:
·
8sequential_3/low_rank_layer_2/Tensordot_4/ReadVariableOpReadVariableOpAsequential_3_low_rank_layer_2_tensordot_4_readvariableop_resource*
_output_shapes	
:*
dtype0»
:sequential_3/low_rank_layer_2/Tensordot_4/ReadVariableOp_1ReadVariableOpCsequential_3_low_rank_layer_2_tensordot_4_readvariableop_1_resource*
_output_shapes	
:*
dtype0
7sequential_3/low_rank_layer_2/Tensordot_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     ê
1sequential_3/low_rank_layer_2/Tensordot_4/ReshapeReshape@sequential_3/low_rank_layer_2/Tensordot_4/ReadVariableOp:value:0@sequential_3/low_rank_layer_2/Tensordot_4/Reshape/shape:output:0*
T0*
_output_shapes
:	
9sequential_3/low_rank_layer_2/Tensordot_4/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  ð
3sequential_3/low_rank_layer_2/Tensordot_4/Reshape_1ReshapeBsequential_3/low_rank_layer_2/Tensordot_4/ReadVariableOp_1:value:0Bsequential_3/low_rank_layer_2/Tensordot_4/Reshape_1/shape:output:0*
T0*
_output_shapes
:	ß
0sequential_3/low_rank_layer_2/Tensordot_4/MatMulMatMul:sequential_3/low_rank_layer_2/Tensordot_4/Reshape:output:0<sequential_3/low_rank_layer_2/Tensordot_4/Reshape_1:output:0*
T0* 
_output_shapes
:
¼
#sequential_3/low_rank_layer_2/add_3AddV2'sequential_3/low_rank_layer_2/add_2:z:0:sequential_3/low_rank_layer_2/Tensordot_4/MatMul:product:0*
T0* 
_output_shapes
:
·
8sequential_3/low_rank_layer_2/Tensordot_5/ReadVariableOpReadVariableOpAsequential_3_low_rank_layer_2_tensordot_5_readvariableop_resource*
_output_shapes	
:*
dtype0»
:sequential_3/low_rank_layer_2/Tensordot_5/ReadVariableOp_1ReadVariableOpCsequential_3_low_rank_layer_2_tensordot_5_readvariableop_1_resource*
_output_shapes	
:*
dtype0
7sequential_3/low_rank_layer_2/Tensordot_5/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     ê
1sequential_3/low_rank_layer_2/Tensordot_5/ReshapeReshape@sequential_3/low_rank_layer_2/Tensordot_5/ReadVariableOp:value:0@sequential_3/low_rank_layer_2/Tensordot_5/Reshape/shape:output:0*
T0*
_output_shapes
:	
9sequential_3/low_rank_layer_2/Tensordot_5/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  ð
3sequential_3/low_rank_layer_2/Tensordot_5/Reshape_1ReshapeBsequential_3/low_rank_layer_2/Tensordot_5/ReadVariableOp_1:value:0Bsequential_3/low_rank_layer_2/Tensordot_5/Reshape_1/shape:output:0*
T0*
_output_shapes
:	ß
0sequential_3/low_rank_layer_2/Tensordot_5/MatMulMatMul:sequential_3/low_rank_layer_2/Tensordot_5/Reshape:output:0<sequential_3/low_rank_layer_2/Tensordot_5/Reshape_1:output:0*
T0* 
_output_shapes
:
¼
#sequential_3/low_rank_layer_2/add_4AddV2'sequential_3/low_rank_layer_2/add_3:z:0:sequential_3/low_rank_layer_2/Tensordot_5/MatMul:product:0*
T0* 
_output_shapes
:
·
8sequential_3/low_rank_layer_2/Tensordot_6/ReadVariableOpReadVariableOpAsequential_3_low_rank_layer_2_tensordot_6_readvariableop_resource*
_output_shapes	
:*
dtype0»
:sequential_3/low_rank_layer_2/Tensordot_6/ReadVariableOp_1ReadVariableOpCsequential_3_low_rank_layer_2_tensordot_6_readvariableop_1_resource*
_output_shapes	
:*
dtype0
7sequential_3/low_rank_layer_2/Tensordot_6/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     ê
1sequential_3/low_rank_layer_2/Tensordot_6/ReshapeReshape@sequential_3/low_rank_layer_2/Tensordot_6/ReadVariableOp:value:0@sequential_3/low_rank_layer_2/Tensordot_6/Reshape/shape:output:0*
T0*
_output_shapes
:	
9sequential_3/low_rank_layer_2/Tensordot_6/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  ð
3sequential_3/low_rank_layer_2/Tensordot_6/Reshape_1ReshapeBsequential_3/low_rank_layer_2/Tensordot_6/ReadVariableOp_1:value:0Bsequential_3/low_rank_layer_2/Tensordot_6/Reshape_1/shape:output:0*
T0*
_output_shapes
:	ß
0sequential_3/low_rank_layer_2/Tensordot_6/MatMulMatMul:sequential_3/low_rank_layer_2/Tensordot_6/Reshape:output:0<sequential_3/low_rank_layer_2/Tensordot_6/Reshape_1:output:0*
T0* 
_output_shapes
:
¼
#sequential_3/low_rank_layer_2/add_5AddV2'sequential_3/low_rank_layer_2/add_4:z:0:sequential_3/low_rank_layer_2/Tensordot_6/MatMul:product:0*
T0* 
_output_shapes
:
·
8sequential_3/low_rank_layer_2/Tensordot_7/ReadVariableOpReadVariableOpAsequential_3_low_rank_layer_2_tensordot_7_readvariableop_resource*
_output_shapes	
:*
dtype0»
:sequential_3/low_rank_layer_2/Tensordot_7/ReadVariableOp_1ReadVariableOpCsequential_3_low_rank_layer_2_tensordot_7_readvariableop_1_resource*
_output_shapes	
:*
dtype0
7sequential_3/low_rank_layer_2/Tensordot_7/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     ê
1sequential_3/low_rank_layer_2/Tensordot_7/ReshapeReshape@sequential_3/low_rank_layer_2/Tensordot_7/ReadVariableOp:value:0@sequential_3/low_rank_layer_2/Tensordot_7/Reshape/shape:output:0*
T0*
_output_shapes
:	
9sequential_3/low_rank_layer_2/Tensordot_7/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  ð
3sequential_3/low_rank_layer_2/Tensordot_7/Reshape_1ReshapeBsequential_3/low_rank_layer_2/Tensordot_7/ReadVariableOp_1:value:0Bsequential_3/low_rank_layer_2/Tensordot_7/Reshape_1/shape:output:0*
T0*
_output_shapes
:	ß
0sequential_3/low_rank_layer_2/Tensordot_7/MatMulMatMul:sequential_3/low_rank_layer_2/Tensordot_7/Reshape:output:0<sequential_3/low_rank_layer_2/Tensordot_7/Reshape_1:output:0*
T0* 
_output_shapes
:
¼
#sequential_3/low_rank_layer_2/add_6AddV2'sequential_3/low_rank_layer_2/add_5:z:0:sequential_3/low_rank_layer_2/Tensordot_7/MatMul:product:0*
T0* 
_output_shapes
:
·
8sequential_3/low_rank_layer_2/Tensordot_8/ReadVariableOpReadVariableOpAsequential_3_low_rank_layer_2_tensordot_8_readvariableop_resource*
_output_shapes	
:*
dtype0»
:sequential_3/low_rank_layer_2/Tensordot_8/ReadVariableOp_1ReadVariableOpCsequential_3_low_rank_layer_2_tensordot_8_readvariableop_1_resource*
_output_shapes	
:*
dtype0
7sequential_3/low_rank_layer_2/Tensordot_8/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     ê
1sequential_3/low_rank_layer_2/Tensordot_8/ReshapeReshape@sequential_3/low_rank_layer_2/Tensordot_8/ReadVariableOp:value:0@sequential_3/low_rank_layer_2/Tensordot_8/Reshape/shape:output:0*
T0*
_output_shapes
:	
9sequential_3/low_rank_layer_2/Tensordot_8/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  ð
3sequential_3/low_rank_layer_2/Tensordot_8/Reshape_1ReshapeBsequential_3/low_rank_layer_2/Tensordot_8/ReadVariableOp_1:value:0Bsequential_3/low_rank_layer_2/Tensordot_8/Reshape_1/shape:output:0*
T0*
_output_shapes
:	ß
0sequential_3/low_rank_layer_2/Tensordot_8/MatMulMatMul:sequential_3/low_rank_layer_2/Tensordot_8/Reshape:output:0<sequential_3/low_rank_layer_2/Tensordot_8/Reshape_1:output:0*
T0* 
_output_shapes
:
¼
#sequential_3/low_rank_layer_2/add_7AddV2'sequential_3/low_rank_layer_2/add_6:z:0:sequential_3/low_rank_layer_2/Tensordot_8/MatMul:product:0*
T0* 
_output_shapes
:
·
8sequential_3/low_rank_layer_2/Tensordot_9/ReadVariableOpReadVariableOpAsequential_3_low_rank_layer_2_tensordot_9_readvariableop_resource*
_output_shapes	
:*
dtype0»
:sequential_3/low_rank_layer_2/Tensordot_9/ReadVariableOp_1ReadVariableOpCsequential_3_low_rank_layer_2_tensordot_9_readvariableop_1_resource*
_output_shapes	
:*
dtype0
7sequential_3/low_rank_layer_2/Tensordot_9/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     ê
1sequential_3/low_rank_layer_2/Tensordot_9/ReshapeReshape@sequential_3/low_rank_layer_2/Tensordot_9/ReadVariableOp:value:0@sequential_3/low_rank_layer_2/Tensordot_9/Reshape/shape:output:0*
T0*
_output_shapes
:	
9sequential_3/low_rank_layer_2/Tensordot_9/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  ð
3sequential_3/low_rank_layer_2/Tensordot_9/Reshape_1ReshapeBsequential_3/low_rank_layer_2/Tensordot_9/ReadVariableOp_1:value:0Bsequential_3/low_rank_layer_2/Tensordot_9/Reshape_1/shape:output:0*
T0*
_output_shapes
:	ß
0sequential_3/low_rank_layer_2/Tensordot_9/MatMulMatMul:sequential_3/low_rank_layer_2/Tensordot_9/Reshape:output:0<sequential_3/low_rank_layer_2/Tensordot_9/Reshape_1:output:0*
T0* 
_output_shapes
:
¼
#sequential_3/low_rank_layer_2/add_8AddV2'sequential_3/low_rank_layer_2/add_7:z:0:sequential_3/low_rank_layer_2/Tensordot_9/MatMul:product:0*
T0* 
_output_shapes
:
¹
9sequential_3/low_rank_layer_2/Tensordot_10/ReadVariableOpReadVariableOpBsequential_3_low_rank_layer_2_tensordot_10_readvariableop_resource*
_output_shapes	
:*
dtype0½
;sequential_3/low_rank_layer_2/Tensordot_10/ReadVariableOp_1ReadVariableOpDsequential_3_low_rank_layer_2_tensordot_10_readvariableop_1_resource*
_output_shapes	
:*
dtype0
8sequential_3/low_rank_layer_2/Tensordot_10/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     í
2sequential_3/low_rank_layer_2/Tensordot_10/ReshapeReshapeAsequential_3/low_rank_layer_2/Tensordot_10/ReadVariableOp:value:0Asequential_3/low_rank_layer_2/Tensordot_10/Reshape/shape:output:0*
T0*
_output_shapes
:	
:sequential_3/low_rank_layer_2/Tensordot_10/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  ó
4sequential_3/low_rank_layer_2/Tensordot_10/Reshape_1ReshapeCsequential_3/low_rank_layer_2/Tensordot_10/ReadVariableOp_1:value:0Csequential_3/low_rank_layer_2/Tensordot_10/Reshape_1/shape:output:0*
T0*
_output_shapes
:	â
1sequential_3/low_rank_layer_2/Tensordot_10/MatMulMatMul;sequential_3/low_rank_layer_2/Tensordot_10/Reshape:output:0=sequential_3/low_rank_layer_2/Tensordot_10/Reshape_1:output:0*
T0* 
_output_shapes
:
½
#sequential_3/low_rank_layer_2/add_9AddV2'sequential_3/low_rank_layer_2/add_8:z:0;sequential_3/low_rank_layer_2/Tensordot_10/MatMul:product:0*
T0* 
_output_shapes
:
¹
9sequential_3/low_rank_layer_2/Tensordot_11/ReadVariableOpReadVariableOpBsequential_3_low_rank_layer_2_tensordot_11_readvariableop_resource*
_output_shapes	
:*
dtype0½
;sequential_3/low_rank_layer_2/Tensordot_11/ReadVariableOp_1ReadVariableOpDsequential_3_low_rank_layer_2_tensordot_11_readvariableop_1_resource*
_output_shapes	
:*
dtype0
8sequential_3/low_rank_layer_2/Tensordot_11/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     í
2sequential_3/low_rank_layer_2/Tensordot_11/ReshapeReshapeAsequential_3/low_rank_layer_2/Tensordot_11/ReadVariableOp:value:0Asequential_3/low_rank_layer_2/Tensordot_11/Reshape/shape:output:0*
T0*
_output_shapes
:	
:sequential_3/low_rank_layer_2/Tensordot_11/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  ó
4sequential_3/low_rank_layer_2/Tensordot_11/Reshape_1ReshapeCsequential_3/low_rank_layer_2/Tensordot_11/ReadVariableOp_1:value:0Csequential_3/low_rank_layer_2/Tensordot_11/Reshape_1/shape:output:0*
T0*
_output_shapes
:	â
1sequential_3/low_rank_layer_2/Tensordot_11/MatMulMatMul;sequential_3/low_rank_layer_2/Tensordot_11/Reshape:output:0=sequential_3/low_rank_layer_2/Tensordot_11/Reshape_1:output:0*
T0* 
_output_shapes
:
¾
$sequential_3/low_rank_layer_2/add_10AddV2'sequential_3/low_rank_layer_2/add_9:z:0;sequential_3/low_rank_layer_2/Tensordot_11/MatMul:product:0*
T0* 
_output_shapes
:
¹
9sequential_3/low_rank_layer_2/Tensordot_12/ReadVariableOpReadVariableOpBsequential_3_low_rank_layer_2_tensordot_12_readvariableop_resource*
_output_shapes	
:*
dtype0½
;sequential_3/low_rank_layer_2/Tensordot_12/ReadVariableOp_1ReadVariableOpDsequential_3_low_rank_layer_2_tensordot_12_readvariableop_1_resource*
_output_shapes	
:*
dtype0
8sequential_3/low_rank_layer_2/Tensordot_12/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     í
2sequential_3/low_rank_layer_2/Tensordot_12/ReshapeReshapeAsequential_3/low_rank_layer_2/Tensordot_12/ReadVariableOp:value:0Asequential_3/low_rank_layer_2/Tensordot_12/Reshape/shape:output:0*
T0*
_output_shapes
:	
:sequential_3/low_rank_layer_2/Tensordot_12/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  ó
4sequential_3/low_rank_layer_2/Tensordot_12/Reshape_1ReshapeCsequential_3/low_rank_layer_2/Tensordot_12/ReadVariableOp_1:value:0Csequential_3/low_rank_layer_2/Tensordot_12/Reshape_1/shape:output:0*
T0*
_output_shapes
:	â
1sequential_3/low_rank_layer_2/Tensordot_12/MatMulMatMul;sequential_3/low_rank_layer_2/Tensordot_12/Reshape:output:0=sequential_3/low_rank_layer_2/Tensordot_12/Reshape_1:output:0*
T0* 
_output_shapes
:
¿
$sequential_3/low_rank_layer_2/add_11AddV2(sequential_3/low_rank_layer_2/add_10:z:0;sequential_3/low_rank_layer_2/Tensordot_12/MatMul:product:0*
T0* 
_output_shapes
:
¹
9sequential_3/low_rank_layer_2/Tensordot_13/ReadVariableOpReadVariableOpBsequential_3_low_rank_layer_2_tensordot_13_readvariableop_resource*
_output_shapes	
:*
dtype0½
;sequential_3/low_rank_layer_2/Tensordot_13/ReadVariableOp_1ReadVariableOpDsequential_3_low_rank_layer_2_tensordot_13_readvariableop_1_resource*
_output_shapes	
:*
dtype0
8sequential_3/low_rank_layer_2/Tensordot_13/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     í
2sequential_3/low_rank_layer_2/Tensordot_13/ReshapeReshapeAsequential_3/low_rank_layer_2/Tensordot_13/ReadVariableOp:value:0Asequential_3/low_rank_layer_2/Tensordot_13/Reshape/shape:output:0*
T0*
_output_shapes
:	
:sequential_3/low_rank_layer_2/Tensordot_13/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  ó
4sequential_3/low_rank_layer_2/Tensordot_13/Reshape_1ReshapeCsequential_3/low_rank_layer_2/Tensordot_13/ReadVariableOp_1:value:0Csequential_3/low_rank_layer_2/Tensordot_13/Reshape_1/shape:output:0*
T0*
_output_shapes
:	â
1sequential_3/low_rank_layer_2/Tensordot_13/MatMulMatMul;sequential_3/low_rank_layer_2/Tensordot_13/Reshape:output:0=sequential_3/low_rank_layer_2/Tensordot_13/Reshape_1:output:0*
T0* 
_output_shapes
:
¿
$sequential_3/low_rank_layer_2/add_12AddV2(sequential_3/low_rank_layer_2/add_11:z:0;sequential_3/low_rank_layer_2/Tensordot_13/MatMul:product:0*
T0* 
_output_shapes
:
¹
9sequential_3/low_rank_layer_2/Tensordot_14/ReadVariableOpReadVariableOpBsequential_3_low_rank_layer_2_tensordot_14_readvariableop_resource*
_output_shapes	
:*
dtype0½
;sequential_3/low_rank_layer_2/Tensordot_14/ReadVariableOp_1ReadVariableOpDsequential_3_low_rank_layer_2_tensordot_14_readvariableop_1_resource*
_output_shapes	
:*
dtype0
8sequential_3/low_rank_layer_2/Tensordot_14/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     í
2sequential_3/low_rank_layer_2/Tensordot_14/ReshapeReshapeAsequential_3/low_rank_layer_2/Tensordot_14/ReadVariableOp:value:0Asequential_3/low_rank_layer_2/Tensordot_14/Reshape/shape:output:0*
T0*
_output_shapes
:	
:sequential_3/low_rank_layer_2/Tensordot_14/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  ó
4sequential_3/low_rank_layer_2/Tensordot_14/Reshape_1ReshapeCsequential_3/low_rank_layer_2/Tensordot_14/ReadVariableOp_1:value:0Csequential_3/low_rank_layer_2/Tensordot_14/Reshape_1/shape:output:0*
T0*
_output_shapes
:	â
1sequential_3/low_rank_layer_2/Tensordot_14/MatMulMatMul;sequential_3/low_rank_layer_2/Tensordot_14/Reshape:output:0=sequential_3/low_rank_layer_2/Tensordot_14/Reshape_1:output:0*
T0* 
_output_shapes
:
¿
$sequential_3/low_rank_layer_2/add_13AddV2(sequential_3/low_rank_layer_2/add_12:z:0;sequential_3/low_rank_layer_2/Tensordot_14/MatMul:product:0*
T0* 
_output_shapes
:
¹
9sequential_3/low_rank_layer_2/Tensordot_15/ReadVariableOpReadVariableOpBsequential_3_low_rank_layer_2_tensordot_15_readvariableop_resource*
_output_shapes	
:*
dtype0½
;sequential_3/low_rank_layer_2/Tensordot_15/ReadVariableOp_1ReadVariableOpDsequential_3_low_rank_layer_2_tensordot_15_readvariableop_1_resource*
_output_shapes	
:*
dtype0
8sequential_3/low_rank_layer_2/Tensordot_15/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     í
2sequential_3/low_rank_layer_2/Tensordot_15/ReshapeReshapeAsequential_3/low_rank_layer_2/Tensordot_15/ReadVariableOp:value:0Asequential_3/low_rank_layer_2/Tensordot_15/Reshape/shape:output:0*
T0*
_output_shapes
:	
:sequential_3/low_rank_layer_2/Tensordot_15/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  ó
4sequential_3/low_rank_layer_2/Tensordot_15/Reshape_1ReshapeCsequential_3/low_rank_layer_2/Tensordot_15/ReadVariableOp_1:value:0Csequential_3/low_rank_layer_2/Tensordot_15/Reshape_1/shape:output:0*
T0*
_output_shapes
:	â
1sequential_3/low_rank_layer_2/Tensordot_15/MatMulMatMul;sequential_3/low_rank_layer_2/Tensordot_15/Reshape:output:0=sequential_3/low_rank_layer_2/Tensordot_15/Reshape_1:output:0*
T0* 
_output_shapes
:
¿
$sequential_3/low_rank_layer_2/add_14AddV2(sequential_3/low_rank_layer_2/add_13:z:0;sequential_3/low_rank_layer_2/Tensordot_15/MatMul:product:0*
T0* 
_output_shapes
:
¹
9sequential_3/low_rank_layer_2/Tensordot_16/ReadVariableOpReadVariableOpBsequential_3_low_rank_layer_2_tensordot_16_readvariableop_resource*
_output_shapes	
:*
dtype0½
;sequential_3/low_rank_layer_2/Tensordot_16/ReadVariableOp_1ReadVariableOpDsequential_3_low_rank_layer_2_tensordot_16_readvariableop_1_resource*
_output_shapes	
:*
dtype0
8sequential_3/low_rank_layer_2/Tensordot_16/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     í
2sequential_3/low_rank_layer_2/Tensordot_16/ReshapeReshapeAsequential_3/low_rank_layer_2/Tensordot_16/ReadVariableOp:value:0Asequential_3/low_rank_layer_2/Tensordot_16/Reshape/shape:output:0*
T0*
_output_shapes
:	
:sequential_3/low_rank_layer_2/Tensordot_16/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  ó
4sequential_3/low_rank_layer_2/Tensordot_16/Reshape_1ReshapeCsequential_3/low_rank_layer_2/Tensordot_16/ReadVariableOp_1:value:0Csequential_3/low_rank_layer_2/Tensordot_16/Reshape_1/shape:output:0*
T0*
_output_shapes
:	â
1sequential_3/low_rank_layer_2/Tensordot_16/MatMulMatMul;sequential_3/low_rank_layer_2/Tensordot_16/Reshape:output:0=sequential_3/low_rank_layer_2/Tensordot_16/Reshape_1:output:0*
T0* 
_output_shapes
:
¿
$sequential_3/low_rank_layer_2/add_15AddV2(sequential_3/low_rank_layer_2/add_14:z:0;sequential_3/low_rank_layer_2/Tensordot_16/MatMul:product:0*
T0* 
_output_shapes
:
¹
9sequential_3/low_rank_layer_2/Tensordot_17/ReadVariableOpReadVariableOpBsequential_3_low_rank_layer_2_tensordot_17_readvariableop_resource*
_output_shapes	
:*
dtype0½
;sequential_3/low_rank_layer_2/Tensordot_17/ReadVariableOp_1ReadVariableOpDsequential_3_low_rank_layer_2_tensordot_17_readvariableop_1_resource*
_output_shapes	
:*
dtype0
8sequential_3/low_rank_layer_2/Tensordot_17/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     í
2sequential_3/low_rank_layer_2/Tensordot_17/ReshapeReshapeAsequential_3/low_rank_layer_2/Tensordot_17/ReadVariableOp:value:0Asequential_3/low_rank_layer_2/Tensordot_17/Reshape/shape:output:0*
T0*
_output_shapes
:	
:sequential_3/low_rank_layer_2/Tensordot_17/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  ó
4sequential_3/low_rank_layer_2/Tensordot_17/Reshape_1ReshapeCsequential_3/low_rank_layer_2/Tensordot_17/ReadVariableOp_1:value:0Csequential_3/low_rank_layer_2/Tensordot_17/Reshape_1/shape:output:0*
T0*
_output_shapes
:	â
1sequential_3/low_rank_layer_2/Tensordot_17/MatMulMatMul;sequential_3/low_rank_layer_2/Tensordot_17/Reshape:output:0=sequential_3/low_rank_layer_2/Tensordot_17/Reshape_1:output:0*
T0* 
_output_shapes
:
¿
$sequential_3/low_rank_layer_2/add_16AddV2(sequential_3/low_rank_layer_2/add_15:z:0;sequential_3/low_rank_layer_2/Tensordot_17/MatMul:product:0*
T0* 
_output_shapes
:
¹
9sequential_3/low_rank_layer_2/Tensordot_18/ReadVariableOpReadVariableOpBsequential_3_low_rank_layer_2_tensordot_18_readvariableop_resource*
_output_shapes	
:*
dtype0½
;sequential_3/low_rank_layer_2/Tensordot_18/ReadVariableOp_1ReadVariableOpDsequential_3_low_rank_layer_2_tensordot_18_readvariableop_1_resource*
_output_shapes	
:*
dtype0
8sequential_3/low_rank_layer_2/Tensordot_18/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     í
2sequential_3/low_rank_layer_2/Tensordot_18/ReshapeReshapeAsequential_3/low_rank_layer_2/Tensordot_18/ReadVariableOp:value:0Asequential_3/low_rank_layer_2/Tensordot_18/Reshape/shape:output:0*
T0*
_output_shapes
:	
:sequential_3/low_rank_layer_2/Tensordot_18/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  ó
4sequential_3/low_rank_layer_2/Tensordot_18/Reshape_1ReshapeCsequential_3/low_rank_layer_2/Tensordot_18/ReadVariableOp_1:value:0Csequential_3/low_rank_layer_2/Tensordot_18/Reshape_1/shape:output:0*
T0*
_output_shapes
:	â
1sequential_3/low_rank_layer_2/Tensordot_18/MatMulMatMul;sequential_3/low_rank_layer_2/Tensordot_18/Reshape:output:0=sequential_3/low_rank_layer_2/Tensordot_18/Reshape_1:output:0*
T0* 
_output_shapes
:
¿
$sequential_3/low_rank_layer_2/add_17AddV2(sequential_3/low_rank_layer_2/add_16:z:0;sequential_3/low_rank_layer_2/Tensordot_18/MatMul:product:0*
T0* 
_output_shapes
:
¹
9sequential_3/low_rank_layer_2/Tensordot_19/ReadVariableOpReadVariableOpBsequential_3_low_rank_layer_2_tensordot_19_readvariableop_resource*
_output_shapes	
:*
dtype0½
;sequential_3/low_rank_layer_2/Tensordot_19/ReadVariableOp_1ReadVariableOpDsequential_3_low_rank_layer_2_tensordot_19_readvariableop_1_resource*
_output_shapes	
:*
dtype0
8sequential_3/low_rank_layer_2/Tensordot_19/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     í
2sequential_3/low_rank_layer_2/Tensordot_19/ReshapeReshapeAsequential_3/low_rank_layer_2/Tensordot_19/ReadVariableOp:value:0Asequential_3/low_rank_layer_2/Tensordot_19/Reshape/shape:output:0*
T0*
_output_shapes
:	
:sequential_3/low_rank_layer_2/Tensordot_19/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  ó
4sequential_3/low_rank_layer_2/Tensordot_19/Reshape_1ReshapeCsequential_3/low_rank_layer_2/Tensordot_19/ReadVariableOp_1:value:0Csequential_3/low_rank_layer_2/Tensordot_19/Reshape_1/shape:output:0*
T0*
_output_shapes
:	â
1sequential_3/low_rank_layer_2/Tensordot_19/MatMulMatMul;sequential_3/low_rank_layer_2/Tensordot_19/Reshape:output:0=sequential_3/low_rank_layer_2/Tensordot_19/Reshape_1:output:0*
T0* 
_output_shapes
:
¿
$sequential_3/low_rank_layer_2/add_18AddV2(sequential_3/low_rank_layer_2/add_17:z:0;sequential_3/low_rank_layer_2/Tensordot_19/MatMul:product:0*
T0* 
_output_shapes
:
¹
9sequential_3/low_rank_layer_2/Tensordot_20/ReadVariableOpReadVariableOpBsequential_3_low_rank_layer_2_tensordot_20_readvariableop_resource*
_output_shapes	
:*
dtype0½
;sequential_3/low_rank_layer_2/Tensordot_20/ReadVariableOp_1ReadVariableOpDsequential_3_low_rank_layer_2_tensordot_20_readvariableop_1_resource*
_output_shapes	
:*
dtype0
8sequential_3/low_rank_layer_2/Tensordot_20/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     í
2sequential_3/low_rank_layer_2/Tensordot_20/ReshapeReshapeAsequential_3/low_rank_layer_2/Tensordot_20/ReadVariableOp:value:0Asequential_3/low_rank_layer_2/Tensordot_20/Reshape/shape:output:0*
T0*
_output_shapes
:	
:sequential_3/low_rank_layer_2/Tensordot_20/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  ó
4sequential_3/low_rank_layer_2/Tensordot_20/Reshape_1ReshapeCsequential_3/low_rank_layer_2/Tensordot_20/ReadVariableOp_1:value:0Csequential_3/low_rank_layer_2/Tensordot_20/Reshape_1/shape:output:0*
T0*
_output_shapes
:	â
1sequential_3/low_rank_layer_2/Tensordot_20/MatMulMatMul;sequential_3/low_rank_layer_2/Tensordot_20/Reshape:output:0=sequential_3/low_rank_layer_2/Tensordot_20/Reshape_1:output:0*
T0* 
_output_shapes
:
¿
$sequential_3/low_rank_layer_2/add_19AddV2(sequential_3/low_rank_layer_2/add_18:z:0;sequential_3/low_rank_layer_2/Tensordot_20/MatMul:product:0*
T0* 
_output_shapes
:
¹
9sequential_3/low_rank_layer_2/Tensordot_21/ReadVariableOpReadVariableOpBsequential_3_low_rank_layer_2_tensordot_21_readvariableop_resource*
_output_shapes	
:*
dtype0½
;sequential_3/low_rank_layer_2/Tensordot_21/ReadVariableOp_1ReadVariableOpDsequential_3_low_rank_layer_2_tensordot_21_readvariableop_1_resource*
_output_shapes	
:*
dtype0
8sequential_3/low_rank_layer_2/Tensordot_21/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     í
2sequential_3/low_rank_layer_2/Tensordot_21/ReshapeReshapeAsequential_3/low_rank_layer_2/Tensordot_21/ReadVariableOp:value:0Asequential_3/low_rank_layer_2/Tensordot_21/Reshape/shape:output:0*
T0*
_output_shapes
:	
:sequential_3/low_rank_layer_2/Tensordot_21/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  ó
4sequential_3/low_rank_layer_2/Tensordot_21/Reshape_1ReshapeCsequential_3/low_rank_layer_2/Tensordot_21/ReadVariableOp_1:value:0Csequential_3/low_rank_layer_2/Tensordot_21/Reshape_1/shape:output:0*
T0*
_output_shapes
:	â
1sequential_3/low_rank_layer_2/Tensordot_21/MatMulMatMul;sequential_3/low_rank_layer_2/Tensordot_21/Reshape:output:0=sequential_3/low_rank_layer_2/Tensordot_21/Reshape_1:output:0*
T0* 
_output_shapes
:
¿
$sequential_3/low_rank_layer_2/add_20AddV2(sequential_3/low_rank_layer_2/add_19:z:0;sequential_3/low_rank_layer_2/Tensordot_21/MatMul:product:0*
T0* 
_output_shapes
:
¹
9sequential_3/low_rank_layer_2/Tensordot_22/ReadVariableOpReadVariableOpBsequential_3_low_rank_layer_2_tensordot_22_readvariableop_resource*
_output_shapes	
:*
dtype0½
;sequential_3/low_rank_layer_2/Tensordot_22/ReadVariableOp_1ReadVariableOpDsequential_3_low_rank_layer_2_tensordot_22_readvariableop_1_resource*
_output_shapes	
:*
dtype0
8sequential_3/low_rank_layer_2/Tensordot_22/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     í
2sequential_3/low_rank_layer_2/Tensordot_22/ReshapeReshapeAsequential_3/low_rank_layer_2/Tensordot_22/ReadVariableOp:value:0Asequential_3/low_rank_layer_2/Tensordot_22/Reshape/shape:output:0*
T0*
_output_shapes
:	
:sequential_3/low_rank_layer_2/Tensordot_22/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  ó
4sequential_3/low_rank_layer_2/Tensordot_22/Reshape_1ReshapeCsequential_3/low_rank_layer_2/Tensordot_22/ReadVariableOp_1:value:0Csequential_3/low_rank_layer_2/Tensordot_22/Reshape_1/shape:output:0*
T0*
_output_shapes
:	â
1sequential_3/low_rank_layer_2/Tensordot_22/MatMulMatMul;sequential_3/low_rank_layer_2/Tensordot_22/Reshape:output:0=sequential_3/low_rank_layer_2/Tensordot_22/Reshape_1:output:0*
T0* 
_output_shapes
:
¿
$sequential_3/low_rank_layer_2/add_21AddV2(sequential_3/low_rank_layer_2/add_20:z:0;sequential_3/low_rank_layer_2/Tensordot_22/MatMul:product:0*
T0* 
_output_shapes
:
¹
9sequential_3/low_rank_layer_2/Tensordot_23/ReadVariableOpReadVariableOpBsequential_3_low_rank_layer_2_tensordot_23_readvariableop_resource*
_output_shapes	
:*
dtype0½
;sequential_3/low_rank_layer_2/Tensordot_23/ReadVariableOp_1ReadVariableOpDsequential_3_low_rank_layer_2_tensordot_23_readvariableop_1_resource*
_output_shapes	
:*
dtype0
8sequential_3/low_rank_layer_2/Tensordot_23/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     í
2sequential_3/low_rank_layer_2/Tensordot_23/ReshapeReshapeAsequential_3/low_rank_layer_2/Tensordot_23/ReadVariableOp:value:0Asequential_3/low_rank_layer_2/Tensordot_23/Reshape/shape:output:0*
T0*
_output_shapes
:	
:sequential_3/low_rank_layer_2/Tensordot_23/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  ó
4sequential_3/low_rank_layer_2/Tensordot_23/Reshape_1ReshapeCsequential_3/low_rank_layer_2/Tensordot_23/ReadVariableOp_1:value:0Csequential_3/low_rank_layer_2/Tensordot_23/Reshape_1/shape:output:0*
T0*
_output_shapes
:	â
1sequential_3/low_rank_layer_2/Tensordot_23/MatMulMatMul;sequential_3/low_rank_layer_2/Tensordot_23/Reshape:output:0=sequential_3/low_rank_layer_2/Tensordot_23/Reshape_1:output:0*
T0* 
_output_shapes
:
¿
$sequential_3/low_rank_layer_2/add_22AddV2(sequential_3/low_rank_layer_2/add_21:z:0;sequential_3/low_rank_layer_2/Tensordot_23/MatMul:product:0*
T0* 
_output_shapes
:
¹
9sequential_3/low_rank_layer_2/Tensordot_24/ReadVariableOpReadVariableOpBsequential_3_low_rank_layer_2_tensordot_24_readvariableop_resource*
_output_shapes	
:*
dtype0½
;sequential_3/low_rank_layer_2/Tensordot_24/ReadVariableOp_1ReadVariableOpDsequential_3_low_rank_layer_2_tensordot_24_readvariableop_1_resource*
_output_shapes	
:*
dtype0
8sequential_3/low_rank_layer_2/Tensordot_24/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     í
2sequential_3/low_rank_layer_2/Tensordot_24/ReshapeReshapeAsequential_3/low_rank_layer_2/Tensordot_24/ReadVariableOp:value:0Asequential_3/low_rank_layer_2/Tensordot_24/Reshape/shape:output:0*
T0*
_output_shapes
:	
:sequential_3/low_rank_layer_2/Tensordot_24/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  ó
4sequential_3/low_rank_layer_2/Tensordot_24/Reshape_1ReshapeCsequential_3/low_rank_layer_2/Tensordot_24/ReadVariableOp_1:value:0Csequential_3/low_rank_layer_2/Tensordot_24/Reshape_1/shape:output:0*
T0*
_output_shapes
:	â
1sequential_3/low_rank_layer_2/Tensordot_24/MatMulMatMul;sequential_3/low_rank_layer_2/Tensordot_24/Reshape:output:0=sequential_3/low_rank_layer_2/Tensordot_24/Reshape_1:output:0*
T0* 
_output_shapes
:
¿
$sequential_3/low_rank_layer_2/add_23AddV2(sequential_3/low_rank_layer_2/add_22:z:0;sequential_3/low_rank_layer_2/Tensordot_24/MatMul:product:0*
T0* 
_output_shapes
:
¹
9sequential_3/low_rank_layer_2/Tensordot_25/ReadVariableOpReadVariableOpBsequential_3_low_rank_layer_2_tensordot_25_readvariableop_resource*
_output_shapes	
:*
dtype0½
;sequential_3/low_rank_layer_2/Tensordot_25/ReadVariableOp_1ReadVariableOpDsequential_3_low_rank_layer_2_tensordot_25_readvariableop_1_resource*
_output_shapes	
:*
dtype0
8sequential_3/low_rank_layer_2/Tensordot_25/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     í
2sequential_3/low_rank_layer_2/Tensordot_25/ReshapeReshapeAsequential_3/low_rank_layer_2/Tensordot_25/ReadVariableOp:value:0Asequential_3/low_rank_layer_2/Tensordot_25/Reshape/shape:output:0*
T0*
_output_shapes
:	
:sequential_3/low_rank_layer_2/Tensordot_25/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  ó
4sequential_3/low_rank_layer_2/Tensordot_25/Reshape_1ReshapeCsequential_3/low_rank_layer_2/Tensordot_25/ReadVariableOp_1:value:0Csequential_3/low_rank_layer_2/Tensordot_25/Reshape_1/shape:output:0*
T0*
_output_shapes
:	â
1sequential_3/low_rank_layer_2/Tensordot_25/MatMulMatMul;sequential_3/low_rank_layer_2/Tensordot_25/Reshape:output:0=sequential_3/low_rank_layer_2/Tensordot_25/Reshape_1:output:0*
T0* 
_output_shapes
:
¿
$sequential_3/low_rank_layer_2/add_24AddV2(sequential_3/low_rank_layer_2/add_23:z:0;sequential_3/low_rank_layer_2/Tensordot_25/MatMul:product:0*
T0* 
_output_shapes
:
¹
9sequential_3/low_rank_layer_2/Tensordot_26/ReadVariableOpReadVariableOpBsequential_3_low_rank_layer_2_tensordot_26_readvariableop_resource*
_output_shapes	
:*
dtype0½
;sequential_3/low_rank_layer_2/Tensordot_26/ReadVariableOp_1ReadVariableOpDsequential_3_low_rank_layer_2_tensordot_26_readvariableop_1_resource*
_output_shapes	
:*
dtype0
8sequential_3/low_rank_layer_2/Tensordot_26/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     í
2sequential_3/low_rank_layer_2/Tensordot_26/ReshapeReshapeAsequential_3/low_rank_layer_2/Tensordot_26/ReadVariableOp:value:0Asequential_3/low_rank_layer_2/Tensordot_26/Reshape/shape:output:0*
T0*
_output_shapes
:	
:sequential_3/low_rank_layer_2/Tensordot_26/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  ó
4sequential_3/low_rank_layer_2/Tensordot_26/Reshape_1ReshapeCsequential_3/low_rank_layer_2/Tensordot_26/ReadVariableOp_1:value:0Csequential_3/low_rank_layer_2/Tensordot_26/Reshape_1/shape:output:0*
T0*
_output_shapes
:	â
1sequential_3/low_rank_layer_2/Tensordot_26/MatMulMatMul;sequential_3/low_rank_layer_2/Tensordot_26/Reshape:output:0=sequential_3/low_rank_layer_2/Tensordot_26/Reshape_1:output:0*
T0* 
_output_shapes
:
¿
$sequential_3/low_rank_layer_2/add_25AddV2(sequential_3/low_rank_layer_2/add_24:z:0;sequential_3/low_rank_layer_2/Tensordot_26/MatMul:product:0*
T0* 
_output_shapes
:
¹
9sequential_3/low_rank_layer_2/Tensordot_27/ReadVariableOpReadVariableOpBsequential_3_low_rank_layer_2_tensordot_27_readvariableop_resource*
_output_shapes	
:*
dtype0½
;sequential_3/low_rank_layer_2/Tensordot_27/ReadVariableOp_1ReadVariableOpDsequential_3_low_rank_layer_2_tensordot_27_readvariableop_1_resource*
_output_shapes	
:*
dtype0
8sequential_3/low_rank_layer_2/Tensordot_27/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     í
2sequential_3/low_rank_layer_2/Tensordot_27/ReshapeReshapeAsequential_3/low_rank_layer_2/Tensordot_27/ReadVariableOp:value:0Asequential_3/low_rank_layer_2/Tensordot_27/Reshape/shape:output:0*
T0*
_output_shapes
:	
:sequential_3/low_rank_layer_2/Tensordot_27/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  ó
4sequential_3/low_rank_layer_2/Tensordot_27/Reshape_1ReshapeCsequential_3/low_rank_layer_2/Tensordot_27/ReadVariableOp_1:value:0Csequential_3/low_rank_layer_2/Tensordot_27/Reshape_1/shape:output:0*
T0*
_output_shapes
:	â
1sequential_3/low_rank_layer_2/Tensordot_27/MatMulMatMul;sequential_3/low_rank_layer_2/Tensordot_27/Reshape:output:0=sequential_3/low_rank_layer_2/Tensordot_27/Reshape_1:output:0*
T0* 
_output_shapes
:
¿
$sequential_3/low_rank_layer_2/add_26AddV2(sequential_3/low_rank_layer_2/add_25:z:0;sequential_3/low_rank_layer_2/Tensordot_27/MatMul:product:0*
T0* 
_output_shapes
:
¹
9sequential_3/low_rank_layer_2/Tensordot_28/ReadVariableOpReadVariableOpBsequential_3_low_rank_layer_2_tensordot_28_readvariableop_resource*
_output_shapes	
:*
dtype0½
;sequential_3/low_rank_layer_2/Tensordot_28/ReadVariableOp_1ReadVariableOpDsequential_3_low_rank_layer_2_tensordot_28_readvariableop_1_resource*
_output_shapes	
:*
dtype0
8sequential_3/low_rank_layer_2/Tensordot_28/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     í
2sequential_3/low_rank_layer_2/Tensordot_28/ReshapeReshapeAsequential_3/low_rank_layer_2/Tensordot_28/ReadVariableOp:value:0Asequential_3/low_rank_layer_2/Tensordot_28/Reshape/shape:output:0*
T0*
_output_shapes
:	
:sequential_3/low_rank_layer_2/Tensordot_28/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  ó
4sequential_3/low_rank_layer_2/Tensordot_28/Reshape_1ReshapeCsequential_3/low_rank_layer_2/Tensordot_28/ReadVariableOp_1:value:0Csequential_3/low_rank_layer_2/Tensordot_28/Reshape_1/shape:output:0*
T0*
_output_shapes
:	â
1sequential_3/low_rank_layer_2/Tensordot_28/MatMulMatMul;sequential_3/low_rank_layer_2/Tensordot_28/Reshape:output:0=sequential_3/low_rank_layer_2/Tensordot_28/Reshape_1:output:0*
T0* 
_output_shapes
:
¿
$sequential_3/low_rank_layer_2/add_27AddV2(sequential_3/low_rank_layer_2/add_26:z:0;sequential_3/low_rank_layer_2/Tensordot_28/MatMul:product:0*
T0* 
_output_shapes
:
¹
9sequential_3/low_rank_layer_2/Tensordot_29/ReadVariableOpReadVariableOpBsequential_3_low_rank_layer_2_tensordot_29_readvariableop_resource*
_output_shapes	
:*
dtype0½
;sequential_3/low_rank_layer_2/Tensordot_29/ReadVariableOp_1ReadVariableOpDsequential_3_low_rank_layer_2_tensordot_29_readvariableop_1_resource*
_output_shapes	
:*
dtype0
8sequential_3/low_rank_layer_2/Tensordot_29/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     í
2sequential_3/low_rank_layer_2/Tensordot_29/ReshapeReshapeAsequential_3/low_rank_layer_2/Tensordot_29/ReadVariableOp:value:0Asequential_3/low_rank_layer_2/Tensordot_29/Reshape/shape:output:0*
T0*
_output_shapes
:	
:sequential_3/low_rank_layer_2/Tensordot_29/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  ó
4sequential_3/low_rank_layer_2/Tensordot_29/Reshape_1ReshapeCsequential_3/low_rank_layer_2/Tensordot_29/ReadVariableOp_1:value:0Csequential_3/low_rank_layer_2/Tensordot_29/Reshape_1/shape:output:0*
T0*
_output_shapes
:	â
1sequential_3/low_rank_layer_2/Tensordot_29/MatMulMatMul;sequential_3/low_rank_layer_2/Tensordot_29/Reshape:output:0=sequential_3/low_rank_layer_2/Tensordot_29/Reshape_1:output:0*
T0* 
_output_shapes
:
¿
$sequential_3/low_rank_layer_2/add_28AddV2(sequential_3/low_rank_layer_2/add_27:z:0;sequential_3/low_rank_layer_2/Tensordot_29/MatMul:product:0*
T0* 
_output_shapes
:
¹
9sequential_3/low_rank_layer_2/Tensordot_30/ReadVariableOpReadVariableOpBsequential_3_low_rank_layer_2_tensordot_30_readvariableop_resource*
_output_shapes	
:*
dtype0½
;sequential_3/low_rank_layer_2/Tensordot_30/ReadVariableOp_1ReadVariableOpDsequential_3_low_rank_layer_2_tensordot_30_readvariableop_1_resource*
_output_shapes	
:*
dtype0
8sequential_3/low_rank_layer_2/Tensordot_30/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     í
2sequential_3/low_rank_layer_2/Tensordot_30/ReshapeReshapeAsequential_3/low_rank_layer_2/Tensordot_30/ReadVariableOp:value:0Asequential_3/low_rank_layer_2/Tensordot_30/Reshape/shape:output:0*
T0*
_output_shapes
:	
:sequential_3/low_rank_layer_2/Tensordot_30/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  ó
4sequential_3/low_rank_layer_2/Tensordot_30/Reshape_1ReshapeCsequential_3/low_rank_layer_2/Tensordot_30/ReadVariableOp_1:value:0Csequential_3/low_rank_layer_2/Tensordot_30/Reshape_1/shape:output:0*
T0*
_output_shapes
:	â
1sequential_3/low_rank_layer_2/Tensordot_30/MatMulMatMul;sequential_3/low_rank_layer_2/Tensordot_30/Reshape:output:0=sequential_3/low_rank_layer_2/Tensordot_30/Reshape_1:output:0*
T0* 
_output_shapes
:
¿
$sequential_3/low_rank_layer_2/add_29AddV2(sequential_3/low_rank_layer_2/add_28:z:0;sequential_3/low_rank_layer_2/Tensordot_30/MatMul:product:0*
T0* 
_output_shapes
:
¹
9sequential_3/low_rank_layer_2/Tensordot_31/ReadVariableOpReadVariableOpBsequential_3_low_rank_layer_2_tensordot_31_readvariableop_resource*
_output_shapes	
:*
dtype0½
;sequential_3/low_rank_layer_2/Tensordot_31/ReadVariableOp_1ReadVariableOpDsequential_3_low_rank_layer_2_tensordot_31_readvariableop_1_resource*
_output_shapes	
:*
dtype0
8sequential_3/low_rank_layer_2/Tensordot_31/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     í
2sequential_3/low_rank_layer_2/Tensordot_31/ReshapeReshapeAsequential_3/low_rank_layer_2/Tensordot_31/ReadVariableOp:value:0Asequential_3/low_rank_layer_2/Tensordot_31/Reshape/shape:output:0*
T0*
_output_shapes
:	
:sequential_3/low_rank_layer_2/Tensordot_31/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  ó
4sequential_3/low_rank_layer_2/Tensordot_31/Reshape_1ReshapeCsequential_3/low_rank_layer_2/Tensordot_31/ReadVariableOp_1:value:0Csequential_3/low_rank_layer_2/Tensordot_31/Reshape_1/shape:output:0*
T0*
_output_shapes
:	â
1sequential_3/low_rank_layer_2/Tensordot_31/MatMulMatMul;sequential_3/low_rank_layer_2/Tensordot_31/Reshape:output:0=sequential_3/low_rank_layer_2/Tensordot_31/Reshape_1:output:0*
T0* 
_output_shapes
:
¿
$sequential_3/low_rank_layer_2/add_30AddV2(sequential_3/low_rank_layer_2/add_29:z:0;sequential_3/low_rank_layer_2/Tensordot_31/MatMul:product:0*
T0* 
_output_shapes
:
¿
$sequential_3/low_rank_layer_2/matmulBatchMatMulV2(sequential_3/low_rank_layer_2/add_30:z:0'sequential_3/reshape_4/Reshape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
sequential_3/reshape_5/ShapeShape-sequential_3/low_rank_layer_2/matmul:output:0*
T0*
_output_shapes
:t
*sequential_3/reshape_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_3/reshape_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_3/reshape_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ä
$sequential_3/reshape_5/strided_sliceStridedSlice%sequential_3/reshape_5/Shape:output:03sequential_3/reshape_5/strided_slice/stack:output:05sequential_3/reshape_5/strided_slice/stack_1:output:05sequential_3/reshape_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_3/reshape_5/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :h
&sequential_3/reshape_5/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :h
&sequential_3/reshape_5/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :
$sequential_3/reshape_5/Reshape/shapePack-sequential_3/reshape_5/strided_slice:output:0/sequential_3/reshape_5/Reshape/shape/1:output:0/sequential_3/reshape_5/Reshape/shape/2:output:0/sequential_3/reshape_5/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:Á
sequential_3/reshape_5/ReshapeReshape-sequential_3/low_rank_layer_2/matmul:output:0-sequential_3/reshape_5/Reshape/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
$sequential_3/max_pooling2d_6/MaxPoolMaxPool'sequential_3/reshape_5/Reshape:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
ª
,sequential_3/conv2d_10/Conv2D/ReadVariableOpReadVariableOp5sequential_3_conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0ï
sequential_3/conv2d_10/Conv2DConv2D-sequential_3/max_pooling2d_6/MaxPool:output:04sequential_3/conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
 
-sequential_3/conv2d_10/BiasAdd/ReadVariableOpReadVariableOp6sequential_3_conv2d_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Â
sequential_3/conv2d_10/BiasAddBiasAdd&sequential_3/conv2d_10/Conv2D:output:05sequential_3/conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_3/conv2d_10/ReluRelu'sequential_3/conv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿÇ
$sequential_3/max_pooling2d_7/MaxPoolMaxPool)sequential_3/conv2d_10/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
ª
,sequential_3/conv2d_11/Conv2D/ReadVariableOpReadVariableOp5sequential_3_conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0ï
sequential_3/conv2d_11/Conv2DConv2D-sequential_3/max_pooling2d_7/MaxPool:output:04sequential_3/conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
 
-sequential_3/conv2d_11/BiasAdd/ReadVariableOpReadVariableOp6sequential_3_conv2d_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Â
sequential_3/conv2d_11/BiasAddBiasAdd&sequential_3/conv2d_11/Conv2D:output:05sequential_3/conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_3/conv2d_11/ReluRelu'sequential_3/conv2d_11/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
sequential_3/flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ®
sequential_3/flatten_3/ReshapeReshape)sequential_3/conv2d_11/Relu:activations:0%sequential_3/flatten_3/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_3/dropout_3/IdentityIdentity'sequential_3/flatten_3/Reshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*sequential_3/dense_3/MatMul/ReadVariableOpReadVariableOp3sequential_3_dense_3_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0µ
sequential_3/dense_3/MatMulMatMul(sequential_3/dropout_3/Identity:output:02sequential_3/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

+sequential_3/dense_3/BiasAdd/ReadVariableOpReadVariableOp4sequential_3_dense_3_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0µ
sequential_3/dense_3/BiasAddBiasAdd%sequential_3/dense_3/MatMul:product:03sequential_3/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

sequential_3/dense_3/SoftmaxSoftmax%sequential_3/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
u
IdentityIdentity&sequential_3/dense_3/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ä!
NoOpNoOp.^sequential_3/conv2d_10/BiasAdd/ReadVariableOp-^sequential_3/conv2d_10/Conv2D/ReadVariableOp.^sequential_3/conv2d_11/BiasAdd/ReadVariableOp-^sequential_3/conv2d_11/Conv2D/ReadVariableOp-^sequential_3/conv2d_9/BiasAdd/ReadVariableOp,^sequential_3/conv2d_9/Conv2D/ReadVariableOp,^sequential_3/dense_3/BiasAdd/ReadVariableOp+^sequential_3/dense_3/MatMul/ReadVariableOp7^sequential_3/low_rank_layer_2/Tensordot/ReadVariableOp9^sequential_3/low_rank_layer_2/Tensordot/ReadVariableOp_19^sequential_3/low_rank_layer_2/Tensordot_1/ReadVariableOp;^sequential_3/low_rank_layer_2/Tensordot_1/ReadVariableOp_1:^sequential_3/low_rank_layer_2/Tensordot_10/ReadVariableOp<^sequential_3/low_rank_layer_2/Tensordot_10/ReadVariableOp_1:^sequential_3/low_rank_layer_2/Tensordot_11/ReadVariableOp<^sequential_3/low_rank_layer_2/Tensordot_11/ReadVariableOp_1:^sequential_3/low_rank_layer_2/Tensordot_12/ReadVariableOp<^sequential_3/low_rank_layer_2/Tensordot_12/ReadVariableOp_1:^sequential_3/low_rank_layer_2/Tensordot_13/ReadVariableOp<^sequential_3/low_rank_layer_2/Tensordot_13/ReadVariableOp_1:^sequential_3/low_rank_layer_2/Tensordot_14/ReadVariableOp<^sequential_3/low_rank_layer_2/Tensordot_14/ReadVariableOp_1:^sequential_3/low_rank_layer_2/Tensordot_15/ReadVariableOp<^sequential_3/low_rank_layer_2/Tensordot_15/ReadVariableOp_1:^sequential_3/low_rank_layer_2/Tensordot_16/ReadVariableOp<^sequential_3/low_rank_layer_2/Tensordot_16/ReadVariableOp_1:^sequential_3/low_rank_layer_2/Tensordot_17/ReadVariableOp<^sequential_3/low_rank_layer_2/Tensordot_17/ReadVariableOp_1:^sequential_3/low_rank_layer_2/Tensordot_18/ReadVariableOp<^sequential_3/low_rank_layer_2/Tensordot_18/ReadVariableOp_1:^sequential_3/low_rank_layer_2/Tensordot_19/ReadVariableOp<^sequential_3/low_rank_layer_2/Tensordot_19/ReadVariableOp_19^sequential_3/low_rank_layer_2/Tensordot_2/ReadVariableOp;^sequential_3/low_rank_layer_2/Tensordot_2/ReadVariableOp_1:^sequential_3/low_rank_layer_2/Tensordot_20/ReadVariableOp<^sequential_3/low_rank_layer_2/Tensordot_20/ReadVariableOp_1:^sequential_3/low_rank_layer_2/Tensordot_21/ReadVariableOp<^sequential_3/low_rank_layer_2/Tensordot_21/ReadVariableOp_1:^sequential_3/low_rank_layer_2/Tensordot_22/ReadVariableOp<^sequential_3/low_rank_layer_2/Tensordot_22/ReadVariableOp_1:^sequential_3/low_rank_layer_2/Tensordot_23/ReadVariableOp<^sequential_3/low_rank_layer_2/Tensordot_23/ReadVariableOp_1:^sequential_3/low_rank_layer_2/Tensordot_24/ReadVariableOp<^sequential_3/low_rank_layer_2/Tensordot_24/ReadVariableOp_1:^sequential_3/low_rank_layer_2/Tensordot_25/ReadVariableOp<^sequential_3/low_rank_layer_2/Tensordot_25/ReadVariableOp_1:^sequential_3/low_rank_layer_2/Tensordot_26/ReadVariableOp<^sequential_3/low_rank_layer_2/Tensordot_26/ReadVariableOp_1:^sequential_3/low_rank_layer_2/Tensordot_27/ReadVariableOp<^sequential_3/low_rank_layer_2/Tensordot_27/ReadVariableOp_1:^sequential_3/low_rank_layer_2/Tensordot_28/ReadVariableOp<^sequential_3/low_rank_layer_2/Tensordot_28/ReadVariableOp_1:^sequential_3/low_rank_layer_2/Tensordot_29/ReadVariableOp<^sequential_3/low_rank_layer_2/Tensordot_29/ReadVariableOp_19^sequential_3/low_rank_layer_2/Tensordot_3/ReadVariableOp;^sequential_3/low_rank_layer_2/Tensordot_3/ReadVariableOp_1:^sequential_3/low_rank_layer_2/Tensordot_30/ReadVariableOp<^sequential_3/low_rank_layer_2/Tensordot_30/ReadVariableOp_1:^sequential_3/low_rank_layer_2/Tensordot_31/ReadVariableOp<^sequential_3/low_rank_layer_2/Tensordot_31/ReadVariableOp_19^sequential_3/low_rank_layer_2/Tensordot_4/ReadVariableOp;^sequential_3/low_rank_layer_2/Tensordot_4/ReadVariableOp_19^sequential_3/low_rank_layer_2/Tensordot_5/ReadVariableOp;^sequential_3/low_rank_layer_2/Tensordot_5/ReadVariableOp_19^sequential_3/low_rank_layer_2/Tensordot_6/ReadVariableOp;^sequential_3/low_rank_layer_2/Tensordot_6/ReadVariableOp_19^sequential_3/low_rank_layer_2/Tensordot_7/ReadVariableOp;^sequential_3/low_rank_layer_2/Tensordot_7/ReadVariableOp_19^sequential_3/low_rank_layer_2/Tensordot_8/ReadVariableOp;^sequential_3/low_rank_layer_2/Tensordot_8/ReadVariableOp_19^sequential_3/low_rank_layer_2/Tensordot_9/ReadVariableOp;^sequential_3/low_rank_layer_2/Tensordot_9/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*À
_input_shapes®
«:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2^
-sequential_3/conv2d_10/BiasAdd/ReadVariableOp-sequential_3/conv2d_10/BiasAdd/ReadVariableOp2\
,sequential_3/conv2d_10/Conv2D/ReadVariableOp,sequential_3/conv2d_10/Conv2D/ReadVariableOp2^
-sequential_3/conv2d_11/BiasAdd/ReadVariableOp-sequential_3/conv2d_11/BiasAdd/ReadVariableOp2\
,sequential_3/conv2d_11/Conv2D/ReadVariableOp,sequential_3/conv2d_11/Conv2D/ReadVariableOp2\
,sequential_3/conv2d_9/BiasAdd/ReadVariableOp,sequential_3/conv2d_9/BiasAdd/ReadVariableOp2Z
+sequential_3/conv2d_9/Conv2D/ReadVariableOp+sequential_3/conv2d_9/Conv2D/ReadVariableOp2Z
+sequential_3/dense_3/BiasAdd/ReadVariableOp+sequential_3/dense_3/BiasAdd/ReadVariableOp2X
*sequential_3/dense_3/MatMul/ReadVariableOp*sequential_3/dense_3/MatMul/ReadVariableOp2p
6sequential_3/low_rank_layer_2/Tensordot/ReadVariableOp6sequential_3/low_rank_layer_2/Tensordot/ReadVariableOp2t
8sequential_3/low_rank_layer_2/Tensordot/ReadVariableOp_18sequential_3/low_rank_layer_2/Tensordot/ReadVariableOp_12t
8sequential_3/low_rank_layer_2/Tensordot_1/ReadVariableOp8sequential_3/low_rank_layer_2/Tensordot_1/ReadVariableOp2x
:sequential_3/low_rank_layer_2/Tensordot_1/ReadVariableOp_1:sequential_3/low_rank_layer_2/Tensordot_1/ReadVariableOp_12v
9sequential_3/low_rank_layer_2/Tensordot_10/ReadVariableOp9sequential_3/low_rank_layer_2/Tensordot_10/ReadVariableOp2z
;sequential_3/low_rank_layer_2/Tensordot_10/ReadVariableOp_1;sequential_3/low_rank_layer_2/Tensordot_10/ReadVariableOp_12v
9sequential_3/low_rank_layer_2/Tensordot_11/ReadVariableOp9sequential_3/low_rank_layer_2/Tensordot_11/ReadVariableOp2z
;sequential_3/low_rank_layer_2/Tensordot_11/ReadVariableOp_1;sequential_3/low_rank_layer_2/Tensordot_11/ReadVariableOp_12v
9sequential_3/low_rank_layer_2/Tensordot_12/ReadVariableOp9sequential_3/low_rank_layer_2/Tensordot_12/ReadVariableOp2z
;sequential_3/low_rank_layer_2/Tensordot_12/ReadVariableOp_1;sequential_3/low_rank_layer_2/Tensordot_12/ReadVariableOp_12v
9sequential_3/low_rank_layer_2/Tensordot_13/ReadVariableOp9sequential_3/low_rank_layer_2/Tensordot_13/ReadVariableOp2z
;sequential_3/low_rank_layer_2/Tensordot_13/ReadVariableOp_1;sequential_3/low_rank_layer_2/Tensordot_13/ReadVariableOp_12v
9sequential_3/low_rank_layer_2/Tensordot_14/ReadVariableOp9sequential_3/low_rank_layer_2/Tensordot_14/ReadVariableOp2z
;sequential_3/low_rank_layer_2/Tensordot_14/ReadVariableOp_1;sequential_3/low_rank_layer_2/Tensordot_14/ReadVariableOp_12v
9sequential_3/low_rank_layer_2/Tensordot_15/ReadVariableOp9sequential_3/low_rank_layer_2/Tensordot_15/ReadVariableOp2z
;sequential_3/low_rank_layer_2/Tensordot_15/ReadVariableOp_1;sequential_3/low_rank_layer_2/Tensordot_15/ReadVariableOp_12v
9sequential_3/low_rank_layer_2/Tensordot_16/ReadVariableOp9sequential_3/low_rank_layer_2/Tensordot_16/ReadVariableOp2z
;sequential_3/low_rank_layer_2/Tensordot_16/ReadVariableOp_1;sequential_3/low_rank_layer_2/Tensordot_16/ReadVariableOp_12v
9sequential_3/low_rank_layer_2/Tensordot_17/ReadVariableOp9sequential_3/low_rank_layer_2/Tensordot_17/ReadVariableOp2z
;sequential_3/low_rank_layer_2/Tensordot_17/ReadVariableOp_1;sequential_3/low_rank_layer_2/Tensordot_17/ReadVariableOp_12v
9sequential_3/low_rank_layer_2/Tensordot_18/ReadVariableOp9sequential_3/low_rank_layer_2/Tensordot_18/ReadVariableOp2z
;sequential_3/low_rank_layer_2/Tensordot_18/ReadVariableOp_1;sequential_3/low_rank_layer_2/Tensordot_18/ReadVariableOp_12v
9sequential_3/low_rank_layer_2/Tensordot_19/ReadVariableOp9sequential_3/low_rank_layer_2/Tensordot_19/ReadVariableOp2z
;sequential_3/low_rank_layer_2/Tensordot_19/ReadVariableOp_1;sequential_3/low_rank_layer_2/Tensordot_19/ReadVariableOp_12t
8sequential_3/low_rank_layer_2/Tensordot_2/ReadVariableOp8sequential_3/low_rank_layer_2/Tensordot_2/ReadVariableOp2x
:sequential_3/low_rank_layer_2/Tensordot_2/ReadVariableOp_1:sequential_3/low_rank_layer_2/Tensordot_2/ReadVariableOp_12v
9sequential_3/low_rank_layer_2/Tensordot_20/ReadVariableOp9sequential_3/low_rank_layer_2/Tensordot_20/ReadVariableOp2z
;sequential_3/low_rank_layer_2/Tensordot_20/ReadVariableOp_1;sequential_3/low_rank_layer_2/Tensordot_20/ReadVariableOp_12v
9sequential_3/low_rank_layer_2/Tensordot_21/ReadVariableOp9sequential_3/low_rank_layer_2/Tensordot_21/ReadVariableOp2z
;sequential_3/low_rank_layer_2/Tensordot_21/ReadVariableOp_1;sequential_3/low_rank_layer_2/Tensordot_21/ReadVariableOp_12v
9sequential_3/low_rank_layer_2/Tensordot_22/ReadVariableOp9sequential_3/low_rank_layer_2/Tensordot_22/ReadVariableOp2z
;sequential_3/low_rank_layer_2/Tensordot_22/ReadVariableOp_1;sequential_3/low_rank_layer_2/Tensordot_22/ReadVariableOp_12v
9sequential_3/low_rank_layer_2/Tensordot_23/ReadVariableOp9sequential_3/low_rank_layer_2/Tensordot_23/ReadVariableOp2z
;sequential_3/low_rank_layer_2/Tensordot_23/ReadVariableOp_1;sequential_3/low_rank_layer_2/Tensordot_23/ReadVariableOp_12v
9sequential_3/low_rank_layer_2/Tensordot_24/ReadVariableOp9sequential_3/low_rank_layer_2/Tensordot_24/ReadVariableOp2z
;sequential_3/low_rank_layer_2/Tensordot_24/ReadVariableOp_1;sequential_3/low_rank_layer_2/Tensordot_24/ReadVariableOp_12v
9sequential_3/low_rank_layer_2/Tensordot_25/ReadVariableOp9sequential_3/low_rank_layer_2/Tensordot_25/ReadVariableOp2z
;sequential_3/low_rank_layer_2/Tensordot_25/ReadVariableOp_1;sequential_3/low_rank_layer_2/Tensordot_25/ReadVariableOp_12v
9sequential_3/low_rank_layer_2/Tensordot_26/ReadVariableOp9sequential_3/low_rank_layer_2/Tensordot_26/ReadVariableOp2z
;sequential_3/low_rank_layer_2/Tensordot_26/ReadVariableOp_1;sequential_3/low_rank_layer_2/Tensordot_26/ReadVariableOp_12v
9sequential_3/low_rank_layer_2/Tensordot_27/ReadVariableOp9sequential_3/low_rank_layer_2/Tensordot_27/ReadVariableOp2z
;sequential_3/low_rank_layer_2/Tensordot_27/ReadVariableOp_1;sequential_3/low_rank_layer_2/Tensordot_27/ReadVariableOp_12v
9sequential_3/low_rank_layer_2/Tensordot_28/ReadVariableOp9sequential_3/low_rank_layer_2/Tensordot_28/ReadVariableOp2z
;sequential_3/low_rank_layer_2/Tensordot_28/ReadVariableOp_1;sequential_3/low_rank_layer_2/Tensordot_28/ReadVariableOp_12v
9sequential_3/low_rank_layer_2/Tensordot_29/ReadVariableOp9sequential_3/low_rank_layer_2/Tensordot_29/ReadVariableOp2z
;sequential_3/low_rank_layer_2/Tensordot_29/ReadVariableOp_1;sequential_3/low_rank_layer_2/Tensordot_29/ReadVariableOp_12t
8sequential_3/low_rank_layer_2/Tensordot_3/ReadVariableOp8sequential_3/low_rank_layer_2/Tensordot_3/ReadVariableOp2x
:sequential_3/low_rank_layer_2/Tensordot_3/ReadVariableOp_1:sequential_3/low_rank_layer_2/Tensordot_3/ReadVariableOp_12v
9sequential_3/low_rank_layer_2/Tensordot_30/ReadVariableOp9sequential_3/low_rank_layer_2/Tensordot_30/ReadVariableOp2z
;sequential_3/low_rank_layer_2/Tensordot_30/ReadVariableOp_1;sequential_3/low_rank_layer_2/Tensordot_30/ReadVariableOp_12v
9sequential_3/low_rank_layer_2/Tensordot_31/ReadVariableOp9sequential_3/low_rank_layer_2/Tensordot_31/ReadVariableOp2z
;sequential_3/low_rank_layer_2/Tensordot_31/ReadVariableOp_1;sequential_3/low_rank_layer_2/Tensordot_31/ReadVariableOp_12t
8sequential_3/low_rank_layer_2/Tensordot_4/ReadVariableOp8sequential_3/low_rank_layer_2/Tensordot_4/ReadVariableOp2x
:sequential_3/low_rank_layer_2/Tensordot_4/ReadVariableOp_1:sequential_3/low_rank_layer_2/Tensordot_4/ReadVariableOp_12t
8sequential_3/low_rank_layer_2/Tensordot_5/ReadVariableOp8sequential_3/low_rank_layer_2/Tensordot_5/ReadVariableOp2x
:sequential_3/low_rank_layer_2/Tensordot_5/ReadVariableOp_1:sequential_3/low_rank_layer_2/Tensordot_5/ReadVariableOp_12t
8sequential_3/low_rank_layer_2/Tensordot_6/ReadVariableOp8sequential_3/low_rank_layer_2/Tensordot_6/ReadVariableOp2x
:sequential_3/low_rank_layer_2/Tensordot_6/ReadVariableOp_1:sequential_3/low_rank_layer_2/Tensordot_6/ReadVariableOp_12t
8sequential_3/low_rank_layer_2/Tensordot_7/ReadVariableOp8sequential_3/low_rank_layer_2/Tensordot_7/ReadVariableOp2x
:sequential_3/low_rank_layer_2/Tensordot_7/ReadVariableOp_1:sequential_3/low_rank_layer_2/Tensordot_7/ReadVariableOp_12t
8sequential_3/low_rank_layer_2/Tensordot_8/ReadVariableOp8sequential_3/low_rank_layer_2/Tensordot_8/ReadVariableOp2x
:sequential_3/low_rank_layer_2/Tensordot_8/ReadVariableOp_1:sequential_3/low_rank_layer_2/Tensordot_8/ReadVariableOp_12t
8sequential_3/low_rank_layer_2/Tensordot_9/ReadVariableOp8sequential_3/low_rank_layer_2/Tensordot_9/ReadVariableOp2x
:sequential_3/low_rank_layer_2/Tensordot_9/ReadVariableOp_1:sequential_3/low_rank_layer_2/Tensordot_9/ReadVariableOp_1:X T
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_4

h
L__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_4828654

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
F__inference_dropout_3_layer_call_and_return_conditional_losses_4832335

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
È
b
F__inference_flatten_3_layer_call_and_return_conditional_losses_4832320

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

h
L__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_4828642

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
½
M
1__inference_max_pooling2d_6_layer_call_fn_4832254

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
L__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_4828642
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
ü	
e
F__inference_dropout_3_layer_call_and_return_conditional_losses_4832347

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

ÿ
F__inference_conv2d_11_layer_call_and_return_conditional_losses_4829196

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
Ü
ü*
M__inference_low_rank_layer_2_layer_call_and_return_conditional_losses_4832230

inputs0
!tensordot_readvariableop_resource:	2
#tensordot_readvariableop_1_resource:	2
#tensordot_1_readvariableop_resource:	4
%tensordot_1_readvariableop_1_resource:	2
#tensordot_2_readvariableop_resource:	4
%tensordot_2_readvariableop_1_resource:	2
#tensordot_3_readvariableop_resource:	4
%tensordot_3_readvariableop_1_resource:	2
#tensordot_4_readvariableop_resource:	4
%tensordot_4_readvariableop_1_resource:	2
#tensordot_5_readvariableop_resource:	4
%tensordot_5_readvariableop_1_resource:	2
#tensordot_6_readvariableop_resource:	4
%tensordot_6_readvariableop_1_resource:	2
#tensordot_7_readvariableop_resource:	4
%tensordot_7_readvariableop_1_resource:	2
#tensordot_8_readvariableop_resource:	4
%tensordot_8_readvariableop_1_resource:	2
#tensordot_9_readvariableop_resource:	4
%tensordot_9_readvariableop_1_resource:	3
$tensordot_10_readvariableop_resource:	5
&tensordot_10_readvariableop_1_resource:	3
$tensordot_11_readvariableop_resource:	5
&tensordot_11_readvariableop_1_resource:	3
$tensordot_12_readvariableop_resource:	5
&tensordot_12_readvariableop_1_resource:	3
$tensordot_13_readvariableop_resource:	5
&tensordot_13_readvariableop_1_resource:	3
$tensordot_14_readvariableop_resource:	5
&tensordot_14_readvariableop_1_resource:	3
$tensordot_15_readvariableop_resource:	5
&tensordot_15_readvariableop_1_resource:	3
$tensordot_16_readvariableop_resource:	5
&tensordot_16_readvariableop_1_resource:	3
$tensordot_17_readvariableop_resource:	5
&tensordot_17_readvariableop_1_resource:	3
$tensordot_18_readvariableop_resource:	5
&tensordot_18_readvariableop_1_resource:	3
$tensordot_19_readvariableop_resource:	5
&tensordot_19_readvariableop_1_resource:	3
$tensordot_20_readvariableop_resource:	5
&tensordot_20_readvariableop_1_resource:	3
$tensordot_21_readvariableop_resource:	5
&tensordot_21_readvariableop_1_resource:	3
$tensordot_22_readvariableop_resource:	5
&tensordot_22_readvariableop_1_resource:	3
$tensordot_23_readvariableop_resource:	5
&tensordot_23_readvariableop_1_resource:	3
$tensordot_24_readvariableop_resource:	5
&tensordot_24_readvariableop_1_resource:	3
$tensordot_25_readvariableop_resource:	5
&tensordot_25_readvariableop_1_resource:	3
$tensordot_26_readvariableop_resource:	5
&tensordot_26_readvariableop_1_resource:	3
$tensordot_27_readvariableop_resource:	5
&tensordot_27_readvariableop_1_resource:	3
$tensordot_28_readvariableop_resource:	5
&tensordot_28_readvariableop_1_resource:	3
$tensordot_29_readvariableop_resource:	5
&tensordot_29_readvariableop_1_resource:	3
$tensordot_30_readvariableop_resource:	5
&tensordot_30_readvariableop_1_resource:	3
$tensordot_31_readvariableop_resource:	5
&tensordot_31_readvariableop_1_resource:	
identity¢Tensordot/ReadVariableOp¢Tensordot/ReadVariableOp_1¢Tensordot_1/ReadVariableOp¢Tensordot_1/ReadVariableOp_1¢Tensordot_10/ReadVariableOp¢Tensordot_10/ReadVariableOp_1¢Tensordot_11/ReadVariableOp¢Tensordot_11/ReadVariableOp_1¢Tensordot_12/ReadVariableOp¢Tensordot_12/ReadVariableOp_1¢Tensordot_13/ReadVariableOp¢Tensordot_13/ReadVariableOp_1¢Tensordot_14/ReadVariableOp¢Tensordot_14/ReadVariableOp_1¢Tensordot_15/ReadVariableOp¢Tensordot_15/ReadVariableOp_1¢Tensordot_16/ReadVariableOp¢Tensordot_16/ReadVariableOp_1¢Tensordot_17/ReadVariableOp¢Tensordot_17/ReadVariableOp_1¢Tensordot_18/ReadVariableOp¢Tensordot_18/ReadVariableOp_1¢Tensordot_19/ReadVariableOp¢Tensordot_19/ReadVariableOp_1¢Tensordot_2/ReadVariableOp¢Tensordot_2/ReadVariableOp_1¢Tensordot_20/ReadVariableOp¢Tensordot_20/ReadVariableOp_1¢Tensordot_21/ReadVariableOp¢Tensordot_21/ReadVariableOp_1¢Tensordot_22/ReadVariableOp¢Tensordot_22/ReadVariableOp_1¢Tensordot_23/ReadVariableOp¢Tensordot_23/ReadVariableOp_1¢Tensordot_24/ReadVariableOp¢Tensordot_24/ReadVariableOp_1¢Tensordot_25/ReadVariableOp¢Tensordot_25/ReadVariableOp_1¢Tensordot_26/ReadVariableOp¢Tensordot_26/ReadVariableOp_1¢Tensordot_27/ReadVariableOp¢Tensordot_27/ReadVariableOp_1¢Tensordot_28/ReadVariableOp¢Tensordot_28/ReadVariableOp_1¢Tensordot_29/ReadVariableOp¢Tensordot_29/ReadVariableOp_1¢Tensordot_3/ReadVariableOp¢Tensordot_3/ReadVariableOp_1¢Tensordot_30/ReadVariableOp¢Tensordot_30/ReadVariableOp_1¢Tensordot_31/ReadVariableOp¢Tensordot_31/ReadVariableOp_1¢Tensordot_4/ReadVariableOp¢Tensordot_4/ReadVariableOp_1¢Tensordot_5/ReadVariableOp¢Tensordot_5/ReadVariableOp_1¢Tensordot_6/ReadVariableOp¢Tensordot_6/ReadVariableOp_1¢Tensordot_7/ReadVariableOp¢Tensordot_7/ReadVariableOp_1¢Tensordot_8/ReadVariableOp¢Tensordot_8/ReadVariableOp_1¢Tensordot_9/ReadVariableOp¢Tensordot_9/ReadVariableOp_1w
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes	
:*
dtype0{
Tensordot/ReadVariableOp_1ReadVariableOp#tensordot_readvariableop_1_resource*
_output_shapes	
:*
dtype0h
Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot/ReshapeReshape Tensordot/ReadVariableOp:value:0 Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	j
Tensordot/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot/Reshape_1Reshape"Tensordot/ReadVariableOp_1:value:0"Tensordot/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot/MatMulMatMulTensordot/Reshape:output:0Tensordot/Reshape_1:output:0*
T0* 
_output_shapes
:
{
Tensordot_1/ReadVariableOpReadVariableOp#tensordot_1_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_1/ReadVariableOp_1ReadVariableOp%tensordot_1_readvariableop_1_resource*
_output_shapes	
:*
dtype0j
Tensordot_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_1/ReshapeReshape"Tensordot_1/ReadVariableOp:value:0"Tensordot_1/Reshape/shape:output:0*
T0*
_output_shapes
:	l
Tensordot_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_1/Reshape_1Reshape$Tensordot_1/ReadVariableOp_1:value:0$Tensordot_1/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_1/MatMulMatMulTensordot_1/Reshape:output:0Tensordot_1/Reshape_1:output:0*
T0* 
_output_shapes
:
q
addAddV2Tensordot/MatMul:product:0Tensordot_1/MatMul:product:0*
T0* 
_output_shapes
:
{
Tensordot_2/ReadVariableOpReadVariableOp#tensordot_2_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_2/ReadVariableOp_1ReadVariableOp%tensordot_2_readvariableop_1_resource*
_output_shapes	
:*
dtype0j
Tensordot_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_2/ReshapeReshape"Tensordot_2/ReadVariableOp:value:0"Tensordot_2/Reshape/shape:output:0*
T0*
_output_shapes
:	l
Tensordot_2/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_2/Reshape_1Reshape$Tensordot_2/ReadVariableOp_1:value:0$Tensordot_2/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_2/MatMulMatMulTensordot_2/Reshape:output:0Tensordot_2/Reshape_1:output:0*
T0* 
_output_shapes
:
`
add_1AddV2add:z:0Tensordot_2/MatMul:product:0*
T0* 
_output_shapes
:
{
Tensordot_3/ReadVariableOpReadVariableOp#tensordot_3_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_3/ReadVariableOp_1ReadVariableOp%tensordot_3_readvariableop_1_resource*
_output_shapes	
:*
dtype0j
Tensordot_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_3/ReshapeReshape"Tensordot_3/ReadVariableOp:value:0"Tensordot_3/Reshape/shape:output:0*
T0*
_output_shapes
:	l
Tensordot_3/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_3/Reshape_1Reshape$Tensordot_3/ReadVariableOp_1:value:0$Tensordot_3/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_3/MatMulMatMulTensordot_3/Reshape:output:0Tensordot_3/Reshape_1:output:0*
T0* 
_output_shapes
:
b
add_2AddV2	add_1:z:0Tensordot_3/MatMul:product:0*
T0* 
_output_shapes
:
{
Tensordot_4/ReadVariableOpReadVariableOp#tensordot_4_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_4/ReadVariableOp_1ReadVariableOp%tensordot_4_readvariableop_1_resource*
_output_shapes	
:*
dtype0j
Tensordot_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_4/ReshapeReshape"Tensordot_4/ReadVariableOp:value:0"Tensordot_4/Reshape/shape:output:0*
T0*
_output_shapes
:	l
Tensordot_4/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_4/Reshape_1Reshape$Tensordot_4/ReadVariableOp_1:value:0$Tensordot_4/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_4/MatMulMatMulTensordot_4/Reshape:output:0Tensordot_4/Reshape_1:output:0*
T0* 
_output_shapes
:
b
add_3AddV2	add_2:z:0Tensordot_4/MatMul:product:0*
T0* 
_output_shapes
:
{
Tensordot_5/ReadVariableOpReadVariableOp#tensordot_5_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_5/ReadVariableOp_1ReadVariableOp%tensordot_5_readvariableop_1_resource*
_output_shapes	
:*
dtype0j
Tensordot_5/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_5/ReshapeReshape"Tensordot_5/ReadVariableOp:value:0"Tensordot_5/Reshape/shape:output:0*
T0*
_output_shapes
:	l
Tensordot_5/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_5/Reshape_1Reshape$Tensordot_5/ReadVariableOp_1:value:0$Tensordot_5/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_5/MatMulMatMulTensordot_5/Reshape:output:0Tensordot_5/Reshape_1:output:0*
T0* 
_output_shapes
:
b
add_4AddV2	add_3:z:0Tensordot_5/MatMul:product:0*
T0* 
_output_shapes
:
{
Tensordot_6/ReadVariableOpReadVariableOp#tensordot_6_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_6/ReadVariableOp_1ReadVariableOp%tensordot_6_readvariableop_1_resource*
_output_shapes	
:*
dtype0j
Tensordot_6/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_6/ReshapeReshape"Tensordot_6/ReadVariableOp:value:0"Tensordot_6/Reshape/shape:output:0*
T0*
_output_shapes
:	l
Tensordot_6/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_6/Reshape_1Reshape$Tensordot_6/ReadVariableOp_1:value:0$Tensordot_6/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_6/MatMulMatMulTensordot_6/Reshape:output:0Tensordot_6/Reshape_1:output:0*
T0* 
_output_shapes
:
b
add_5AddV2	add_4:z:0Tensordot_6/MatMul:product:0*
T0* 
_output_shapes
:
{
Tensordot_7/ReadVariableOpReadVariableOp#tensordot_7_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_7/ReadVariableOp_1ReadVariableOp%tensordot_7_readvariableop_1_resource*
_output_shapes	
:*
dtype0j
Tensordot_7/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_7/ReshapeReshape"Tensordot_7/ReadVariableOp:value:0"Tensordot_7/Reshape/shape:output:0*
T0*
_output_shapes
:	l
Tensordot_7/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_7/Reshape_1Reshape$Tensordot_7/ReadVariableOp_1:value:0$Tensordot_7/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_7/MatMulMatMulTensordot_7/Reshape:output:0Tensordot_7/Reshape_1:output:0*
T0* 
_output_shapes
:
b
add_6AddV2	add_5:z:0Tensordot_7/MatMul:product:0*
T0* 
_output_shapes
:
{
Tensordot_8/ReadVariableOpReadVariableOp#tensordot_8_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_8/ReadVariableOp_1ReadVariableOp%tensordot_8_readvariableop_1_resource*
_output_shapes	
:*
dtype0j
Tensordot_8/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_8/ReshapeReshape"Tensordot_8/ReadVariableOp:value:0"Tensordot_8/Reshape/shape:output:0*
T0*
_output_shapes
:	l
Tensordot_8/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_8/Reshape_1Reshape$Tensordot_8/ReadVariableOp_1:value:0$Tensordot_8/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_8/MatMulMatMulTensordot_8/Reshape:output:0Tensordot_8/Reshape_1:output:0*
T0* 
_output_shapes
:
b
add_7AddV2	add_6:z:0Tensordot_8/MatMul:product:0*
T0* 
_output_shapes
:
{
Tensordot_9/ReadVariableOpReadVariableOp#tensordot_9_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_9/ReadVariableOp_1ReadVariableOp%tensordot_9_readvariableop_1_resource*
_output_shapes	
:*
dtype0j
Tensordot_9/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_9/ReshapeReshape"Tensordot_9/ReadVariableOp:value:0"Tensordot_9/Reshape/shape:output:0*
T0*
_output_shapes
:	l
Tensordot_9/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_9/Reshape_1Reshape$Tensordot_9/ReadVariableOp_1:value:0$Tensordot_9/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_9/MatMulMatMulTensordot_9/Reshape:output:0Tensordot_9/Reshape_1:output:0*
T0* 
_output_shapes
:
b
add_8AddV2	add_7:z:0Tensordot_9/MatMul:product:0*
T0* 
_output_shapes
:
}
Tensordot_10/ReadVariableOpReadVariableOp$tensordot_10_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_10/ReadVariableOp_1ReadVariableOp&tensordot_10_readvariableop_1_resource*
_output_shapes	
:*
dtype0k
Tensordot_10/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_10/ReshapeReshape#Tensordot_10/ReadVariableOp:value:0#Tensordot_10/Reshape/shape:output:0*
T0*
_output_shapes
:	m
Tensordot_10/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_10/Reshape_1Reshape%Tensordot_10/ReadVariableOp_1:value:0%Tensordot_10/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_10/MatMulMatMulTensordot_10/Reshape:output:0Tensordot_10/Reshape_1:output:0*
T0* 
_output_shapes
:
c
add_9AddV2	add_8:z:0Tensordot_10/MatMul:product:0*
T0* 
_output_shapes
:
}
Tensordot_11/ReadVariableOpReadVariableOp$tensordot_11_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_11/ReadVariableOp_1ReadVariableOp&tensordot_11_readvariableop_1_resource*
_output_shapes	
:*
dtype0k
Tensordot_11/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_11/ReshapeReshape#Tensordot_11/ReadVariableOp:value:0#Tensordot_11/Reshape/shape:output:0*
T0*
_output_shapes
:	m
Tensordot_11/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_11/Reshape_1Reshape%Tensordot_11/ReadVariableOp_1:value:0%Tensordot_11/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_11/MatMulMatMulTensordot_11/Reshape:output:0Tensordot_11/Reshape_1:output:0*
T0* 
_output_shapes
:
d
add_10AddV2	add_9:z:0Tensordot_11/MatMul:product:0*
T0* 
_output_shapes
:
}
Tensordot_12/ReadVariableOpReadVariableOp$tensordot_12_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_12/ReadVariableOp_1ReadVariableOp&tensordot_12_readvariableop_1_resource*
_output_shapes	
:*
dtype0k
Tensordot_12/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_12/ReshapeReshape#Tensordot_12/ReadVariableOp:value:0#Tensordot_12/Reshape/shape:output:0*
T0*
_output_shapes
:	m
Tensordot_12/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_12/Reshape_1Reshape%Tensordot_12/ReadVariableOp_1:value:0%Tensordot_12/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_12/MatMulMatMulTensordot_12/Reshape:output:0Tensordot_12/Reshape_1:output:0*
T0* 
_output_shapes
:
e
add_11AddV2
add_10:z:0Tensordot_12/MatMul:product:0*
T0* 
_output_shapes
:
}
Tensordot_13/ReadVariableOpReadVariableOp$tensordot_13_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_13/ReadVariableOp_1ReadVariableOp&tensordot_13_readvariableop_1_resource*
_output_shapes	
:*
dtype0k
Tensordot_13/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_13/ReshapeReshape#Tensordot_13/ReadVariableOp:value:0#Tensordot_13/Reshape/shape:output:0*
T0*
_output_shapes
:	m
Tensordot_13/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_13/Reshape_1Reshape%Tensordot_13/ReadVariableOp_1:value:0%Tensordot_13/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_13/MatMulMatMulTensordot_13/Reshape:output:0Tensordot_13/Reshape_1:output:0*
T0* 
_output_shapes
:
e
add_12AddV2
add_11:z:0Tensordot_13/MatMul:product:0*
T0* 
_output_shapes
:
}
Tensordot_14/ReadVariableOpReadVariableOp$tensordot_14_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_14/ReadVariableOp_1ReadVariableOp&tensordot_14_readvariableop_1_resource*
_output_shapes	
:*
dtype0k
Tensordot_14/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_14/ReshapeReshape#Tensordot_14/ReadVariableOp:value:0#Tensordot_14/Reshape/shape:output:0*
T0*
_output_shapes
:	m
Tensordot_14/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_14/Reshape_1Reshape%Tensordot_14/ReadVariableOp_1:value:0%Tensordot_14/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_14/MatMulMatMulTensordot_14/Reshape:output:0Tensordot_14/Reshape_1:output:0*
T0* 
_output_shapes
:
e
add_13AddV2
add_12:z:0Tensordot_14/MatMul:product:0*
T0* 
_output_shapes
:
}
Tensordot_15/ReadVariableOpReadVariableOp$tensordot_15_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_15/ReadVariableOp_1ReadVariableOp&tensordot_15_readvariableop_1_resource*
_output_shapes	
:*
dtype0k
Tensordot_15/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_15/ReshapeReshape#Tensordot_15/ReadVariableOp:value:0#Tensordot_15/Reshape/shape:output:0*
T0*
_output_shapes
:	m
Tensordot_15/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_15/Reshape_1Reshape%Tensordot_15/ReadVariableOp_1:value:0%Tensordot_15/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_15/MatMulMatMulTensordot_15/Reshape:output:0Tensordot_15/Reshape_1:output:0*
T0* 
_output_shapes
:
e
add_14AddV2
add_13:z:0Tensordot_15/MatMul:product:0*
T0* 
_output_shapes
:
}
Tensordot_16/ReadVariableOpReadVariableOp$tensordot_16_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_16/ReadVariableOp_1ReadVariableOp&tensordot_16_readvariableop_1_resource*
_output_shapes	
:*
dtype0k
Tensordot_16/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_16/ReshapeReshape#Tensordot_16/ReadVariableOp:value:0#Tensordot_16/Reshape/shape:output:0*
T0*
_output_shapes
:	m
Tensordot_16/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_16/Reshape_1Reshape%Tensordot_16/ReadVariableOp_1:value:0%Tensordot_16/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_16/MatMulMatMulTensordot_16/Reshape:output:0Tensordot_16/Reshape_1:output:0*
T0* 
_output_shapes
:
e
add_15AddV2
add_14:z:0Tensordot_16/MatMul:product:0*
T0* 
_output_shapes
:
}
Tensordot_17/ReadVariableOpReadVariableOp$tensordot_17_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_17/ReadVariableOp_1ReadVariableOp&tensordot_17_readvariableop_1_resource*
_output_shapes	
:*
dtype0k
Tensordot_17/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_17/ReshapeReshape#Tensordot_17/ReadVariableOp:value:0#Tensordot_17/Reshape/shape:output:0*
T0*
_output_shapes
:	m
Tensordot_17/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_17/Reshape_1Reshape%Tensordot_17/ReadVariableOp_1:value:0%Tensordot_17/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_17/MatMulMatMulTensordot_17/Reshape:output:0Tensordot_17/Reshape_1:output:0*
T0* 
_output_shapes
:
e
add_16AddV2
add_15:z:0Tensordot_17/MatMul:product:0*
T0* 
_output_shapes
:
}
Tensordot_18/ReadVariableOpReadVariableOp$tensordot_18_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_18/ReadVariableOp_1ReadVariableOp&tensordot_18_readvariableop_1_resource*
_output_shapes	
:*
dtype0k
Tensordot_18/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_18/ReshapeReshape#Tensordot_18/ReadVariableOp:value:0#Tensordot_18/Reshape/shape:output:0*
T0*
_output_shapes
:	m
Tensordot_18/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_18/Reshape_1Reshape%Tensordot_18/ReadVariableOp_1:value:0%Tensordot_18/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_18/MatMulMatMulTensordot_18/Reshape:output:0Tensordot_18/Reshape_1:output:0*
T0* 
_output_shapes
:
e
add_17AddV2
add_16:z:0Tensordot_18/MatMul:product:0*
T0* 
_output_shapes
:
}
Tensordot_19/ReadVariableOpReadVariableOp$tensordot_19_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_19/ReadVariableOp_1ReadVariableOp&tensordot_19_readvariableop_1_resource*
_output_shapes	
:*
dtype0k
Tensordot_19/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_19/ReshapeReshape#Tensordot_19/ReadVariableOp:value:0#Tensordot_19/Reshape/shape:output:0*
T0*
_output_shapes
:	m
Tensordot_19/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_19/Reshape_1Reshape%Tensordot_19/ReadVariableOp_1:value:0%Tensordot_19/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_19/MatMulMatMulTensordot_19/Reshape:output:0Tensordot_19/Reshape_1:output:0*
T0* 
_output_shapes
:
e
add_18AddV2
add_17:z:0Tensordot_19/MatMul:product:0*
T0* 
_output_shapes
:
}
Tensordot_20/ReadVariableOpReadVariableOp$tensordot_20_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_20/ReadVariableOp_1ReadVariableOp&tensordot_20_readvariableop_1_resource*
_output_shapes	
:*
dtype0k
Tensordot_20/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_20/ReshapeReshape#Tensordot_20/ReadVariableOp:value:0#Tensordot_20/Reshape/shape:output:0*
T0*
_output_shapes
:	m
Tensordot_20/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_20/Reshape_1Reshape%Tensordot_20/ReadVariableOp_1:value:0%Tensordot_20/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_20/MatMulMatMulTensordot_20/Reshape:output:0Tensordot_20/Reshape_1:output:0*
T0* 
_output_shapes
:
e
add_19AddV2
add_18:z:0Tensordot_20/MatMul:product:0*
T0* 
_output_shapes
:
}
Tensordot_21/ReadVariableOpReadVariableOp$tensordot_21_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_21/ReadVariableOp_1ReadVariableOp&tensordot_21_readvariableop_1_resource*
_output_shapes	
:*
dtype0k
Tensordot_21/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_21/ReshapeReshape#Tensordot_21/ReadVariableOp:value:0#Tensordot_21/Reshape/shape:output:0*
T0*
_output_shapes
:	m
Tensordot_21/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_21/Reshape_1Reshape%Tensordot_21/ReadVariableOp_1:value:0%Tensordot_21/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_21/MatMulMatMulTensordot_21/Reshape:output:0Tensordot_21/Reshape_1:output:0*
T0* 
_output_shapes
:
e
add_20AddV2
add_19:z:0Tensordot_21/MatMul:product:0*
T0* 
_output_shapes
:
}
Tensordot_22/ReadVariableOpReadVariableOp$tensordot_22_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_22/ReadVariableOp_1ReadVariableOp&tensordot_22_readvariableop_1_resource*
_output_shapes	
:*
dtype0k
Tensordot_22/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_22/ReshapeReshape#Tensordot_22/ReadVariableOp:value:0#Tensordot_22/Reshape/shape:output:0*
T0*
_output_shapes
:	m
Tensordot_22/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_22/Reshape_1Reshape%Tensordot_22/ReadVariableOp_1:value:0%Tensordot_22/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_22/MatMulMatMulTensordot_22/Reshape:output:0Tensordot_22/Reshape_1:output:0*
T0* 
_output_shapes
:
e
add_21AddV2
add_20:z:0Tensordot_22/MatMul:product:0*
T0* 
_output_shapes
:
}
Tensordot_23/ReadVariableOpReadVariableOp$tensordot_23_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_23/ReadVariableOp_1ReadVariableOp&tensordot_23_readvariableop_1_resource*
_output_shapes	
:*
dtype0k
Tensordot_23/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_23/ReshapeReshape#Tensordot_23/ReadVariableOp:value:0#Tensordot_23/Reshape/shape:output:0*
T0*
_output_shapes
:	m
Tensordot_23/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_23/Reshape_1Reshape%Tensordot_23/ReadVariableOp_1:value:0%Tensordot_23/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_23/MatMulMatMulTensordot_23/Reshape:output:0Tensordot_23/Reshape_1:output:0*
T0* 
_output_shapes
:
e
add_22AddV2
add_21:z:0Tensordot_23/MatMul:product:0*
T0* 
_output_shapes
:
}
Tensordot_24/ReadVariableOpReadVariableOp$tensordot_24_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_24/ReadVariableOp_1ReadVariableOp&tensordot_24_readvariableop_1_resource*
_output_shapes	
:*
dtype0k
Tensordot_24/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_24/ReshapeReshape#Tensordot_24/ReadVariableOp:value:0#Tensordot_24/Reshape/shape:output:0*
T0*
_output_shapes
:	m
Tensordot_24/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_24/Reshape_1Reshape%Tensordot_24/ReadVariableOp_1:value:0%Tensordot_24/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_24/MatMulMatMulTensordot_24/Reshape:output:0Tensordot_24/Reshape_1:output:0*
T0* 
_output_shapes
:
e
add_23AddV2
add_22:z:0Tensordot_24/MatMul:product:0*
T0* 
_output_shapes
:
}
Tensordot_25/ReadVariableOpReadVariableOp$tensordot_25_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_25/ReadVariableOp_1ReadVariableOp&tensordot_25_readvariableop_1_resource*
_output_shapes	
:*
dtype0k
Tensordot_25/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_25/ReshapeReshape#Tensordot_25/ReadVariableOp:value:0#Tensordot_25/Reshape/shape:output:0*
T0*
_output_shapes
:	m
Tensordot_25/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_25/Reshape_1Reshape%Tensordot_25/ReadVariableOp_1:value:0%Tensordot_25/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_25/MatMulMatMulTensordot_25/Reshape:output:0Tensordot_25/Reshape_1:output:0*
T0* 
_output_shapes
:
e
add_24AddV2
add_23:z:0Tensordot_25/MatMul:product:0*
T0* 
_output_shapes
:
}
Tensordot_26/ReadVariableOpReadVariableOp$tensordot_26_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_26/ReadVariableOp_1ReadVariableOp&tensordot_26_readvariableop_1_resource*
_output_shapes	
:*
dtype0k
Tensordot_26/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_26/ReshapeReshape#Tensordot_26/ReadVariableOp:value:0#Tensordot_26/Reshape/shape:output:0*
T0*
_output_shapes
:	m
Tensordot_26/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_26/Reshape_1Reshape%Tensordot_26/ReadVariableOp_1:value:0%Tensordot_26/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_26/MatMulMatMulTensordot_26/Reshape:output:0Tensordot_26/Reshape_1:output:0*
T0* 
_output_shapes
:
e
add_25AddV2
add_24:z:0Tensordot_26/MatMul:product:0*
T0* 
_output_shapes
:
}
Tensordot_27/ReadVariableOpReadVariableOp$tensordot_27_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_27/ReadVariableOp_1ReadVariableOp&tensordot_27_readvariableop_1_resource*
_output_shapes	
:*
dtype0k
Tensordot_27/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_27/ReshapeReshape#Tensordot_27/ReadVariableOp:value:0#Tensordot_27/Reshape/shape:output:0*
T0*
_output_shapes
:	m
Tensordot_27/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_27/Reshape_1Reshape%Tensordot_27/ReadVariableOp_1:value:0%Tensordot_27/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_27/MatMulMatMulTensordot_27/Reshape:output:0Tensordot_27/Reshape_1:output:0*
T0* 
_output_shapes
:
e
add_26AddV2
add_25:z:0Tensordot_27/MatMul:product:0*
T0* 
_output_shapes
:
}
Tensordot_28/ReadVariableOpReadVariableOp$tensordot_28_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_28/ReadVariableOp_1ReadVariableOp&tensordot_28_readvariableop_1_resource*
_output_shapes	
:*
dtype0k
Tensordot_28/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_28/ReshapeReshape#Tensordot_28/ReadVariableOp:value:0#Tensordot_28/Reshape/shape:output:0*
T0*
_output_shapes
:	m
Tensordot_28/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_28/Reshape_1Reshape%Tensordot_28/ReadVariableOp_1:value:0%Tensordot_28/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_28/MatMulMatMulTensordot_28/Reshape:output:0Tensordot_28/Reshape_1:output:0*
T0* 
_output_shapes
:
e
add_27AddV2
add_26:z:0Tensordot_28/MatMul:product:0*
T0* 
_output_shapes
:
}
Tensordot_29/ReadVariableOpReadVariableOp$tensordot_29_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_29/ReadVariableOp_1ReadVariableOp&tensordot_29_readvariableop_1_resource*
_output_shapes	
:*
dtype0k
Tensordot_29/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_29/ReshapeReshape#Tensordot_29/ReadVariableOp:value:0#Tensordot_29/Reshape/shape:output:0*
T0*
_output_shapes
:	m
Tensordot_29/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_29/Reshape_1Reshape%Tensordot_29/ReadVariableOp_1:value:0%Tensordot_29/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_29/MatMulMatMulTensordot_29/Reshape:output:0Tensordot_29/Reshape_1:output:0*
T0* 
_output_shapes
:
e
add_28AddV2
add_27:z:0Tensordot_29/MatMul:product:0*
T0* 
_output_shapes
:
}
Tensordot_30/ReadVariableOpReadVariableOp$tensordot_30_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_30/ReadVariableOp_1ReadVariableOp&tensordot_30_readvariableop_1_resource*
_output_shapes	
:*
dtype0k
Tensordot_30/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_30/ReshapeReshape#Tensordot_30/ReadVariableOp:value:0#Tensordot_30/Reshape/shape:output:0*
T0*
_output_shapes
:	m
Tensordot_30/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_30/Reshape_1Reshape%Tensordot_30/ReadVariableOp_1:value:0%Tensordot_30/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_30/MatMulMatMulTensordot_30/Reshape:output:0Tensordot_30/Reshape_1:output:0*
T0* 
_output_shapes
:
e
add_29AddV2
add_28:z:0Tensordot_30/MatMul:product:0*
T0* 
_output_shapes
:
}
Tensordot_31/ReadVariableOpReadVariableOp$tensordot_31_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_31/ReadVariableOp_1ReadVariableOp&tensordot_31_readvariableop_1_resource*
_output_shapes	
:*
dtype0k
Tensordot_31/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_31/ReshapeReshape#Tensordot_31/ReadVariableOp:value:0#Tensordot_31/Reshape/shape:output:0*
T0*
_output_shapes
:	m
Tensordot_31/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_31/Reshape_1Reshape%Tensordot_31/ReadVariableOp_1:value:0%Tensordot_31/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_31/MatMulMatMulTensordot_31/Reshape:output:0Tensordot_31/Reshape_1:output:0*
T0* 
_output_shapes
:
e
add_30AddV2
add_29:z:0Tensordot_31/MatMul:product:0*
T0* 
_output_shapes
:
b
matmulBatchMatMulV2
add_30:z:0inputs*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
IdentityIdentitymatmul:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿî
NoOpNoOp^Tensordot/ReadVariableOp^Tensordot/ReadVariableOp_1^Tensordot_1/ReadVariableOp^Tensordot_1/ReadVariableOp_1^Tensordot_10/ReadVariableOp^Tensordot_10/ReadVariableOp_1^Tensordot_11/ReadVariableOp^Tensordot_11/ReadVariableOp_1^Tensordot_12/ReadVariableOp^Tensordot_12/ReadVariableOp_1^Tensordot_13/ReadVariableOp^Tensordot_13/ReadVariableOp_1^Tensordot_14/ReadVariableOp^Tensordot_14/ReadVariableOp_1^Tensordot_15/ReadVariableOp^Tensordot_15/ReadVariableOp_1^Tensordot_16/ReadVariableOp^Tensordot_16/ReadVariableOp_1^Tensordot_17/ReadVariableOp^Tensordot_17/ReadVariableOp_1^Tensordot_18/ReadVariableOp^Tensordot_18/ReadVariableOp_1^Tensordot_19/ReadVariableOp^Tensordot_19/ReadVariableOp_1^Tensordot_2/ReadVariableOp^Tensordot_2/ReadVariableOp_1^Tensordot_20/ReadVariableOp^Tensordot_20/ReadVariableOp_1^Tensordot_21/ReadVariableOp^Tensordot_21/ReadVariableOp_1^Tensordot_22/ReadVariableOp^Tensordot_22/ReadVariableOp_1^Tensordot_23/ReadVariableOp^Tensordot_23/ReadVariableOp_1^Tensordot_24/ReadVariableOp^Tensordot_24/ReadVariableOp_1^Tensordot_25/ReadVariableOp^Tensordot_25/ReadVariableOp_1^Tensordot_26/ReadVariableOp^Tensordot_26/ReadVariableOp_1^Tensordot_27/ReadVariableOp^Tensordot_27/ReadVariableOp_1^Tensordot_28/ReadVariableOp^Tensordot_28/ReadVariableOp_1^Tensordot_29/ReadVariableOp^Tensordot_29/ReadVariableOp_1^Tensordot_3/ReadVariableOp^Tensordot_3/ReadVariableOp_1^Tensordot_30/ReadVariableOp^Tensordot_30/ReadVariableOp_1^Tensordot_31/ReadVariableOp^Tensordot_31/ReadVariableOp_1^Tensordot_4/ReadVariableOp^Tensordot_4/ReadVariableOp_1^Tensordot_5/ReadVariableOp^Tensordot_5/ReadVariableOp_1^Tensordot_6/ReadVariableOp^Tensordot_6/ReadVariableOp_1^Tensordot_7/ReadVariableOp^Tensordot_7/ReadVariableOp_1^Tensordot_8/ReadVariableOp^Tensordot_8/ReadVariableOp_1^Tensordot_9/ReadVariableOp^Tensordot_9/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*­
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 24
Tensordot/ReadVariableOpTensordot/ReadVariableOp28
Tensordot/ReadVariableOp_1Tensordot/ReadVariableOp_128
Tensordot_1/ReadVariableOpTensordot_1/ReadVariableOp2<
Tensordot_1/ReadVariableOp_1Tensordot_1/ReadVariableOp_12:
Tensordot_10/ReadVariableOpTensordot_10/ReadVariableOp2>
Tensordot_10/ReadVariableOp_1Tensordot_10/ReadVariableOp_12:
Tensordot_11/ReadVariableOpTensordot_11/ReadVariableOp2>
Tensordot_11/ReadVariableOp_1Tensordot_11/ReadVariableOp_12:
Tensordot_12/ReadVariableOpTensordot_12/ReadVariableOp2>
Tensordot_12/ReadVariableOp_1Tensordot_12/ReadVariableOp_12:
Tensordot_13/ReadVariableOpTensordot_13/ReadVariableOp2>
Tensordot_13/ReadVariableOp_1Tensordot_13/ReadVariableOp_12:
Tensordot_14/ReadVariableOpTensordot_14/ReadVariableOp2>
Tensordot_14/ReadVariableOp_1Tensordot_14/ReadVariableOp_12:
Tensordot_15/ReadVariableOpTensordot_15/ReadVariableOp2>
Tensordot_15/ReadVariableOp_1Tensordot_15/ReadVariableOp_12:
Tensordot_16/ReadVariableOpTensordot_16/ReadVariableOp2>
Tensordot_16/ReadVariableOp_1Tensordot_16/ReadVariableOp_12:
Tensordot_17/ReadVariableOpTensordot_17/ReadVariableOp2>
Tensordot_17/ReadVariableOp_1Tensordot_17/ReadVariableOp_12:
Tensordot_18/ReadVariableOpTensordot_18/ReadVariableOp2>
Tensordot_18/ReadVariableOp_1Tensordot_18/ReadVariableOp_12:
Tensordot_19/ReadVariableOpTensordot_19/ReadVariableOp2>
Tensordot_19/ReadVariableOp_1Tensordot_19/ReadVariableOp_128
Tensordot_2/ReadVariableOpTensordot_2/ReadVariableOp2<
Tensordot_2/ReadVariableOp_1Tensordot_2/ReadVariableOp_12:
Tensordot_20/ReadVariableOpTensordot_20/ReadVariableOp2>
Tensordot_20/ReadVariableOp_1Tensordot_20/ReadVariableOp_12:
Tensordot_21/ReadVariableOpTensordot_21/ReadVariableOp2>
Tensordot_21/ReadVariableOp_1Tensordot_21/ReadVariableOp_12:
Tensordot_22/ReadVariableOpTensordot_22/ReadVariableOp2>
Tensordot_22/ReadVariableOp_1Tensordot_22/ReadVariableOp_12:
Tensordot_23/ReadVariableOpTensordot_23/ReadVariableOp2>
Tensordot_23/ReadVariableOp_1Tensordot_23/ReadVariableOp_12:
Tensordot_24/ReadVariableOpTensordot_24/ReadVariableOp2>
Tensordot_24/ReadVariableOp_1Tensordot_24/ReadVariableOp_12:
Tensordot_25/ReadVariableOpTensordot_25/ReadVariableOp2>
Tensordot_25/ReadVariableOp_1Tensordot_25/ReadVariableOp_12:
Tensordot_26/ReadVariableOpTensordot_26/ReadVariableOp2>
Tensordot_26/ReadVariableOp_1Tensordot_26/ReadVariableOp_12:
Tensordot_27/ReadVariableOpTensordot_27/ReadVariableOp2>
Tensordot_27/ReadVariableOp_1Tensordot_27/ReadVariableOp_12:
Tensordot_28/ReadVariableOpTensordot_28/ReadVariableOp2>
Tensordot_28/ReadVariableOp_1Tensordot_28/ReadVariableOp_12:
Tensordot_29/ReadVariableOpTensordot_29/ReadVariableOp2>
Tensordot_29/ReadVariableOp_1Tensordot_29/ReadVariableOp_128
Tensordot_3/ReadVariableOpTensordot_3/ReadVariableOp2<
Tensordot_3/ReadVariableOp_1Tensordot_3/ReadVariableOp_12:
Tensordot_30/ReadVariableOpTensordot_30/ReadVariableOp2>
Tensordot_30/ReadVariableOp_1Tensordot_30/ReadVariableOp_12:
Tensordot_31/ReadVariableOpTensordot_31/ReadVariableOp2>
Tensordot_31/ReadVariableOp_1Tensordot_31/ReadVariableOp_128
Tensordot_4/ReadVariableOpTensordot_4/ReadVariableOp2<
Tensordot_4/ReadVariableOp_1Tensordot_4/ReadVariableOp_128
Tensordot_5/ReadVariableOpTensordot_5/ReadVariableOp2<
Tensordot_5/ReadVariableOp_1Tensordot_5/ReadVariableOp_128
Tensordot_6/ReadVariableOpTensordot_6/ReadVariableOp2<
Tensordot_6/ReadVariableOp_1Tensordot_6/ReadVariableOp_128
Tensordot_7/ReadVariableOpTensordot_7/ReadVariableOp2<
Tensordot_7/ReadVariableOp_1Tensordot_7/ReadVariableOp_128
Tensordot_8/ReadVariableOpTensordot_8/ReadVariableOp2<
Tensordot_8/ReadVariableOp_1Tensordot_8/ReadVariableOp_128
Tensordot_9/ReadVariableOpTensordot_9/ReadVariableOp2<
Tensordot_9/ReadVariableOp_1Tensordot_9/ReadVariableOp_1:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¤

ö
D__inference_dense_3_layer_call_and_return_conditional_losses_4832367

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
×
b
F__inference_reshape_5_layer_call_and_return_conditional_losses_4829164

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
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :©
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:l
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ý
d
F__inference_dropout_3_layer_call_and_return_conditional_losses_4829215

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

h
L__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_4832289

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
E__inference_conv2d_9_layer_call_and_return_conditional_losses_4828675

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
´

.__inference_sequential_3_layer_call_fn_4830203
input_4!
unknown:
	unknown_0:
	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:	
	unknown_5:	
	unknown_6:	
	unknown_7:	
	unknown_8:	
	unknown_9:	

unknown_10:	

unknown_11:	

unknown_12:	

unknown_13:	

unknown_14:	

unknown_15:	

unknown_16:	

unknown_17:	

unknown_18:	

unknown_19:	

unknown_20:	

unknown_21:	

unknown_22:	

unknown_23:	

unknown_24:	

unknown_25:	

unknown_26:	

unknown_27:	

unknown_28:	

unknown_29:	

unknown_30:	

unknown_31:	

unknown_32:	

unknown_33:	

unknown_34:	

unknown_35:	

unknown_36:	

unknown_37:	

unknown_38:	

unknown_39:	

unknown_40:	

unknown_41:	

unknown_42:	

unknown_43:	

unknown_44:	

unknown_45:	

unknown_46:	

unknown_47:	

unknown_48:	

unknown_49:	

unknown_50:	

unknown_51:	

unknown_52:	

unknown_53:	

unknown_54:	

unknown_55:	

unknown_56:	

unknown_57:	

unknown_58:	

unknown_59:	

unknown_60:	

unknown_61:	

unknown_62:	

unknown_63:	

unknown_64:	$

unknown_65:

unknown_66:$

unknown_67:

unknown_68:

unknown_69:	


unknown_70:

identity¢StatefulPartitionedCall­

StatefulPartitionedCallStatefulPartitionedCallinput_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60
unknown_61
unknown_62
unknown_63
unknown_64
unknown_65
unknown_66
unknown_67
unknown_68
unknown_69
unknown_70*T
TinM
K2I*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*j
_read_only_resource_inputsL
JH	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGH*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_sequential_3_layer_call_and_return_conditional_losses_4829907o
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
_construction_contextkEagerRuntime*À
_input_shapes®
«:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_4
ë

b
F__inference_reshape_4_layer_call_and_return_conditional_losses_4828694

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
B :Q
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
:ÿÿÿÿÿÿÿÿÿ]
IdentityIdentityReshape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ì
íA
I__inference_sequential_3_layer_call_and_return_conditional_losses_4831352

inputsA
'conv2d_9_conv2d_readvariableop_resource:6
(conv2d_9_biasadd_readvariableop_resource:A
2low_rank_layer_2_tensordot_readvariableop_resource:	C
4low_rank_layer_2_tensordot_readvariableop_1_resource:	C
4low_rank_layer_2_tensordot_1_readvariableop_resource:	E
6low_rank_layer_2_tensordot_1_readvariableop_1_resource:	C
4low_rank_layer_2_tensordot_2_readvariableop_resource:	E
6low_rank_layer_2_tensordot_2_readvariableop_1_resource:	C
4low_rank_layer_2_tensordot_3_readvariableop_resource:	E
6low_rank_layer_2_tensordot_3_readvariableop_1_resource:	C
4low_rank_layer_2_tensordot_4_readvariableop_resource:	E
6low_rank_layer_2_tensordot_4_readvariableop_1_resource:	C
4low_rank_layer_2_tensordot_5_readvariableop_resource:	E
6low_rank_layer_2_tensordot_5_readvariableop_1_resource:	C
4low_rank_layer_2_tensordot_6_readvariableop_resource:	E
6low_rank_layer_2_tensordot_6_readvariableop_1_resource:	C
4low_rank_layer_2_tensordot_7_readvariableop_resource:	E
6low_rank_layer_2_tensordot_7_readvariableop_1_resource:	C
4low_rank_layer_2_tensordot_8_readvariableop_resource:	E
6low_rank_layer_2_tensordot_8_readvariableop_1_resource:	C
4low_rank_layer_2_tensordot_9_readvariableop_resource:	E
6low_rank_layer_2_tensordot_9_readvariableop_1_resource:	D
5low_rank_layer_2_tensordot_10_readvariableop_resource:	F
7low_rank_layer_2_tensordot_10_readvariableop_1_resource:	D
5low_rank_layer_2_tensordot_11_readvariableop_resource:	F
7low_rank_layer_2_tensordot_11_readvariableop_1_resource:	D
5low_rank_layer_2_tensordot_12_readvariableop_resource:	F
7low_rank_layer_2_tensordot_12_readvariableop_1_resource:	D
5low_rank_layer_2_tensordot_13_readvariableop_resource:	F
7low_rank_layer_2_tensordot_13_readvariableop_1_resource:	D
5low_rank_layer_2_tensordot_14_readvariableop_resource:	F
7low_rank_layer_2_tensordot_14_readvariableop_1_resource:	D
5low_rank_layer_2_tensordot_15_readvariableop_resource:	F
7low_rank_layer_2_tensordot_15_readvariableop_1_resource:	D
5low_rank_layer_2_tensordot_16_readvariableop_resource:	F
7low_rank_layer_2_tensordot_16_readvariableop_1_resource:	D
5low_rank_layer_2_tensordot_17_readvariableop_resource:	F
7low_rank_layer_2_tensordot_17_readvariableop_1_resource:	D
5low_rank_layer_2_tensordot_18_readvariableop_resource:	F
7low_rank_layer_2_tensordot_18_readvariableop_1_resource:	D
5low_rank_layer_2_tensordot_19_readvariableop_resource:	F
7low_rank_layer_2_tensordot_19_readvariableop_1_resource:	D
5low_rank_layer_2_tensordot_20_readvariableop_resource:	F
7low_rank_layer_2_tensordot_20_readvariableop_1_resource:	D
5low_rank_layer_2_tensordot_21_readvariableop_resource:	F
7low_rank_layer_2_tensordot_21_readvariableop_1_resource:	D
5low_rank_layer_2_tensordot_22_readvariableop_resource:	F
7low_rank_layer_2_tensordot_22_readvariableop_1_resource:	D
5low_rank_layer_2_tensordot_23_readvariableop_resource:	F
7low_rank_layer_2_tensordot_23_readvariableop_1_resource:	D
5low_rank_layer_2_tensordot_24_readvariableop_resource:	F
7low_rank_layer_2_tensordot_24_readvariableop_1_resource:	D
5low_rank_layer_2_tensordot_25_readvariableop_resource:	F
7low_rank_layer_2_tensordot_25_readvariableop_1_resource:	D
5low_rank_layer_2_tensordot_26_readvariableop_resource:	F
7low_rank_layer_2_tensordot_26_readvariableop_1_resource:	D
5low_rank_layer_2_tensordot_27_readvariableop_resource:	F
7low_rank_layer_2_tensordot_27_readvariableop_1_resource:	D
5low_rank_layer_2_tensordot_28_readvariableop_resource:	F
7low_rank_layer_2_tensordot_28_readvariableop_1_resource:	D
5low_rank_layer_2_tensordot_29_readvariableop_resource:	F
7low_rank_layer_2_tensordot_29_readvariableop_1_resource:	D
5low_rank_layer_2_tensordot_30_readvariableop_resource:	F
7low_rank_layer_2_tensordot_30_readvariableop_1_resource:	D
5low_rank_layer_2_tensordot_31_readvariableop_resource:	F
7low_rank_layer_2_tensordot_31_readvariableop_1_resource:	B
(conv2d_10_conv2d_readvariableop_resource:7
)conv2d_10_biasadd_readvariableop_resource:B
(conv2d_11_conv2d_readvariableop_resource:7
)conv2d_11_biasadd_readvariableop_resource:9
&dense_3_matmul_readvariableop_resource:	
5
'dense_3_biasadd_readvariableop_resource:

identity¢ conv2d_10/BiasAdd/ReadVariableOp¢conv2d_10/Conv2D/ReadVariableOp¢ conv2d_11/BiasAdd/ReadVariableOp¢conv2d_11/Conv2D/ReadVariableOp¢conv2d_9/BiasAdd/ReadVariableOp¢conv2d_9/Conv2D/ReadVariableOp¢dense_3/BiasAdd/ReadVariableOp¢dense_3/MatMul/ReadVariableOp¢)low_rank_layer_2/Tensordot/ReadVariableOp¢+low_rank_layer_2/Tensordot/ReadVariableOp_1¢+low_rank_layer_2/Tensordot_1/ReadVariableOp¢-low_rank_layer_2/Tensordot_1/ReadVariableOp_1¢,low_rank_layer_2/Tensordot_10/ReadVariableOp¢.low_rank_layer_2/Tensordot_10/ReadVariableOp_1¢,low_rank_layer_2/Tensordot_11/ReadVariableOp¢.low_rank_layer_2/Tensordot_11/ReadVariableOp_1¢,low_rank_layer_2/Tensordot_12/ReadVariableOp¢.low_rank_layer_2/Tensordot_12/ReadVariableOp_1¢,low_rank_layer_2/Tensordot_13/ReadVariableOp¢.low_rank_layer_2/Tensordot_13/ReadVariableOp_1¢,low_rank_layer_2/Tensordot_14/ReadVariableOp¢.low_rank_layer_2/Tensordot_14/ReadVariableOp_1¢,low_rank_layer_2/Tensordot_15/ReadVariableOp¢.low_rank_layer_2/Tensordot_15/ReadVariableOp_1¢,low_rank_layer_2/Tensordot_16/ReadVariableOp¢.low_rank_layer_2/Tensordot_16/ReadVariableOp_1¢,low_rank_layer_2/Tensordot_17/ReadVariableOp¢.low_rank_layer_2/Tensordot_17/ReadVariableOp_1¢,low_rank_layer_2/Tensordot_18/ReadVariableOp¢.low_rank_layer_2/Tensordot_18/ReadVariableOp_1¢,low_rank_layer_2/Tensordot_19/ReadVariableOp¢.low_rank_layer_2/Tensordot_19/ReadVariableOp_1¢+low_rank_layer_2/Tensordot_2/ReadVariableOp¢-low_rank_layer_2/Tensordot_2/ReadVariableOp_1¢,low_rank_layer_2/Tensordot_20/ReadVariableOp¢.low_rank_layer_2/Tensordot_20/ReadVariableOp_1¢,low_rank_layer_2/Tensordot_21/ReadVariableOp¢.low_rank_layer_2/Tensordot_21/ReadVariableOp_1¢,low_rank_layer_2/Tensordot_22/ReadVariableOp¢.low_rank_layer_2/Tensordot_22/ReadVariableOp_1¢,low_rank_layer_2/Tensordot_23/ReadVariableOp¢.low_rank_layer_2/Tensordot_23/ReadVariableOp_1¢,low_rank_layer_2/Tensordot_24/ReadVariableOp¢.low_rank_layer_2/Tensordot_24/ReadVariableOp_1¢,low_rank_layer_2/Tensordot_25/ReadVariableOp¢.low_rank_layer_2/Tensordot_25/ReadVariableOp_1¢,low_rank_layer_2/Tensordot_26/ReadVariableOp¢.low_rank_layer_2/Tensordot_26/ReadVariableOp_1¢,low_rank_layer_2/Tensordot_27/ReadVariableOp¢.low_rank_layer_2/Tensordot_27/ReadVariableOp_1¢,low_rank_layer_2/Tensordot_28/ReadVariableOp¢.low_rank_layer_2/Tensordot_28/ReadVariableOp_1¢,low_rank_layer_2/Tensordot_29/ReadVariableOp¢.low_rank_layer_2/Tensordot_29/ReadVariableOp_1¢+low_rank_layer_2/Tensordot_3/ReadVariableOp¢-low_rank_layer_2/Tensordot_3/ReadVariableOp_1¢,low_rank_layer_2/Tensordot_30/ReadVariableOp¢.low_rank_layer_2/Tensordot_30/ReadVariableOp_1¢,low_rank_layer_2/Tensordot_31/ReadVariableOp¢.low_rank_layer_2/Tensordot_31/ReadVariableOp_1¢+low_rank_layer_2/Tensordot_4/ReadVariableOp¢-low_rank_layer_2/Tensordot_4/ReadVariableOp_1¢+low_rank_layer_2/Tensordot_5/ReadVariableOp¢-low_rank_layer_2/Tensordot_5/ReadVariableOp_1¢+low_rank_layer_2/Tensordot_6/ReadVariableOp¢-low_rank_layer_2/Tensordot_6/ReadVariableOp_1¢+low_rank_layer_2/Tensordot_7/ReadVariableOp¢-low_rank_layer_2/Tensordot_7/ReadVariableOp_1¢+low_rank_layer_2/Tensordot_8/ReadVariableOp¢-low_rank_layer_2/Tensordot_8/ReadVariableOp_1¢+low_rank_layer_2/Tensordot_9/ReadVariableOp¢-low_rank_layer_2/Tensordot_9/ReadVariableOp_1
conv2d_9/Conv2D/ReadVariableOpReadVariableOp'conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0¬
conv2d_9/Conv2DConv2Dinputs&conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

conv2d_9/BiasAdd/ReadVariableOpReadVariableOp(conv2d_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_9/BiasAddBiasAddconv2d_9/Conv2D:output:0'conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
conv2d_9/ReluReluconv2d_9/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
reshape_4/ShapeShapeconv2d_9/Relu:activations:0*
T0*
_output_shapes
:g
reshape_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
reshape_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
reshape_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
reshape_4/strided_sliceStridedSlicereshape_4/Shape:output:0&reshape_4/strided_slice/stack:output:0(reshape_4/strided_slice/stack_1:output:0(reshape_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
reshape_4/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :[
reshape_4/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :·
reshape_4/Reshape/shapePack reshape_4/strided_slice:output:0"reshape_4/Reshape/shape/1:output:0"reshape_4/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:
reshape_4/ReshapeReshapeconv2d_9/Relu:activations:0 reshape_4/Reshape/shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)low_rank_layer_2/Tensordot/ReadVariableOpReadVariableOp2low_rank_layer_2_tensordot_readvariableop_resource*
_output_shapes	
:*
dtype0
+low_rank_layer_2/Tensordot/ReadVariableOp_1ReadVariableOp4low_rank_layer_2_tensordot_readvariableop_1_resource*
_output_shapes	
:*
dtype0y
(low_rank_layer_2/Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     ½
"low_rank_layer_2/Tensordot/ReshapeReshape1low_rank_layer_2/Tensordot/ReadVariableOp:value:01low_rank_layer_2/Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	{
*low_rank_layer_2/Tensordot/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  Ã
$low_rank_layer_2/Tensordot/Reshape_1Reshape3low_rank_layer_2/Tensordot/ReadVariableOp_1:value:03low_rank_layer_2/Tensordot/Reshape_1/shape:output:0*
T0*
_output_shapes
:	²
!low_rank_layer_2/Tensordot/MatMulMatMul+low_rank_layer_2/Tensordot/Reshape:output:0-low_rank_layer_2/Tensordot/Reshape_1:output:0*
T0* 
_output_shapes
:

+low_rank_layer_2/Tensordot_1/ReadVariableOpReadVariableOp4low_rank_layer_2_tensordot_1_readvariableop_resource*
_output_shapes	
:*
dtype0¡
-low_rank_layer_2/Tensordot_1/ReadVariableOp_1ReadVariableOp6low_rank_layer_2_tensordot_1_readvariableop_1_resource*
_output_shapes	
:*
dtype0{
*low_rank_layer_2/Tensordot_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Ã
$low_rank_layer_2/Tensordot_1/ReshapeReshape3low_rank_layer_2/Tensordot_1/ReadVariableOp:value:03low_rank_layer_2/Tensordot_1/Reshape/shape:output:0*
T0*
_output_shapes
:	}
,low_rank_layer_2/Tensordot_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  É
&low_rank_layer_2/Tensordot_1/Reshape_1Reshape5low_rank_layer_2/Tensordot_1/ReadVariableOp_1:value:05low_rank_layer_2/Tensordot_1/Reshape_1/shape:output:0*
T0*
_output_shapes
:	¸
#low_rank_layer_2/Tensordot_1/MatMulMatMul-low_rank_layer_2/Tensordot_1/Reshape:output:0/low_rank_layer_2/Tensordot_1/Reshape_1:output:0*
T0* 
_output_shapes
:
¤
low_rank_layer_2/addAddV2+low_rank_layer_2/Tensordot/MatMul:product:0-low_rank_layer_2/Tensordot_1/MatMul:product:0*
T0* 
_output_shapes
:

+low_rank_layer_2/Tensordot_2/ReadVariableOpReadVariableOp4low_rank_layer_2_tensordot_2_readvariableop_resource*
_output_shapes	
:*
dtype0¡
-low_rank_layer_2/Tensordot_2/ReadVariableOp_1ReadVariableOp6low_rank_layer_2_tensordot_2_readvariableop_1_resource*
_output_shapes	
:*
dtype0{
*low_rank_layer_2/Tensordot_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Ã
$low_rank_layer_2/Tensordot_2/ReshapeReshape3low_rank_layer_2/Tensordot_2/ReadVariableOp:value:03low_rank_layer_2/Tensordot_2/Reshape/shape:output:0*
T0*
_output_shapes
:	}
,low_rank_layer_2/Tensordot_2/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  É
&low_rank_layer_2/Tensordot_2/Reshape_1Reshape5low_rank_layer_2/Tensordot_2/ReadVariableOp_1:value:05low_rank_layer_2/Tensordot_2/Reshape_1/shape:output:0*
T0*
_output_shapes
:	¸
#low_rank_layer_2/Tensordot_2/MatMulMatMul-low_rank_layer_2/Tensordot_2/Reshape:output:0/low_rank_layer_2/Tensordot_2/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_1AddV2low_rank_layer_2/add:z:0-low_rank_layer_2/Tensordot_2/MatMul:product:0*
T0* 
_output_shapes
:

+low_rank_layer_2/Tensordot_3/ReadVariableOpReadVariableOp4low_rank_layer_2_tensordot_3_readvariableop_resource*
_output_shapes	
:*
dtype0¡
-low_rank_layer_2/Tensordot_3/ReadVariableOp_1ReadVariableOp6low_rank_layer_2_tensordot_3_readvariableop_1_resource*
_output_shapes	
:*
dtype0{
*low_rank_layer_2/Tensordot_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Ã
$low_rank_layer_2/Tensordot_3/ReshapeReshape3low_rank_layer_2/Tensordot_3/ReadVariableOp:value:03low_rank_layer_2/Tensordot_3/Reshape/shape:output:0*
T0*
_output_shapes
:	}
,low_rank_layer_2/Tensordot_3/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  É
&low_rank_layer_2/Tensordot_3/Reshape_1Reshape5low_rank_layer_2/Tensordot_3/ReadVariableOp_1:value:05low_rank_layer_2/Tensordot_3/Reshape_1/shape:output:0*
T0*
_output_shapes
:	¸
#low_rank_layer_2/Tensordot_3/MatMulMatMul-low_rank_layer_2/Tensordot_3/Reshape:output:0/low_rank_layer_2/Tensordot_3/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_2AddV2low_rank_layer_2/add_1:z:0-low_rank_layer_2/Tensordot_3/MatMul:product:0*
T0* 
_output_shapes
:

+low_rank_layer_2/Tensordot_4/ReadVariableOpReadVariableOp4low_rank_layer_2_tensordot_4_readvariableop_resource*
_output_shapes	
:*
dtype0¡
-low_rank_layer_2/Tensordot_4/ReadVariableOp_1ReadVariableOp6low_rank_layer_2_tensordot_4_readvariableop_1_resource*
_output_shapes	
:*
dtype0{
*low_rank_layer_2/Tensordot_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Ã
$low_rank_layer_2/Tensordot_4/ReshapeReshape3low_rank_layer_2/Tensordot_4/ReadVariableOp:value:03low_rank_layer_2/Tensordot_4/Reshape/shape:output:0*
T0*
_output_shapes
:	}
,low_rank_layer_2/Tensordot_4/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  É
&low_rank_layer_2/Tensordot_4/Reshape_1Reshape5low_rank_layer_2/Tensordot_4/ReadVariableOp_1:value:05low_rank_layer_2/Tensordot_4/Reshape_1/shape:output:0*
T0*
_output_shapes
:	¸
#low_rank_layer_2/Tensordot_4/MatMulMatMul-low_rank_layer_2/Tensordot_4/Reshape:output:0/low_rank_layer_2/Tensordot_4/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_3AddV2low_rank_layer_2/add_2:z:0-low_rank_layer_2/Tensordot_4/MatMul:product:0*
T0* 
_output_shapes
:

+low_rank_layer_2/Tensordot_5/ReadVariableOpReadVariableOp4low_rank_layer_2_tensordot_5_readvariableop_resource*
_output_shapes	
:*
dtype0¡
-low_rank_layer_2/Tensordot_5/ReadVariableOp_1ReadVariableOp6low_rank_layer_2_tensordot_5_readvariableop_1_resource*
_output_shapes	
:*
dtype0{
*low_rank_layer_2/Tensordot_5/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Ã
$low_rank_layer_2/Tensordot_5/ReshapeReshape3low_rank_layer_2/Tensordot_5/ReadVariableOp:value:03low_rank_layer_2/Tensordot_5/Reshape/shape:output:0*
T0*
_output_shapes
:	}
,low_rank_layer_2/Tensordot_5/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  É
&low_rank_layer_2/Tensordot_5/Reshape_1Reshape5low_rank_layer_2/Tensordot_5/ReadVariableOp_1:value:05low_rank_layer_2/Tensordot_5/Reshape_1/shape:output:0*
T0*
_output_shapes
:	¸
#low_rank_layer_2/Tensordot_5/MatMulMatMul-low_rank_layer_2/Tensordot_5/Reshape:output:0/low_rank_layer_2/Tensordot_5/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_4AddV2low_rank_layer_2/add_3:z:0-low_rank_layer_2/Tensordot_5/MatMul:product:0*
T0* 
_output_shapes
:

+low_rank_layer_2/Tensordot_6/ReadVariableOpReadVariableOp4low_rank_layer_2_tensordot_6_readvariableop_resource*
_output_shapes	
:*
dtype0¡
-low_rank_layer_2/Tensordot_6/ReadVariableOp_1ReadVariableOp6low_rank_layer_2_tensordot_6_readvariableop_1_resource*
_output_shapes	
:*
dtype0{
*low_rank_layer_2/Tensordot_6/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Ã
$low_rank_layer_2/Tensordot_6/ReshapeReshape3low_rank_layer_2/Tensordot_6/ReadVariableOp:value:03low_rank_layer_2/Tensordot_6/Reshape/shape:output:0*
T0*
_output_shapes
:	}
,low_rank_layer_2/Tensordot_6/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  É
&low_rank_layer_2/Tensordot_6/Reshape_1Reshape5low_rank_layer_2/Tensordot_6/ReadVariableOp_1:value:05low_rank_layer_2/Tensordot_6/Reshape_1/shape:output:0*
T0*
_output_shapes
:	¸
#low_rank_layer_2/Tensordot_6/MatMulMatMul-low_rank_layer_2/Tensordot_6/Reshape:output:0/low_rank_layer_2/Tensordot_6/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_5AddV2low_rank_layer_2/add_4:z:0-low_rank_layer_2/Tensordot_6/MatMul:product:0*
T0* 
_output_shapes
:

+low_rank_layer_2/Tensordot_7/ReadVariableOpReadVariableOp4low_rank_layer_2_tensordot_7_readvariableop_resource*
_output_shapes	
:*
dtype0¡
-low_rank_layer_2/Tensordot_7/ReadVariableOp_1ReadVariableOp6low_rank_layer_2_tensordot_7_readvariableop_1_resource*
_output_shapes	
:*
dtype0{
*low_rank_layer_2/Tensordot_7/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Ã
$low_rank_layer_2/Tensordot_7/ReshapeReshape3low_rank_layer_2/Tensordot_7/ReadVariableOp:value:03low_rank_layer_2/Tensordot_7/Reshape/shape:output:0*
T0*
_output_shapes
:	}
,low_rank_layer_2/Tensordot_7/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  É
&low_rank_layer_2/Tensordot_7/Reshape_1Reshape5low_rank_layer_2/Tensordot_7/ReadVariableOp_1:value:05low_rank_layer_2/Tensordot_7/Reshape_1/shape:output:0*
T0*
_output_shapes
:	¸
#low_rank_layer_2/Tensordot_7/MatMulMatMul-low_rank_layer_2/Tensordot_7/Reshape:output:0/low_rank_layer_2/Tensordot_7/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_6AddV2low_rank_layer_2/add_5:z:0-low_rank_layer_2/Tensordot_7/MatMul:product:0*
T0* 
_output_shapes
:

+low_rank_layer_2/Tensordot_8/ReadVariableOpReadVariableOp4low_rank_layer_2_tensordot_8_readvariableop_resource*
_output_shapes	
:*
dtype0¡
-low_rank_layer_2/Tensordot_8/ReadVariableOp_1ReadVariableOp6low_rank_layer_2_tensordot_8_readvariableop_1_resource*
_output_shapes	
:*
dtype0{
*low_rank_layer_2/Tensordot_8/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Ã
$low_rank_layer_2/Tensordot_8/ReshapeReshape3low_rank_layer_2/Tensordot_8/ReadVariableOp:value:03low_rank_layer_2/Tensordot_8/Reshape/shape:output:0*
T0*
_output_shapes
:	}
,low_rank_layer_2/Tensordot_8/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  É
&low_rank_layer_2/Tensordot_8/Reshape_1Reshape5low_rank_layer_2/Tensordot_8/ReadVariableOp_1:value:05low_rank_layer_2/Tensordot_8/Reshape_1/shape:output:0*
T0*
_output_shapes
:	¸
#low_rank_layer_2/Tensordot_8/MatMulMatMul-low_rank_layer_2/Tensordot_8/Reshape:output:0/low_rank_layer_2/Tensordot_8/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_7AddV2low_rank_layer_2/add_6:z:0-low_rank_layer_2/Tensordot_8/MatMul:product:0*
T0* 
_output_shapes
:

+low_rank_layer_2/Tensordot_9/ReadVariableOpReadVariableOp4low_rank_layer_2_tensordot_9_readvariableop_resource*
_output_shapes	
:*
dtype0¡
-low_rank_layer_2/Tensordot_9/ReadVariableOp_1ReadVariableOp6low_rank_layer_2_tensordot_9_readvariableop_1_resource*
_output_shapes	
:*
dtype0{
*low_rank_layer_2/Tensordot_9/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Ã
$low_rank_layer_2/Tensordot_9/ReshapeReshape3low_rank_layer_2/Tensordot_9/ReadVariableOp:value:03low_rank_layer_2/Tensordot_9/Reshape/shape:output:0*
T0*
_output_shapes
:	}
,low_rank_layer_2/Tensordot_9/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  É
&low_rank_layer_2/Tensordot_9/Reshape_1Reshape5low_rank_layer_2/Tensordot_9/ReadVariableOp_1:value:05low_rank_layer_2/Tensordot_9/Reshape_1/shape:output:0*
T0*
_output_shapes
:	¸
#low_rank_layer_2/Tensordot_9/MatMulMatMul-low_rank_layer_2/Tensordot_9/Reshape:output:0/low_rank_layer_2/Tensordot_9/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_8AddV2low_rank_layer_2/add_7:z:0-low_rank_layer_2/Tensordot_9/MatMul:product:0*
T0* 
_output_shapes
:

,low_rank_layer_2/Tensordot_10/ReadVariableOpReadVariableOp5low_rank_layer_2_tensordot_10_readvariableop_resource*
_output_shapes	
:*
dtype0£
.low_rank_layer_2/Tensordot_10/ReadVariableOp_1ReadVariableOp7low_rank_layer_2_tensordot_10_readvariableop_1_resource*
_output_shapes	
:*
dtype0|
+low_rank_layer_2/Tensordot_10/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Æ
%low_rank_layer_2/Tensordot_10/ReshapeReshape4low_rank_layer_2/Tensordot_10/ReadVariableOp:value:04low_rank_layer_2/Tensordot_10/Reshape/shape:output:0*
T0*
_output_shapes
:	~
-low_rank_layer_2/Tensordot_10/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  Ì
'low_rank_layer_2/Tensordot_10/Reshape_1Reshape6low_rank_layer_2/Tensordot_10/ReadVariableOp_1:value:06low_rank_layer_2/Tensordot_10/Reshape_1/shape:output:0*
T0*
_output_shapes
:	»
$low_rank_layer_2/Tensordot_10/MatMulMatMul.low_rank_layer_2/Tensordot_10/Reshape:output:00low_rank_layer_2/Tensordot_10/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_9AddV2low_rank_layer_2/add_8:z:0.low_rank_layer_2/Tensordot_10/MatMul:product:0*
T0* 
_output_shapes
:

,low_rank_layer_2/Tensordot_11/ReadVariableOpReadVariableOp5low_rank_layer_2_tensordot_11_readvariableop_resource*
_output_shapes	
:*
dtype0£
.low_rank_layer_2/Tensordot_11/ReadVariableOp_1ReadVariableOp7low_rank_layer_2_tensordot_11_readvariableop_1_resource*
_output_shapes	
:*
dtype0|
+low_rank_layer_2/Tensordot_11/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Æ
%low_rank_layer_2/Tensordot_11/ReshapeReshape4low_rank_layer_2/Tensordot_11/ReadVariableOp:value:04low_rank_layer_2/Tensordot_11/Reshape/shape:output:0*
T0*
_output_shapes
:	~
-low_rank_layer_2/Tensordot_11/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  Ì
'low_rank_layer_2/Tensordot_11/Reshape_1Reshape6low_rank_layer_2/Tensordot_11/ReadVariableOp_1:value:06low_rank_layer_2/Tensordot_11/Reshape_1/shape:output:0*
T0*
_output_shapes
:	»
$low_rank_layer_2/Tensordot_11/MatMulMatMul.low_rank_layer_2/Tensordot_11/Reshape:output:00low_rank_layer_2/Tensordot_11/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_10AddV2low_rank_layer_2/add_9:z:0.low_rank_layer_2/Tensordot_11/MatMul:product:0*
T0* 
_output_shapes
:

,low_rank_layer_2/Tensordot_12/ReadVariableOpReadVariableOp5low_rank_layer_2_tensordot_12_readvariableop_resource*
_output_shapes	
:*
dtype0£
.low_rank_layer_2/Tensordot_12/ReadVariableOp_1ReadVariableOp7low_rank_layer_2_tensordot_12_readvariableop_1_resource*
_output_shapes	
:*
dtype0|
+low_rank_layer_2/Tensordot_12/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Æ
%low_rank_layer_2/Tensordot_12/ReshapeReshape4low_rank_layer_2/Tensordot_12/ReadVariableOp:value:04low_rank_layer_2/Tensordot_12/Reshape/shape:output:0*
T0*
_output_shapes
:	~
-low_rank_layer_2/Tensordot_12/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  Ì
'low_rank_layer_2/Tensordot_12/Reshape_1Reshape6low_rank_layer_2/Tensordot_12/ReadVariableOp_1:value:06low_rank_layer_2/Tensordot_12/Reshape_1/shape:output:0*
T0*
_output_shapes
:	»
$low_rank_layer_2/Tensordot_12/MatMulMatMul.low_rank_layer_2/Tensordot_12/Reshape:output:00low_rank_layer_2/Tensordot_12/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_11AddV2low_rank_layer_2/add_10:z:0.low_rank_layer_2/Tensordot_12/MatMul:product:0*
T0* 
_output_shapes
:

,low_rank_layer_2/Tensordot_13/ReadVariableOpReadVariableOp5low_rank_layer_2_tensordot_13_readvariableop_resource*
_output_shapes	
:*
dtype0£
.low_rank_layer_2/Tensordot_13/ReadVariableOp_1ReadVariableOp7low_rank_layer_2_tensordot_13_readvariableop_1_resource*
_output_shapes	
:*
dtype0|
+low_rank_layer_2/Tensordot_13/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Æ
%low_rank_layer_2/Tensordot_13/ReshapeReshape4low_rank_layer_2/Tensordot_13/ReadVariableOp:value:04low_rank_layer_2/Tensordot_13/Reshape/shape:output:0*
T0*
_output_shapes
:	~
-low_rank_layer_2/Tensordot_13/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  Ì
'low_rank_layer_2/Tensordot_13/Reshape_1Reshape6low_rank_layer_2/Tensordot_13/ReadVariableOp_1:value:06low_rank_layer_2/Tensordot_13/Reshape_1/shape:output:0*
T0*
_output_shapes
:	»
$low_rank_layer_2/Tensordot_13/MatMulMatMul.low_rank_layer_2/Tensordot_13/Reshape:output:00low_rank_layer_2/Tensordot_13/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_12AddV2low_rank_layer_2/add_11:z:0.low_rank_layer_2/Tensordot_13/MatMul:product:0*
T0* 
_output_shapes
:

,low_rank_layer_2/Tensordot_14/ReadVariableOpReadVariableOp5low_rank_layer_2_tensordot_14_readvariableop_resource*
_output_shapes	
:*
dtype0£
.low_rank_layer_2/Tensordot_14/ReadVariableOp_1ReadVariableOp7low_rank_layer_2_tensordot_14_readvariableop_1_resource*
_output_shapes	
:*
dtype0|
+low_rank_layer_2/Tensordot_14/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Æ
%low_rank_layer_2/Tensordot_14/ReshapeReshape4low_rank_layer_2/Tensordot_14/ReadVariableOp:value:04low_rank_layer_2/Tensordot_14/Reshape/shape:output:0*
T0*
_output_shapes
:	~
-low_rank_layer_2/Tensordot_14/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  Ì
'low_rank_layer_2/Tensordot_14/Reshape_1Reshape6low_rank_layer_2/Tensordot_14/ReadVariableOp_1:value:06low_rank_layer_2/Tensordot_14/Reshape_1/shape:output:0*
T0*
_output_shapes
:	»
$low_rank_layer_2/Tensordot_14/MatMulMatMul.low_rank_layer_2/Tensordot_14/Reshape:output:00low_rank_layer_2/Tensordot_14/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_13AddV2low_rank_layer_2/add_12:z:0.low_rank_layer_2/Tensordot_14/MatMul:product:0*
T0* 
_output_shapes
:

,low_rank_layer_2/Tensordot_15/ReadVariableOpReadVariableOp5low_rank_layer_2_tensordot_15_readvariableop_resource*
_output_shapes	
:*
dtype0£
.low_rank_layer_2/Tensordot_15/ReadVariableOp_1ReadVariableOp7low_rank_layer_2_tensordot_15_readvariableop_1_resource*
_output_shapes	
:*
dtype0|
+low_rank_layer_2/Tensordot_15/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Æ
%low_rank_layer_2/Tensordot_15/ReshapeReshape4low_rank_layer_2/Tensordot_15/ReadVariableOp:value:04low_rank_layer_2/Tensordot_15/Reshape/shape:output:0*
T0*
_output_shapes
:	~
-low_rank_layer_2/Tensordot_15/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  Ì
'low_rank_layer_2/Tensordot_15/Reshape_1Reshape6low_rank_layer_2/Tensordot_15/ReadVariableOp_1:value:06low_rank_layer_2/Tensordot_15/Reshape_1/shape:output:0*
T0*
_output_shapes
:	»
$low_rank_layer_2/Tensordot_15/MatMulMatMul.low_rank_layer_2/Tensordot_15/Reshape:output:00low_rank_layer_2/Tensordot_15/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_14AddV2low_rank_layer_2/add_13:z:0.low_rank_layer_2/Tensordot_15/MatMul:product:0*
T0* 
_output_shapes
:

,low_rank_layer_2/Tensordot_16/ReadVariableOpReadVariableOp5low_rank_layer_2_tensordot_16_readvariableop_resource*
_output_shapes	
:*
dtype0£
.low_rank_layer_2/Tensordot_16/ReadVariableOp_1ReadVariableOp7low_rank_layer_2_tensordot_16_readvariableop_1_resource*
_output_shapes	
:*
dtype0|
+low_rank_layer_2/Tensordot_16/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Æ
%low_rank_layer_2/Tensordot_16/ReshapeReshape4low_rank_layer_2/Tensordot_16/ReadVariableOp:value:04low_rank_layer_2/Tensordot_16/Reshape/shape:output:0*
T0*
_output_shapes
:	~
-low_rank_layer_2/Tensordot_16/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  Ì
'low_rank_layer_2/Tensordot_16/Reshape_1Reshape6low_rank_layer_2/Tensordot_16/ReadVariableOp_1:value:06low_rank_layer_2/Tensordot_16/Reshape_1/shape:output:0*
T0*
_output_shapes
:	»
$low_rank_layer_2/Tensordot_16/MatMulMatMul.low_rank_layer_2/Tensordot_16/Reshape:output:00low_rank_layer_2/Tensordot_16/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_15AddV2low_rank_layer_2/add_14:z:0.low_rank_layer_2/Tensordot_16/MatMul:product:0*
T0* 
_output_shapes
:

,low_rank_layer_2/Tensordot_17/ReadVariableOpReadVariableOp5low_rank_layer_2_tensordot_17_readvariableop_resource*
_output_shapes	
:*
dtype0£
.low_rank_layer_2/Tensordot_17/ReadVariableOp_1ReadVariableOp7low_rank_layer_2_tensordot_17_readvariableop_1_resource*
_output_shapes	
:*
dtype0|
+low_rank_layer_2/Tensordot_17/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Æ
%low_rank_layer_2/Tensordot_17/ReshapeReshape4low_rank_layer_2/Tensordot_17/ReadVariableOp:value:04low_rank_layer_2/Tensordot_17/Reshape/shape:output:0*
T0*
_output_shapes
:	~
-low_rank_layer_2/Tensordot_17/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  Ì
'low_rank_layer_2/Tensordot_17/Reshape_1Reshape6low_rank_layer_2/Tensordot_17/ReadVariableOp_1:value:06low_rank_layer_2/Tensordot_17/Reshape_1/shape:output:0*
T0*
_output_shapes
:	»
$low_rank_layer_2/Tensordot_17/MatMulMatMul.low_rank_layer_2/Tensordot_17/Reshape:output:00low_rank_layer_2/Tensordot_17/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_16AddV2low_rank_layer_2/add_15:z:0.low_rank_layer_2/Tensordot_17/MatMul:product:0*
T0* 
_output_shapes
:

,low_rank_layer_2/Tensordot_18/ReadVariableOpReadVariableOp5low_rank_layer_2_tensordot_18_readvariableop_resource*
_output_shapes	
:*
dtype0£
.low_rank_layer_2/Tensordot_18/ReadVariableOp_1ReadVariableOp7low_rank_layer_2_tensordot_18_readvariableop_1_resource*
_output_shapes	
:*
dtype0|
+low_rank_layer_2/Tensordot_18/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Æ
%low_rank_layer_2/Tensordot_18/ReshapeReshape4low_rank_layer_2/Tensordot_18/ReadVariableOp:value:04low_rank_layer_2/Tensordot_18/Reshape/shape:output:0*
T0*
_output_shapes
:	~
-low_rank_layer_2/Tensordot_18/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  Ì
'low_rank_layer_2/Tensordot_18/Reshape_1Reshape6low_rank_layer_2/Tensordot_18/ReadVariableOp_1:value:06low_rank_layer_2/Tensordot_18/Reshape_1/shape:output:0*
T0*
_output_shapes
:	»
$low_rank_layer_2/Tensordot_18/MatMulMatMul.low_rank_layer_2/Tensordot_18/Reshape:output:00low_rank_layer_2/Tensordot_18/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_17AddV2low_rank_layer_2/add_16:z:0.low_rank_layer_2/Tensordot_18/MatMul:product:0*
T0* 
_output_shapes
:

,low_rank_layer_2/Tensordot_19/ReadVariableOpReadVariableOp5low_rank_layer_2_tensordot_19_readvariableop_resource*
_output_shapes	
:*
dtype0£
.low_rank_layer_2/Tensordot_19/ReadVariableOp_1ReadVariableOp7low_rank_layer_2_tensordot_19_readvariableop_1_resource*
_output_shapes	
:*
dtype0|
+low_rank_layer_2/Tensordot_19/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Æ
%low_rank_layer_2/Tensordot_19/ReshapeReshape4low_rank_layer_2/Tensordot_19/ReadVariableOp:value:04low_rank_layer_2/Tensordot_19/Reshape/shape:output:0*
T0*
_output_shapes
:	~
-low_rank_layer_2/Tensordot_19/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  Ì
'low_rank_layer_2/Tensordot_19/Reshape_1Reshape6low_rank_layer_2/Tensordot_19/ReadVariableOp_1:value:06low_rank_layer_2/Tensordot_19/Reshape_1/shape:output:0*
T0*
_output_shapes
:	»
$low_rank_layer_2/Tensordot_19/MatMulMatMul.low_rank_layer_2/Tensordot_19/Reshape:output:00low_rank_layer_2/Tensordot_19/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_18AddV2low_rank_layer_2/add_17:z:0.low_rank_layer_2/Tensordot_19/MatMul:product:0*
T0* 
_output_shapes
:

,low_rank_layer_2/Tensordot_20/ReadVariableOpReadVariableOp5low_rank_layer_2_tensordot_20_readvariableop_resource*
_output_shapes	
:*
dtype0£
.low_rank_layer_2/Tensordot_20/ReadVariableOp_1ReadVariableOp7low_rank_layer_2_tensordot_20_readvariableop_1_resource*
_output_shapes	
:*
dtype0|
+low_rank_layer_2/Tensordot_20/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Æ
%low_rank_layer_2/Tensordot_20/ReshapeReshape4low_rank_layer_2/Tensordot_20/ReadVariableOp:value:04low_rank_layer_2/Tensordot_20/Reshape/shape:output:0*
T0*
_output_shapes
:	~
-low_rank_layer_2/Tensordot_20/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  Ì
'low_rank_layer_2/Tensordot_20/Reshape_1Reshape6low_rank_layer_2/Tensordot_20/ReadVariableOp_1:value:06low_rank_layer_2/Tensordot_20/Reshape_1/shape:output:0*
T0*
_output_shapes
:	»
$low_rank_layer_2/Tensordot_20/MatMulMatMul.low_rank_layer_2/Tensordot_20/Reshape:output:00low_rank_layer_2/Tensordot_20/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_19AddV2low_rank_layer_2/add_18:z:0.low_rank_layer_2/Tensordot_20/MatMul:product:0*
T0* 
_output_shapes
:

,low_rank_layer_2/Tensordot_21/ReadVariableOpReadVariableOp5low_rank_layer_2_tensordot_21_readvariableop_resource*
_output_shapes	
:*
dtype0£
.low_rank_layer_2/Tensordot_21/ReadVariableOp_1ReadVariableOp7low_rank_layer_2_tensordot_21_readvariableop_1_resource*
_output_shapes	
:*
dtype0|
+low_rank_layer_2/Tensordot_21/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Æ
%low_rank_layer_2/Tensordot_21/ReshapeReshape4low_rank_layer_2/Tensordot_21/ReadVariableOp:value:04low_rank_layer_2/Tensordot_21/Reshape/shape:output:0*
T0*
_output_shapes
:	~
-low_rank_layer_2/Tensordot_21/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  Ì
'low_rank_layer_2/Tensordot_21/Reshape_1Reshape6low_rank_layer_2/Tensordot_21/ReadVariableOp_1:value:06low_rank_layer_2/Tensordot_21/Reshape_1/shape:output:0*
T0*
_output_shapes
:	»
$low_rank_layer_2/Tensordot_21/MatMulMatMul.low_rank_layer_2/Tensordot_21/Reshape:output:00low_rank_layer_2/Tensordot_21/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_20AddV2low_rank_layer_2/add_19:z:0.low_rank_layer_2/Tensordot_21/MatMul:product:0*
T0* 
_output_shapes
:

,low_rank_layer_2/Tensordot_22/ReadVariableOpReadVariableOp5low_rank_layer_2_tensordot_22_readvariableop_resource*
_output_shapes	
:*
dtype0£
.low_rank_layer_2/Tensordot_22/ReadVariableOp_1ReadVariableOp7low_rank_layer_2_tensordot_22_readvariableop_1_resource*
_output_shapes	
:*
dtype0|
+low_rank_layer_2/Tensordot_22/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Æ
%low_rank_layer_2/Tensordot_22/ReshapeReshape4low_rank_layer_2/Tensordot_22/ReadVariableOp:value:04low_rank_layer_2/Tensordot_22/Reshape/shape:output:0*
T0*
_output_shapes
:	~
-low_rank_layer_2/Tensordot_22/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  Ì
'low_rank_layer_2/Tensordot_22/Reshape_1Reshape6low_rank_layer_2/Tensordot_22/ReadVariableOp_1:value:06low_rank_layer_2/Tensordot_22/Reshape_1/shape:output:0*
T0*
_output_shapes
:	»
$low_rank_layer_2/Tensordot_22/MatMulMatMul.low_rank_layer_2/Tensordot_22/Reshape:output:00low_rank_layer_2/Tensordot_22/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_21AddV2low_rank_layer_2/add_20:z:0.low_rank_layer_2/Tensordot_22/MatMul:product:0*
T0* 
_output_shapes
:

,low_rank_layer_2/Tensordot_23/ReadVariableOpReadVariableOp5low_rank_layer_2_tensordot_23_readvariableop_resource*
_output_shapes	
:*
dtype0£
.low_rank_layer_2/Tensordot_23/ReadVariableOp_1ReadVariableOp7low_rank_layer_2_tensordot_23_readvariableop_1_resource*
_output_shapes	
:*
dtype0|
+low_rank_layer_2/Tensordot_23/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Æ
%low_rank_layer_2/Tensordot_23/ReshapeReshape4low_rank_layer_2/Tensordot_23/ReadVariableOp:value:04low_rank_layer_2/Tensordot_23/Reshape/shape:output:0*
T0*
_output_shapes
:	~
-low_rank_layer_2/Tensordot_23/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  Ì
'low_rank_layer_2/Tensordot_23/Reshape_1Reshape6low_rank_layer_2/Tensordot_23/ReadVariableOp_1:value:06low_rank_layer_2/Tensordot_23/Reshape_1/shape:output:0*
T0*
_output_shapes
:	»
$low_rank_layer_2/Tensordot_23/MatMulMatMul.low_rank_layer_2/Tensordot_23/Reshape:output:00low_rank_layer_2/Tensordot_23/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_22AddV2low_rank_layer_2/add_21:z:0.low_rank_layer_2/Tensordot_23/MatMul:product:0*
T0* 
_output_shapes
:

,low_rank_layer_2/Tensordot_24/ReadVariableOpReadVariableOp5low_rank_layer_2_tensordot_24_readvariableop_resource*
_output_shapes	
:*
dtype0£
.low_rank_layer_2/Tensordot_24/ReadVariableOp_1ReadVariableOp7low_rank_layer_2_tensordot_24_readvariableop_1_resource*
_output_shapes	
:*
dtype0|
+low_rank_layer_2/Tensordot_24/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Æ
%low_rank_layer_2/Tensordot_24/ReshapeReshape4low_rank_layer_2/Tensordot_24/ReadVariableOp:value:04low_rank_layer_2/Tensordot_24/Reshape/shape:output:0*
T0*
_output_shapes
:	~
-low_rank_layer_2/Tensordot_24/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  Ì
'low_rank_layer_2/Tensordot_24/Reshape_1Reshape6low_rank_layer_2/Tensordot_24/ReadVariableOp_1:value:06low_rank_layer_2/Tensordot_24/Reshape_1/shape:output:0*
T0*
_output_shapes
:	»
$low_rank_layer_2/Tensordot_24/MatMulMatMul.low_rank_layer_2/Tensordot_24/Reshape:output:00low_rank_layer_2/Tensordot_24/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_23AddV2low_rank_layer_2/add_22:z:0.low_rank_layer_2/Tensordot_24/MatMul:product:0*
T0* 
_output_shapes
:

,low_rank_layer_2/Tensordot_25/ReadVariableOpReadVariableOp5low_rank_layer_2_tensordot_25_readvariableop_resource*
_output_shapes	
:*
dtype0£
.low_rank_layer_2/Tensordot_25/ReadVariableOp_1ReadVariableOp7low_rank_layer_2_tensordot_25_readvariableop_1_resource*
_output_shapes	
:*
dtype0|
+low_rank_layer_2/Tensordot_25/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Æ
%low_rank_layer_2/Tensordot_25/ReshapeReshape4low_rank_layer_2/Tensordot_25/ReadVariableOp:value:04low_rank_layer_2/Tensordot_25/Reshape/shape:output:0*
T0*
_output_shapes
:	~
-low_rank_layer_2/Tensordot_25/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  Ì
'low_rank_layer_2/Tensordot_25/Reshape_1Reshape6low_rank_layer_2/Tensordot_25/ReadVariableOp_1:value:06low_rank_layer_2/Tensordot_25/Reshape_1/shape:output:0*
T0*
_output_shapes
:	»
$low_rank_layer_2/Tensordot_25/MatMulMatMul.low_rank_layer_2/Tensordot_25/Reshape:output:00low_rank_layer_2/Tensordot_25/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_24AddV2low_rank_layer_2/add_23:z:0.low_rank_layer_2/Tensordot_25/MatMul:product:0*
T0* 
_output_shapes
:

,low_rank_layer_2/Tensordot_26/ReadVariableOpReadVariableOp5low_rank_layer_2_tensordot_26_readvariableop_resource*
_output_shapes	
:*
dtype0£
.low_rank_layer_2/Tensordot_26/ReadVariableOp_1ReadVariableOp7low_rank_layer_2_tensordot_26_readvariableop_1_resource*
_output_shapes	
:*
dtype0|
+low_rank_layer_2/Tensordot_26/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Æ
%low_rank_layer_2/Tensordot_26/ReshapeReshape4low_rank_layer_2/Tensordot_26/ReadVariableOp:value:04low_rank_layer_2/Tensordot_26/Reshape/shape:output:0*
T0*
_output_shapes
:	~
-low_rank_layer_2/Tensordot_26/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  Ì
'low_rank_layer_2/Tensordot_26/Reshape_1Reshape6low_rank_layer_2/Tensordot_26/ReadVariableOp_1:value:06low_rank_layer_2/Tensordot_26/Reshape_1/shape:output:0*
T0*
_output_shapes
:	»
$low_rank_layer_2/Tensordot_26/MatMulMatMul.low_rank_layer_2/Tensordot_26/Reshape:output:00low_rank_layer_2/Tensordot_26/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_25AddV2low_rank_layer_2/add_24:z:0.low_rank_layer_2/Tensordot_26/MatMul:product:0*
T0* 
_output_shapes
:

,low_rank_layer_2/Tensordot_27/ReadVariableOpReadVariableOp5low_rank_layer_2_tensordot_27_readvariableop_resource*
_output_shapes	
:*
dtype0£
.low_rank_layer_2/Tensordot_27/ReadVariableOp_1ReadVariableOp7low_rank_layer_2_tensordot_27_readvariableop_1_resource*
_output_shapes	
:*
dtype0|
+low_rank_layer_2/Tensordot_27/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Æ
%low_rank_layer_2/Tensordot_27/ReshapeReshape4low_rank_layer_2/Tensordot_27/ReadVariableOp:value:04low_rank_layer_2/Tensordot_27/Reshape/shape:output:0*
T0*
_output_shapes
:	~
-low_rank_layer_2/Tensordot_27/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  Ì
'low_rank_layer_2/Tensordot_27/Reshape_1Reshape6low_rank_layer_2/Tensordot_27/ReadVariableOp_1:value:06low_rank_layer_2/Tensordot_27/Reshape_1/shape:output:0*
T0*
_output_shapes
:	»
$low_rank_layer_2/Tensordot_27/MatMulMatMul.low_rank_layer_2/Tensordot_27/Reshape:output:00low_rank_layer_2/Tensordot_27/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_26AddV2low_rank_layer_2/add_25:z:0.low_rank_layer_2/Tensordot_27/MatMul:product:0*
T0* 
_output_shapes
:

,low_rank_layer_2/Tensordot_28/ReadVariableOpReadVariableOp5low_rank_layer_2_tensordot_28_readvariableop_resource*
_output_shapes	
:*
dtype0£
.low_rank_layer_2/Tensordot_28/ReadVariableOp_1ReadVariableOp7low_rank_layer_2_tensordot_28_readvariableop_1_resource*
_output_shapes	
:*
dtype0|
+low_rank_layer_2/Tensordot_28/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Æ
%low_rank_layer_2/Tensordot_28/ReshapeReshape4low_rank_layer_2/Tensordot_28/ReadVariableOp:value:04low_rank_layer_2/Tensordot_28/Reshape/shape:output:0*
T0*
_output_shapes
:	~
-low_rank_layer_2/Tensordot_28/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  Ì
'low_rank_layer_2/Tensordot_28/Reshape_1Reshape6low_rank_layer_2/Tensordot_28/ReadVariableOp_1:value:06low_rank_layer_2/Tensordot_28/Reshape_1/shape:output:0*
T0*
_output_shapes
:	»
$low_rank_layer_2/Tensordot_28/MatMulMatMul.low_rank_layer_2/Tensordot_28/Reshape:output:00low_rank_layer_2/Tensordot_28/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_27AddV2low_rank_layer_2/add_26:z:0.low_rank_layer_2/Tensordot_28/MatMul:product:0*
T0* 
_output_shapes
:

,low_rank_layer_2/Tensordot_29/ReadVariableOpReadVariableOp5low_rank_layer_2_tensordot_29_readvariableop_resource*
_output_shapes	
:*
dtype0£
.low_rank_layer_2/Tensordot_29/ReadVariableOp_1ReadVariableOp7low_rank_layer_2_tensordot_29_readvariableop_1_resource*
_output_shapes	
:*
dtype0|
+low_rank_layer_2/Tensordot_29/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Æ
%low_rank_layer_2/Tensordot_29/ReshapeReshape4low_rank_layer_2/Tensordot_29/ReadVariableOp:value:04low_rank_layer_2/Tensordot_29/Reshape/shape:output:0*
T0*
_output_shapes
:	~
-low_rank_layer_2/Tensordot_29/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  Ì
'low_rank_layer_2/Tensordot_29/Reshape_1Reshape6low_rank_layer_2/Tensordot_29/ReadVariableOp_1:value:06low_rank_layer_2/Tensordot_29/Reshape_1/shape:output:0*
T0*
_output_shapes
:	»
$low_rank_layer_2/Tensordot_29/MatMulMatMul.low_rank_layer_2/Tensordot_29/Reshape:output:00low_rank_layer_2/Tensordot_29/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_28AddV2low_rank_layer_2/add_27:z:0.low_rank_layer_2/Tensordot_29/MatMul:product:0*
T0* 
_output_shapes
:

,low_rank_layer_2/Tensordot_30/ReadVariableOpReadVariableOp5low_rank_layer_2_tensordot_30_readvariableop_resource*
_output_shapes	
:*
dtype0£
.low_rank_layer_2/Tensordot_30/ReadVariableOp_1ReadVariableOp7low_rank_layer_2_tensordot_30_readvariableop_1_resource*
_output_shapes	
:*
dtype0|
+low_rank_layer_2/Tensordot_30/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Æ
%low_rank_layer_2/Tensordot_30/ReshapeReshape4low_rank_layer_2/Tensordot_30/ReadVariableOp:value:04low_rank_layer_2/Tensordot_30/Reshape/shape:output:0*
T0*
_output_shapes
:	~
-low_rank_layer_2/Tensordot_30/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  Ì
'low_rank_layer_2/Tensordot_30/Reshape_1Reshape6low_rank_layer_2/Tensordot_30/ReadVariableOp_1:value:06low_rank_layer_2/Tensordot_30/Reshape_1/shape:output:0*
T0*
_output_shapes
:	»
$low_rank_layer_2/Tensordot_30/MatMulMatMul.low_rank_layer_2/Tensordot_30/Reshape:output:00low_rank_layer_2/Tensordot_30/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_29AddV2low_rank_layer_2/add_28:z:0.low_rank_layer_2/Tensordot_30/MatMul:product:0*
T0* 
_output_shapes
:

,low_rank_layer_2/Tensordot_31/ReadVariableOpReadVariableOp5low_rank_layer_2_tensordot_31_readvariableop_resource*
_output_shapes	
:*
dtype0£
.low_rank_layer_2/Tensordot_31/ReadVariableOp_1ReadVariableOp7low_rank_layer_2_tensordot_31_readvariableop_1_resource*
_output_shapes	
:*
dtype0|
+low_rank_layer_2/Tensordot_31/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     Æ
%low_rank_layer_2/Tensordot_31/ReshapeReshape4low_rank_layer_2/Tensordot_31/ReadVariableOp:value:04low_rank_layer_2/Tensordot_31/Reshape/shape:output:0*
T0*
_output_shapes
:	~
-low_rank_layer_2/Tensordot_31/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  Ì
'low_rank_layer_2/Tensordot_31/Reshape_1Reshape6low_rank_layer_2/Tensordot_31/ReadVariableOp_1:value:06low_rank_layer_2/Tensordot_31/Reshape_1/shape:output:0*
T0*
_output_shapes
:	»
$low_rank_layer_2/Tensordot_31/MatMulMatMul.low_rank_layer_2/Tensordot_31/Reshape:output:00low_rank_layer_2/Tensordot_31/Reshape_1:output:0*
T0* 
_output_shapes
:

low_rank_layer_2/add_30AddV2low_rank_layer_2/add_29:z:0.low_rank_layer_2/Tensordot_31/MatMul:product:0*
T0* 
_output_shapes
:

low_rank_layer_2/matmulBatchMatMulV2low_rank_layer_2/add_30:z:0reshape_4/Reshape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
reshape_5/ShapeShape low_rank_layer_2/matmul:output:0*
T0*
_output_shapes
:g
reshape_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
reshape_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
reshape_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
reshape_5/strided_sliceStridedSlicereshape_5/Shape:output:0&reshape_5/strided_slice/stack:output:0(reshape_5/strided_slice/stack_1:output:0(reshape_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
reshape_5/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :[
reshape_5/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :[
reshape_5/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :Û
reshape_5/Reshape/shapePack reshape_5/strided_slice:output:0"reshape_5/Reshape/shape/1:output:0"reshape_5/Reshape/shape/2:output:0"reshape_5/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:
reshape_5/ReshapeReshape low_rank_layer_2/matmul:output:0 reshape_5/Reshape/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ«
max_pooling2d_6/MaxPoolMaxPoolreshape_5/Reshape:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides

conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0È
conv2d_10/Conv2DConv2D max_pooling2d_6/MaxPool:output:0'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

 conv2d_10/BiasAdd/ReadVariableOpReadVariableOp)conv2d_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_10/BiasAddBiasAddconv2d_10/Conv2D:output:0(conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
conv2d_10/ReluReluconv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ­
max_pooling2d_7/MaxPoolMaxPoolconv2d_10/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides

conv2d_11/Conv2D/ReadVariableOpReadVariableOp(conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0È
conv2d_11/Conv2DConv2D max_pooling2d_7/MaxPool:output:0'conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

 conv2d_11/BiasAdd/ReadVariableOpReadVariableOp)conv2d_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_11/BiasAddBiasAddconv2d_11/Conv2D:output:0(conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
conv2d_11/ReluReluconv2d_11/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
flatten_3/ReshapeReshapeconv2d_11/Relu:activations:0flatten_3/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
dropout_3/IdentityIdentityflatten_3/Reshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0
dense_3/MatMulMatMuldropout_3/Identity:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
f
dense_3/SoftmaxSoftmaxdense_3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
h
IdentityIdentitydense_3/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¼
NoOpNoOp!^conv2d_10/BiasAdd/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp!^conv2d_11/BiasAdd/ReadVariableOp ^conv2d_11/Conv2D/ReadVariableOp ^conv2d_9/BiasAdd/ReadVariableOp^conv2d_9/Conv2D/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*^low_rank_layer_2/Tensordot/ReadVariableOp,^low_rank_layer_2/Tensordot/ReadVariableOp_1,^low_rank_layer_2/Tensordot_1/ReadVariableOp.^low_rank_layer_2/Tensordot_1/ReadVariableOp_1-^low_rank_layer_2/Tensordot_10/ReadVariableOp/^low_rank_layer_2/Tensordot_10/ReadVariableOp_1-^low_rank_layer_2/Tensordot_11/ReadVariableOp/^low_rank_layer_2/Tensordot_11/ReadVariableOp_1-^low_rank_layer_2/Tensordot_12/ReadVariableOp/^low_rank_layer_2/Tensordot_12/ReadVariableOp_1-^low_rank_layer_2/Tensordot_13/ReadVariableOp/^low_rank_layer_2/Tensordot_13/ReadVariableOp_1-^low_rank_layer_2/Tensordot_14/ReadVariableOp/^low_rank_layer_2/Tensordot_14/ReadVariableOp_1-^low_rank_layer_2/Tensordot_15/ReadVariableOp/^low_rank_layer_2/Tensordot_15/ReadVariableOp_1-^low_rank_layer_2/Tensordot_16/ReadVariableOp/^low_rank_layer_2/Tensordot_16/ReadVariableOp_1-^low_rank_layer_2/Tensordot_17/ReadVariableOp/^low_rank_layer_2/Tensordot_17/ReadVariableOp_1-^low_rank_layer_2/Tensordot_18/ReadVariableOp/^low_rank_layer_2/Tensordot_18/ReadVariableOp_1-^low_rank_layer_2/Tensordot_19/ReadVariableOp/^low_rank_layer_2/Tensordot_19/ReadVariableOp_1,^low_rank_layer_2/Tensordot_2/ReadVariableOp.^low_rank_layer_2/Tensordot_2/ReadVariableOp_1-^low_rank_layer_2/Tensordot_20/ReadVariableOp/^low_rank_layer_2/Tensordot_20/ReadVariableOp_1-^low_rank_layer_2/Tensordot_21/ReadVariableOp/^low_rank_layer_2/Tensordot_21/ReadVariableOp_1-^low_rank_layer_2/Tensordot_22/ReadVariableOp/^low_rank_layer_2/Tensordot_22/ReadVariableOp_1-^low_rank_layer_2/Tensordot_23/ReadVariableOp/^low_rank_layer_2/Tensordot_23/ReadVariableOp_1-^low_rank_layer_2/Tensordot_24/ReadVariableOp/^low_rank_layer_2/Tensordot_24/ReadVariableOp_1-^low_rank_layer_2/Tensordot_25/ReadVariableOp/^low_rank_layer_2/Tensordot_25/ReadVariableOp_1-^low_rank_layer_2/Tensordot_26/ReadVariableOp/^low_rank_layer_2/Tensordot_26/ReadVariableOp_1-^low_rank_layer_2/Tensordot_27/ReadVariableOp/^low_rank_layer_2/Tensordot_27/ReadVariableOp_1-^low_rank_layer_2/Tensordot_28/ReadVariableOp/^low_rank_layer_2/Tensordot_28/ReadVariableOp_1-^low_rank_layer_2/Tensordot_29/ReadVariableOp/^low_rank_layer_2/Tensordot_29/ReadVariableOp_1,^low_rank_layer_2/Tensordot_3/ReadVariableOp.^low_rank_layer_2/Tensordot_3/ReadVariableOp_1-^low_rank_layer_2/Tensordot_30/ReadVariableOp/^low_rank_layer_2/Tensordot_30/ReadVariableOp_1-^low_rank_layer_2/Tensordot_31/ReadVariableOp/^low_rank_layer_2/Tensordot_31/ReadVariableOp_1,^low_rank_layer_2/Tensordot_4/ReadVariableOp.^low_rank_layer_2/Tensordot_4/ReadVariableOp_1,^low_rank_layer_2/Tensordot_5/ReadVariableOp.^low_rank_layer_2/Tensordot_5/ReadVariableOp_1,^low_rank_layer_2/Tensordot_6/ReadVariableOp.^low_rank_layer_2/Tensordot_6/ReadVariableOp_1,^low_rank_layer_2/Tensordot_7/ReadVariableOp.^low_rank_layer_2/Tensordot_7/ReadVariableOp_1,^low_rank_layer_2/Tensordot_8/ReadVariableOp.^low_rank_layer_2/Tensordot_8/ReadVariableOp_1,^low_rank_layer_2/Tensordot_9/ReadVariableOp.^low_rank_layer_2/Tensordot_9/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*À
_input_shapes®
«:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2D
 conv2d_10/BiasAdd/ReadVariableOp conv2d_10/BiasAdd/ReadVariableOp2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp2D
 conv2d_11/BiasAdd/ReadVariableOp conv2d_11/BiasAdd/ReadVariableOp2B
conv2d_11/Conv2D/ReadVariableOpconv2d_11/Conv2D/ReadVariableOp2B
conv2d_9/BiasAdd/ReadVariableOpconv2d_9/BiasAdd/ReadVariableOp2@
conv2d_9/Conv2D/ReadVariableOpconv2d_9/Conv2D/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2V
)low_rank_layer_2/Tensordot/ReadVariableOp)low_rank_layer_2/Tensordot/ReadVariableOp2Z
+low_rank_layer_2/Tensordot/ReadVariableOp_1+low_rank_layer_2/Tensordot/ReadVariableOp_12Z
+low_rank_layer_2/Tensordot_1/ReadVariableOp+low_rank_layer_2/Tensordot_1/ReadVariableOp2^
-low_rank_layer_2/Tensordot_1/ReadVariableOp_1-low_rank_layer_2/Tensordot_1/ReadVariableOp_12\
,low_rank_layer_2/Tensordot_10/ReadVariableOp,low_rank_layer_2/Tensordot_10/ReadVariableOp2`
.low_rank_layer_2/Tensordot_10/ReadVariableOp_1.low_rank_layer_2/Tensordot_10/ReadVariableOp_12\
,low_rank_layer_2/Tensordot_11/ReadVariableOp,low_rank_layer_2/Tensordot_11/ReadVariableOp2`
.low_rank_layer_2/Tensordot_11/ReadVariableOp_1.low_rank_layer_2/Tensordot_11/ReadVariableOp_12\
,low_rank_layer_2/Tensordot_12/ReadVariableOp,low_rank_layer_2/Tensordot_12/ReadVariableOp2`
.low_rank_layer_2/Tensordot_12/ReadVariableOp_1.low_rank_layer_2/Tensordot_12/ReadVariableOp_12\
,low_rank_layer_2/Tensordot_13/ReadVariableOp,low_rank_layer_2/Tensordot_13/ReadVariableOp2`
.low_rank_layer_2/Tensordot_13/ReadVariableOp_1.low_rank_layer_2/Tensordot_13/ReadVariableOp_12\
,low_rank_layer_2/Tensordot_14/ReadVariableOp,low_rank_layer_2/Tensordot_14/ReadVariableOp2`
.low_rank_layer_2/Tensordot_14/ReadVariableOp_1.low_rank_layer_2/Tensordot_14/ReadVariableOp_12\
,low_rank_layer_2/Tensordot_15/ReadVariableOp,low_rank_layer_2/Tensordot_15/ReadVariableOp2`
.low_rank_layer_2/Tensordot_15/ReadVariableOp_1.low_rank_layer_2/Tensordot_15/ReadVariableOp_12\
,low_rank_layer_2/Tensordot_16/ReadVariableOp,low_rank_layer_2/Tensordot_16/ReadVariableOp2`
.low_rank_layer_2/Tensordot_16/ReadVariableOp_1.low_rank_layer_2/Tensordot_16/ReadVariableOp_12\
,low_rank_layer_2/Tensordot_17/ReadVariableOp,low_rank_layer_2/Tensordot_17/ReadVariableOp2`
.low_rank_layer_2/Tensordot_17/ReadVariableOp_1.low_rank_layer_2/Tensordot_17/ReadVariableOp_12\
,low_rank_layer_2/Tensordot_18/ReadVariableOp,low_rank_layer_2/Tensordot_18/ReadVariableOp2`
.low_rank_layer_2/Tensordot_18/ReadVariableOp_1.low_rank_layer_2/Tensordot_18/ReadVariableOp_12\
,low_rank_layer_2/Tensordot_19/ReadVariableOp,low_rank_layer_2/Tensordot_19/ReadVariableOp2`
.low_rank_layer_2/Tensordot_19/ReadVariableOp_1.low_rank_layer_2/Tensordot_19/ReadVariableOp_12Z
+low_rank_layer_2/Tensordot_2/ReadVariableOp+low_rank_layer_2/Tensordot_2/ReadVariableOp2^
-low_rank_layer_2/Tensordot_2/ReadVariableOp_1-low_rank_layer_2/Tensordot_2/ReadVariableOp_12\
,low_rank_layer_2/Tensordot_20/ReadVariableOp,low_rank_layer_2/Tensordot_20/ReadVariableOp2`
.low_rank_layer_2/Tensordot_20/ReadVariableOp_1.low_rank_layer_2/Tensordot_20/ReadVariableOp_12\
,low_rank_layer_2/Tensordot_21/ReadVariableOp,low_rank_layer_2/Tensordot_21/ReadVariableOp2`
.low_rank_layer_2/Tensordot_21/ReadVariableOp_1.low_rank_layer_2/Tensordot_21/ReadVariableOp_12\
,low_rank_layer_2/Tensordot_22/ReadVariableOp,low_rank_layer_2/Tensordot_22/ReadVariableOp2`
.low_rank_layer_2/Tensordot_22/ReadVariableOp_1.low_rank_layer_2/Tensordot_22/ReadVariableOp_12\
,low_rank_layer_2/Tensordot_23/ReadVariableOp,low_rank_layer_2/Tensordot_23/ReadVariableOp2`
.low_rank_layer_2/Tensordot_23/ReadVariableOp_1.low_rank_layer_2/Tensordot_23/ReadVariableOp_12\
,low_rank_layer_2/Tensordot_24/ReadVariableOp,low_rank_layer_2/Tensordot_24/ReadVariableOp2`
.low_rank_layer_2/Tensordot_24/ReadVariableOp_1.low_rank_layer_2/Tensordot_24/ReadVariableOp_12\
,low_rank_layer_2/Tensordot_25/ReadVariableOp,low_rank_layer_2/Tensordot_25/ReadVariableOp2`
.low_rank_layer_2/Tensordot_25/ReadVariableOp_1.low_rank_layer_2/Tensordot_25/ReadVariableOp_12\
,low_rank_layer_2/Tensordot_26/ReadVariableOp,low_rank_layer_2/Tensordot_26/ReadVariableOp2`
.low_rank_layer_2/Tensordot_26/ReadVariableOp_1.low_rank_layer_2/Tensordot_26/ReadVariableOp_12\
,low_rank_layer_2/Tensordot_27/ReadVariableOp,low_rank_layer_2/Tensordot_27/ReadVariableOp2`
.low_rank_layer_2/Tensordot_27/ReadVariableOp_1.low_rank_layer_2/Tensordot_27/ReadVariableOp_12\
,low_rank_layer_2/Tensordot_28/ReadVariableOp,low_rank_layer_2/Tensordot_28/ReadVariableOp2`
.low_rank_layer_2/Tensordot_28/ReadVariableOp_1.low_rank_layer_2/Tensordot_28/ReadVariableOp_12\
,low_rank_layer_2/Tensordot_29/ReadVariableOp,low_rank_layer_2/Tensordot_29/ReadVariableOp2`
.low_rank_layer_2/Tensordot_29/ReadVariableOp_1.low_rank_layer_2/Tensordot_29/ReadVariableOp_12Z
+low_rank_layer_2/Tensordot_3/ReadVariableOp+low_rank_layer_2/Tensordot_3/ReadVariableOp2^
-low_rank_layer_2/Tensordot_3/ReadVariableOp_1-low_rank_layer_2/Tensordot_3/ReadVariableOp_12\
,low_rank_layer_2/Tensordot_30/ReadVariableOp,low_rank_layer_2/Tensordot_30/ReadVariableOp2`
.low_rank_layer_2/Tensordot_30/ReadVariableOp_1.low_rank_layer_2/Tensordot_30/ReadVariableOp_12\
,low_rank_layer_2/Tensordot_31/ReadVariableOp,low_rank_layer_2/Tensordot_31/ReadVariableOp2`
.low_rank_layer_2/Tensordot_31/ReadVariableOp_1.low_rank_layer_2/Tensordot_31/ReadVariableOp_12Z
+low_rank_layer_2/Tensordot_4/ReadVariableOp+low_rank_layer_2/Tensordot_4/ReadVariableOp2^
-low_rank_layer_2/Tensordot_4/ReadVariableOp_1-low_rank_layer_2/Tensordot_4/ReadVariableOp_12Z
+low_rank_layer_2/Tensordot_5/ReadVariableOp+low_rank_layer_2/Tensordot_5/ReadVariableOp2^
-low_rank_layer_2/Tensordot_5/ReadVariableOp_1-low_rank_layer_2/Tensordot_5/ReadVariableOp_12Z
+low_rank_layer_2/Tensordot_6/ReadVariableOp+low_rank_layer_2/Tensordot_6/ReadVariableOp2^
-low_rank_layer_2/Tensordot_6/ReadVariableOp_1-low_rank_layer_2/Tensordot_6/ReadVariableOp_12Z
+low_rank_layer_2/Tensordot_7/ReadVariableOp+low_rank_layer_2/Tensordot_7/ReadVariableOp2^
-low_rank_layer_2/Tensordot_7/ReadVariableOp_1-low_rank_layer_2/Tensordot_7/ReadVariableOp_12Z
+low_rank_layer_2/Tensordot_8/ReadVariableOp+low_rank_layer_2/Tensordot_8/ReadVariableOp2^
-low_rank_layer_2/Tensordot_8/ReadVariableOp_1-low_rank_layer_2/Tensordot_8/ReadVariableOp_12Z
+low_rank_layer_2/Tensordot_9/ReadVariableOp+low_rank_layer_2/Tensordot_9/ReadVariableOp2^
-low_rank_layer_2/Tensordot_9/ReadVariableOp_1-low_rank_layer_2/Tensordot_9/ReadVariableOp_1:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ñ
 
+__inference_conv2d_10_layer_call_fn_4832268

inputs!
unknown:
	unknown_0:
identity¢StatefulPartitionedCallæ
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
GPU2*0J 8 *O
fJRH
F__inference_conv2d_10_layer_call_and_return_conditional_losses_4829178w
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
¨
G
+__inference_dropout_3_layer_call_fn_4832325

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
F__inference_dropout_3_layer_call_and_return_conditional_losses_4829215a
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
´

.__inference_sequential_3_layer_call_fn_4829382
input_4!
unknown:
	unknown_0:
	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:	
	unknown_5:	
	unknown_6:	
	unknown_7:	
	unknown_8:	
	unknown_9:	

unknown_10:	

unknown_11:	

unknown_12:	

unknown_13:	

unknown_14:	

unknown_15:	

unknown_16:	

unknown_17:	

unknown_18:	

unknown_19:	

unknown_20:	

unknown_21:	

unknown_22:	

unknown_23:	

unknown_24:	

unknown_25:	

unknown_26:	

unknown_27:	

unknown_28:	

unknown_29:	

unknown_30:	

unknown_31:	

unknown_32:	

unknown_33:	

unknown_34:	

unknown_35:	

unknown_36:	

unknown_37:	

unknown_38:	

unknown_39:	

unknown_40:	

unknown_41:	

unknown_42:	

unknown_43:	

unknown_44:	

unknown_45:	

unknown_46:	

unknown_47:	

unknown_48:	

unknown_49:	

unknown_50:	

unknown_51:	

unknown_52:	

unknown_53:	

unknown_54:	

unknown_55:	

unknown_56:	

unknown_57:	

unknown_58:	

unknown_59:	

unknown_60:	

unknown_61:	

unknown_62:	

unknown_63:	

unknown_64:	$

unknown_65:

unknown_66:$

unknown_67:

unknown_68:

unknown_69:	


unknown_70:

identity¢StatefulPartitionedCall­

StatefulPartitionedCallStatefulPartitionedCallinput_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60
unknown_61
unknown_62
unknown_63
unknown_64
unknown_65
unknown_66
unknown_67
unknown_68
unknown_69
unknown_70*T
TinM
K2I*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*j
_read_only_resource_inputsL
JH	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGH*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_sequential_3_layer_call_and_return_conditional_losses_4829235o
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
_construction_contextkEagerRuntime*À
_input_shapes®
«:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_4
È

)__inference_dense_3_layer_call_fn_4832356

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
D__inference_dense_3_layer_call_and_return_conditional_losses_4829228o
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
òQ
¯
I__inference_sequential_3_layer_call_and_return_conditional_losses_4829907

inputs*
conv2d_9_4829751:
conv2d_9_4829753:'
low_rank_layer_2_4829757:	'
low_rank_layer_2_4829759:	'
low_rank_layer_2_4829761:	'
low_rank_layer_2_4829763:	'
low_rank_layer_2_4829765:	'
low_rank_layer_2_4829767:	'
low_rank_layer_2_4829769:	'
low_rank_layer_2_4829771:	'
low_rank_layer_2_4829773:	'
low_rank_layer_2_4829775:	'
low_rank_layer_2_4829777:	'
low_rank_layer_2_4829779:	'
low_rank_layer_2_4829781:	'
low_rank_layer_2_4829783:	'
low_rank_layer_2_4829785:	'
low_rank_layer_2_4829787:	'
low_rank_layer_2_4829789:	'
low_rank_layer_2_4829791:	'
low_rank_layer_2_4829793:	'
low_rank_layer_2_4829795:	'
low_rank_layer_2_4829797:	'
low_rank_layer_2_4829799:	'
low_rank_layer_2_4829801:	'
low_rank_layer_2_4829803:	'
low_rank_layer_2_4829805:	'
low_rank_layer_2_4829807:	'
low_rank_layer_2_4829809:	'
low_rank_layer_2_4829811:	'
low_rank_layer_2_4829813:	'
low_rank_layer_2_4829815:	'
low_rank_layer_2_4829817:	'
low_rank_layer_2_4829819:	'
low_rank_layer_2_4829821:	'
low_rank_layer_2_4829823:	'
low_rank_layer_2_4829825:	'
low_rank_layer_2_4829827:	'
low_rank_layer_2_4829829:	'
low_rank_layer_2_4829831:	'
low_rank_layer_2_4829833:	'
low_rank_layer_2_4829835:	'
low_rank_layer_2_4829837:	'
low_rank_layer_2_4829839:	'
low_rank_layer_2_4829841:	'
low_rank_layer_2_4829843:	'
low_rank_layer_2_4829845:	'
low_rank_layer_2_4829847:	'
low_rank_layer_2_4829849:	'
low_rank_layer_2_4829851:	'
low_rank_layer_2_4829853:	'
low_rank_layer_2_4829855:	'
low_rank_layer_2_4829857:	'
low_rank_layer_2_4829859:	'
low_rank_layer_2_4829861:	'
low_rank_layer_2_4829863:	'
low_rank_layer_2_4829865:	'
low_rank_layer_2_4829867:	'
low_rank_layer_2_4829869:	'
low_rank_layer_2_4829871:	'
low_rank_layer_2_4829873:	'
low_rank_layer_2_4829875:	'
low_rank_layer_2_4829877:	'
low_rank_layer_2_4829879:	'
low_rank_layer_2_4829881:	'
low_rank_layer_2_4829883:	+
conv2d_10_4829888:
conv2d_10_4829890:+
conv2d_11_4829894:
conv2d_11_4829896:"
dense_3_4829901:	

dense_3_4829903:

identity¢!conv2d_10/StatefulPartitionedCall¢!conv2d_11/StatefulPartitionedCall¢ conv2d_9/StatefulPartitionedCall¢dense_3/StatefulPartitionedCall¢!dropout_3/StatefulPartitionedCall¢(low_rank_layer_2/StatefulPartitionedCallþ
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_9_4829751conv2d_9_4829753*
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
E__inference_conv2d_9_layer_call_and_return_conditional_losses_4828675æ
reshape_4/PartitionedCallPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_reshape_4_layer_call_and_return_conditional_losses_4828694ÿ
(low_rank_layer_2/StatefulPartitionedCallStatefulPartitionedCall"reshape_4/PartitionedCall:output:0low_rank_layer_2_4829757low_rank_layer_2_4829759low_rank_layer_2_4829761low_rank_layer_2_4829763low_rank_layer_2_4829765low_rank_layer_2_4829767low_rank_layer_2_4829769low_rank_layer_2_4829771low_rank_layer_2_4829773low_rank_layer_2_4829775low_rank_layer_2_4829777low_rank_layer_2_4829779low_rank_layer_2_4829781low_rank_layer_2_4829783low_rank_layer_2_4829785low_rank_layer_2_4829787low_rank_layer_2_4829789low_rank_layer_2_4829791low_rank_layer_2_4829793low_rank_layer_2_4829795low_rank_layer_2_4829797low_rank_layer_2_4829799low_rank_layer_2_4829801low_rank_layer_2_4829803low_rank_layer_2_4829805low_rank_layer_2_4829807low_rank_layer_2_4829809low_rank_layer_2_4829811low_rank_layer_2_4829813low_rank_layer_2_4829815low_rank_layer_2_4829817low_rank_layer_2_4829819low_rank_layer_2_4829821low_rank_layer_2_4829823low_rank_layer_2_4829825low_rank_layer_2_4829827low_rank_layer_2_4829829low_rank_layer_2_4829831low_rank_layer_2_4829833low_rank_layer_2_4829835low_rank_layer_2_4829837low_rank_layer_2_4829839low_rank_layer_2_4829841low_rank_layer_2_4829843low_rank_layer_2_4829845low_rank_layer_2_4829847low_rank_layer_2_4829849low_rank_layer_2_4829851low_rank_layer_2_4829853low_rank_layer_2_4829855low_rank_layer_2_4829857low_rank_layer_2_4829859low_rank_layer_2_4829861low_rank_layer_2_4829863low_rank_layer_2_4829865low_rank_layer_2_4829867low_rank_layer_2_4829869low_rank_layer_2_4829871low_rank_layer_2_4829873low_rank_layer_2_4829875low_rank_layer_2_4829877low_rank_layer_2_4829879low_rank_layer_2_4829881low_rank_layer_2_4829883*L
TinE
C2A*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*b
_read_only_resource_inputsD
B@	
 !"#$%&'()*+,-./0123456789:;<=>?@*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_low_rank_layer_2_layer_call_and_return_conditional_losses_4829020ñ
reshape_5/PartitionedCallPartitionedCall1low_rank_layer_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_reshape_5_layer_call_and_return_conditional_losses_4829164î
max_pooling2d_6/PartitionedCallPartitionedCall"reshape_5/PartitionedCall:output:0*
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
L__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_4828642¤
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_6/PartitionedCall:output:0conv2d_10_4829888conv2d_10_4829890*
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
GPU2*0J 8 *O
fJRH
F__inference_conv2d_10_layer_call_and_return_conditional_losses_4829178ö
max_pooling2d_7/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
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
L__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_4828654¤
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_7/PartitionedCall:output:0conv2d_11_4829894conv2d_11_4829896*
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
GPU2*0J 8 *O
fJRH
F__inference_conv2d_11_layer_call_and_return_conditional_losses_4829196ã
flatten_3/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
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
F__inference_flatten_3_layer_call_and_return_conditional_losses_4829208ë
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0*
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
F__inference_dropout_3_layer_call_and_return_conditional_losses_4829412
dense_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0dense_3_4829901dense_3_4829903*
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
D__inference_dense_3_layer_call_and_return_conditional_losses_4829228w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¢
NoOpNoOp"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall)^low_rank_layer_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*À
_input_shapes®
«:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2T
(low_rank_layer_2/StatefulPartitionedCall(low_rank_layer_2/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ü
ü*
M__inference_low_rank_layer_2_layer_call_and_return_conditional_losses_4829020

inputs0
!tensordot_readvariableop_resource:	2
#tensordot_readvariableop_1_resource:	2
#tensordot_1_readvariableop_resource:	4
%tensordot_1_readvariableop_1_resource:	2
#tensordot_2_readvariableop_resource:	4
%tensordot_2_readvariableop_1_resource:	2
#tensordot_3_readvariableop_resource:	4
%tensordot_3_readvariableop_1_resource:	2
#tensordot_4_readvariableop_resource:	4
%tensordot_4_readvariableop_1_resource:	2
#tensordot_5_readvariableop_resource:	4
%tensordot_5_readvariableop_1_resource:	2
#tensordot_6_readvariableop_resource:	4
%tensordot_6_readvariableop_1_resource:	2
#tensordot_7_readvariableop_resource:	4
%tensordot_7_readvariableop_1_resource:	2
#tensordot_8_readvariableop_resource:	4
%tensordot_8_readvariableop_1_resource:	2
#tensordot_9_readvariableop_resource:	4
%tensordot_9_readvariableop_1_resource:	3
$tensordot_10_readvariableop_resource:	5
&tensordot_10_readvariableop_1_resource:	3
$tensordot_11_readvariableop_resource:	5
&tensordot_11_readvariableop_1_resource:	3
$tensordot_12_readvariableop_resource:	5
&tensordot_12_readvariableop_1_resource:	3
$tensordot_13_readvariableop_resource:	5
&tensordot_13_readvariableop_1_resource:	3
$tensordot_14_readvariableop_resource:	5
&tensordot_14_readvariableop_1_resource:	3
$tensordot_15_readvariableop_resource:	5
&tensordot_15_readvariableop_1_resource:	3
$tensordot_16_readvariableop_resource:	5
&tensordot_16_readvariableop_1_resource:	3
$tensordot_17_readvariableop_resource:	5
&tensordot_17_readvariableop_1_resource:	3
$tensordot_18_readvariableop_resource:	5
&tensordot_18_readvariableop_1_resource:	3
$tensordot_19_readvariableop_resource:	5
&tensordot_19_readvariableop_1_resource:	3
$tensordot_20_readvariableop_resource:	5
&tensordot_20_readvariableop_1_resource:	3
$tensordot_21_readvariableop_resource:	5
&tensordot_21_readvariableop_1_resource:	3
$tensordot_22_readvariableop_resource:	5
&tensordot_22_readvariableop_1_resource:	3
$tensordot_23_readvariableop_resource:	5
&tensordot_23_readvariableop_1_resource:	3
$tensordot_24_readvariableop_resource:	5
&tensordot_24_readvariableop_1_resource:	3
$tensordot_25_readvariableop_resource:	5
&tensordot_25_readvariableop_1_resource:	3
$tensordot_26_readvariableop_resource:	5
&tensordot_26_readvariableop_1_resource:	3
$tensordot_27_readvariableop_resource:	5
&tensordot_27_readvariableop_1_resource:	3
$tensordot_28_readvariableop_resource:	5
&tensordot_28_readvariableop_1_resource:	3
$tensordot_29_readvariableop_resource:	5
&tensordot_29_readvariableop_1_resource:	3
$tensordot_30_readvariableop_resource:	5
&tensordot_30_readvariableop_1_resource:	3
$tensordot_31_readvariableop_resource:	5
&tensordot_31_readvariableop_1_resource:	
identity¢Tensordot/ReadVariableOp¢Tensordot/ReadVariableOp_1¢Tensordot_1/ReadVariableOp¢Tensordot_1/ReadVariableOp_1¢Tensordot_10/ReadVariableOp¢Tensordot_10/ReadVariableOp_1¢Tensordot_11/ReadVariableOp¢Tensordot_11/ReadVariableOp_1¢Tensordot_12/ReadVariableOp¢Tensordot_12/ReadVariableOp_1¢Tensordot_13/ReadVariableOp¢Tensordot_13/ReadVariableOp_1¢Tensordot_14/ReadVariableOp¢Tensordot_14/ReadVariableOp_1¢Tensordot_15/ReadVariableOp¢Tensordot_15/ReadVariableOp_1¢Tensordot_16/ReadVariableOp¢Tensordot_16/ReadVariableOp_1¢Tensordot_17/ReadVariableOp¢Tensordot_17/ReadVariableOp_1¢Tensordot_18/ReadVariableOp¢Tensordot_18/ReadVariableOp_1¢Tensordot_19/ReadVariableOp¢Tensordot_19/ReadVariableOp_1¢Tensordot_2/ReadVariableOp¢Tensordot_2/ReadVariableOp_1¢Tensordot_20/ReadVariableOp¢Tensordot_20/ReadVariableOp_1¢Tensordot_21/ReadVariableOp¢Tensordot_21/ReadVariableOp_1¢Tensordot_22/ReadVariableOp¢Tensordot_22/ReadVariableOp_1¢Tensordot_23/ReadVariableOp¢Tensordot_23/ReadVariableOp_1¢Tensordot_24/ReadVariableOp¢Tensordot_24/ReadVariableOp_1¢Tensordot_25/ReadVariableOp¢Tensordot_25/ReadVariableOp_1¢Tensordot_26/ReadVariableOp¢Tensordot_26/ReadVariableOp_1¢Tensordot_27/ReadVariableOp¢Tensordot_27/ReadVariableOp_1¢Tensordot_28/ReadVariableOp¢Tensordot_28/ReadVariableOp_1¢Tensordot_29/ReadVariableOp¢Tensordot_29/ReadVariableOp_1¢Tensordot_3/ReadVariableOp¢Tensordot_3/ReadVariableOp_1¢Tensordot_30/ReadVariableOp¢Tensordot_30/ReadVariableOp_1¢Tensordot_31/ReadVariableOp¢Tensordot_31/ReadVariableOp_1¢Tensordot_4/ReadVariableOp¢Tensordot_4/ReadVariableOp_1¢Tensordot_5/ReadVariableOp¢Tensordot_5/ReadVariableOp_1¢Tensordot_6/ReadVariableOp¢Tensordot_6/ReadVariableOp_1¢Tensordot_7/ReadVariableOp¢Tensordot_7/ReadVariableOp_1¢Tensordot_8/ReadVariableOp¢Tensordot_8/ReadVariableOp_1¢Tensordot_9/ReadVariableOp¢Tensordot_9/ReadVariableOp_1w
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes	
:*
dtype0{
Tensordot/ReadVariableOp_1ReadVariableOp#tensordot_readvariableop_1_resource*
_output_shapes	
:*
dtype0h
Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot/ReshapeReshape Tensordot/ReadVariableOp:value:0 Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	j
Tensordot/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot/Reshape_1Reshape"Tensordot/ReadVariableOp_1:value:0"Tensordot/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot/MatMulMatMulTensordot/Reshape:output:0Tensordot/Reshape_1:output:0*
T0* 
_output_shapes
:
{
Tensordot_1/ReadVariableOpReadVariableOp#tensordot_1_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_1/ReadVariableOp_1ReadVariableOp%tensordot_1_readvariableop_1_resource*
_output_shapes	
:*
dtype0j
Tensordot_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_1/ReshapeReshape"Tensordot_1/ReadVariableOp:value:0"Tensordot_1/Reshape/shape:output:0*
T0*
_output_shapes
:	l
Tensordot_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_1/Reshape_1Reshape$Tensordot_1/ReadVariableOp_1:value:0$Tensordot_1/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_1/MatMulMatMulTensordot_1/Reshape:output:0Tensordot_1/Reshape_1:output:0*
T0* 
_output_shapes
:
q
addAddV2Tensordot/MatMul:product:0Tensordot_1/MatMul:product:0*
T0* 
_output_shapes
:
{
Tensordot_2/ReadVariableOpReadVariableOp#tensordot_2_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_2/ReadVariableOp_1ReadVariableOp%tensordot_2_readvariableop_1_resource*
_output_shapes	
:*
dtype0j
Tensordot_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_2/ReshapeReshape"Tensordot_2/ReadVariableOp:value:0"Tensordot_2/Reshape/shape:output:0*
T0*
_output_shapes
:	l
Tensordot_2/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_2/Reshape_1Reshape$Tensordot_2/ReadVariableOp_1:value:0$Tensordot_2/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_2/MatMulMatMulTensordot_2/Reshape:output:0Tensordot_2/Reshape_1:output:0*
T0* 
_output_shapes
:
`
add_1AddV2add:z:0Tensordot_2/MatMul:product:0*
T0* 
_output_shapes
:
{
Tensordot_3/ReadVariableOpReadVariableOp#tensordot_3_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_3/ReadVariableOp_1ReadVariableOp%tensordot_3_readvariableop_1_resource*
_output_shapes	
:*
dtype0j
Tensordot_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_3/ReshapeReshape"Tensordot_3/ReadVariableOp:value:0"Tensordot_3/Reshape/shape:output:0*
T0*
_output_shapes
:	l
Tensordot_3/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_3/Reshape_1Reshape$Tensordot_3/ReadVariableOp_1:value:0$Tensordot_3/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_3/MatMulMatMulTensordot_3/Reshape:output:0Tensordot_3/Reshape_1:output:0*
T0* 
_output_shapes
:
b
add_2AddV2	add_1:z:0Tensordot_3/MatMul:product:0*
T0* 
_output_shapes
:
{
Tensordot_4/ReadVariableOpReadVariableOp#tensordot_4_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_4/ReadVariableOp_1ReadVariableOp%tensordot_4_readvariableop_1_resource*
_output_shapes	
:*
dtype0j
Tensordot_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_4/ReshapeReshape"Tensordot_4/ReadVariableOp:value:0"Tensordot_4/Reshape/shape:output:0*
T0*
_output_shapes
:	l
Tensordot_4/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_4/Reshape_1Reshape$Tensordot_4/ReadVariableOp_1:value:0$Tensordot_4/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_4/MatMulMatMulTensordot_4/Reshape:output:0Tensordot_4/Reshape_1:output:0*
T0* 
_output_shapes
:
b
add_3AddV2	add_2:z:0Tensordot_4/MatMul:product:0*
T0* 
_output_shapes
:
{
Tensordot_5/ReadVariableOpReadVariableOp#tensordot_5_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_5/ReadVariableOp_1ReadVariableOp%tensordot_5_readvariableop_1_resource*
_output_shapes	
:*
dtype0j
Tensordot_5/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_5/ReshapeReshape"Tensordot_5/ReadVariableOp:value:0"Tensordot_5/Reshape/shape:output:0*
T0*
_output_shapes
:	l
Tensordot_5/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_5/Reshape_1Reshape$Tensordot_5/ReadVariableOp_1:value:0$Tensordot_5/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_5/MatMulMatMulTensordot_5/Reshape:output:0Tensordot_5/Reshape_1:output:0*
T0* 
_output_shapes
:
b
add_4AddV2	add_3:z:0Tensordot_5/MatMul:product:0*
T0* 
_output_shapes
:
{
Tensordot_6/ReadVariableOpReadVariableOp#tensordot_6_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_6/ReadVariableOp_1ReadVariableOp%tensordot_6_readvariableop_1_resource*
_output_shapes	
:*
dtype0j
Tensordot_6/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_6/ReshapeReshape"Tensordot_6/ReadVariableOp:value:0"Tensordot_6/Reshape/shape:output:0*
T0*
_output_shapes
:	l
Tensordot_6/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_6/Reshape_1Reshape$Tensordot_6/ReadVariableOp_1:value:0$Tensordot_6/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_6/MatMulMatMulTensordot_6/Reshape:output:0Tensordot_6/Reshape_1:output:0*
T0* 
_output_shapes
:
b
add_5AddV2	add_4:z:0Tensordot_6/MatMul:product:0*
T0* 
_output_shapes
:
{
Tensordot_7/ReadVariableOpReadVariableOp#tensordot_7_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_7/ReadVariableOp_1ReadVariableOp%tensordot_7_readvariableop_1_resource*
_output_shapes	
:*
dtype0j
Tensordot_7/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_7/ReshapeReshape"Tensordot_7/ReadVariableOp:value:0"Tensordot_7/Reshape/shape:output:0*
T0*
_output_shapes
:	l
Tensordot_7/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_7/Reshape_1Reshape$Tensordot_7/ReadVariableOp_1:value:0$Tensordot_7/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_7/MatMulMatMulTensordot_7/Reshape:output:0Tensordot_7/Reshape_1:output:0*
T0* 
_output_shapes
:
b
add_6AddV2	add_5:z:0Tensordot_7/MatMul:product:0*
T0* 
_output_shapes
:
{
Tensordot_8/ReadVariableOpReadVariableOp#tensordot_8_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_8/ReadVariableOp_1ReadVariableOp%tensordot_8_readvariableop_1_resource*
_output_shapes	
:*
dtype0j
Tensordot_8/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_8/ReshapeReshape"Tensordot_8/ReadVariableOp:value:0"Tensordot_8/Reshape/shape:output:0*
T0*
_output_shapes
:	l
Tensordot_8/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_8/Reshape_1Reshape$Tensordot_8/ReadVariableOp_1:value:0$Tensordot_8/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_8/MatMulMatMulTensordot_8/Reshape:output:0Tensordot_8/Reshape_1:output:0*
T0* 
_output_shapes
:
b
add_7AddV2	add_6:z:0Tensordot_8/MatMul:product:0*
T0* 
_output_shapes
:
{
Tensordot_9/ReadVariableOpReadVariableOp#tensordot_9_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_9/ReadVariableOp_1ReadVariableOp%tensordot_9_readvariableop_1_resource*
_output_shapes	
:*
dtype0j
Tensordot_9/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_9/ReshapeReshape"Tensordot_9/ReadVariableOp:value:0"Tensordot_9/Reshape/shape:output:0*
T0*
_output_shapes
:	l
Tensordot_9/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_9/Reshape_1Reshape$Tensordot_9/ReadVariableOp_1:value:0$Tensordot_9/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_9/MatMulMatMulTensordot_9/Reshape:output:0Tensordot_9/Reshape_1:output:0*
T0* 
_output_shapes
:
b
add_8AddV2	add_7:z:0Tensordot_9/MatMul:product:0*
T0* 
_output_shapes
:
}
Tensordot_10/ReadVariableOpReadVariableOp$tensordot_10_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_10/ReadVariableOp_1ReadVariableOp&tensordot_10_readvariableop_1_resource*
_output_shapes	
:*
dtype0k
Tensordot_10/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_10/ReshapeReshape#Tensordot_10/ReadVariableOp:value:0#Tensordot_10/Reshape/shape:output:0*
T0*
_output_shapes
:	m
Tensordot_10/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_10/Reshape_1Reshape%Tensordot_10/ReadVariableOp_1:value:0%Tensordot_10/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_10/MatMulMatMulTensordot_10/Reshape:output:0Tensordot_10/Reshape_1:output:0*
T0* 
_output_shapes
:
c
add_9AddV2	add_8:z:0Tensordot_10/MatMul:product:0*
T0* 
_output_shapes
:
}
Tensordot_11/ReadVariableOpReadVariableOp$tensordot_11_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_11/ReadVariableOp_1ReadVariableOp&tensordot_11_readvariableop_1_resource*
_output_shapes	
:*
dtype0k
Tensordot_11/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_11/ReshapeReshape#Tensordot_11/ReadVariableOp:value:0#Tensordot_11/Reshape/shape:output:0*
T0*
_output_shapes
:	m
Tensordot_11/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_11/Reshape_1Reshape%Tensordot_11/ReadVariableOp_1:value:0%Tensordot_11/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_11/MatMulMatMulTensordot_11/Reshape:output:0Tensordot_11/Reshape_1:output:0*
T0* 
_output_shapes
:
d
add_10AddV2	add_9:z:0Tensordot_11/MatMul:product:0*
T0* 
_output_shapes
:
}
Tensordot_12/ReadVariableOpReadVariableOp$tensordot_12_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_12/ReadVariableOp_1ReadVariableOp&tensordot_12_readvariableop_1_resource*
_output_shapes	
:*
dtype0k
Tensordot_12/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_12/ReshapeReshape#Tensordot_12/ReadVariableOp:value:0#Tensordot_12/Reshape/shape:output:0*
T0*
_output_shapes
:	m
Tensordot_12/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_12/Reshape_1Reshape%Tensordot_12/ReadVariableOp_1:value:0%Tensordot_12/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_12/MatMulMatMulTensordot_12/Reshape:output:0Tensordot_12/Reshape_1:output:0*
T0* 
_output_shapes
:
e
add_11AddV2
add_10:z:0Tensordot_12/MatMul:product:0*
T0* 
_output_shapes
:
}
Tensordot_13/ReadVariableOpReadVariableOp$tensordot_13_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_13/ReadVariableOp_1ReadVariableOp&tensordot_13_readvariableop_1_resource*
_output_shapes	
:*
dtype0k
Tensordot_13/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_13/ReshapeReshape#Tensordot_13/ReadVariableOp:value:0#Tensordot_13/Reshape/shape:output:0*
T0*
_output_shapes
:	m
Tensordot_13/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_13/Reshape_1Reshape%Tensordot_13/ReadVariableOp_1:value:0%Tensordot_13/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_13/MatMulMatMulTensordot_13/Reshape:output:0Tensordot_13/Reshape_1:output:0*
T0* 
_output_shapes
:
e
add_12AddV2
add_11:z:0Tensordot_13/MatMul:product:0*
T0* 
_output_shapes
:
}
Tensordot_14/ReadVariableOpReadVariableOp$tensordot_14_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_14/ReadVariableOp_1ReadVariableOp&tensordot_14_readvariableop_1_resource*
_output_shapes	
:*
dtype0k
Tensordot_14/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_14/ReshapeReshape#Tensordot_14/ReadVariableOp:value:0#Tensordot_14/Reshape/shape:output:0*
T0*
_output_shapes
:	m
Tensordot_14/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_14/Reshape_1Reshape%Tensordot_14/ReadVariableOp_1:value:0%Tensordot_14/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_14/MatMulMatMulTensordot_14/Reshape:output:0Tensordot_14/Reshape_1:output:0*
T0* 
_output_shapes
:
e
add_13AddV2
add_12:z:0Tensordot_14/MatMul:product:0*
T0* 
_output_shapes
:
}
Tensordot_15/ReadVariableOpReadVariableOp$tensordot_15_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_15/ReadVariableOp_1ReadVariableOp&tensordot_15_readvariableop_1_resource*
_output_shapes	
:*
dtype0k
Tensordot_15/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_15/ReshapeReshape#Tensordot_15/ReadVariableOp:value:0#Tensordot_15/Reshape/shape:output:0*
T0*
_output_shapes
:	m
Tensordot_15/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_15/Reshape_1Reshape%Tensordot_15/ReadVariableOp_1:value:0%Tensordot_15/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_15/MatMulMatMulTensordot_15/Reshape:output:0Tensordot_15/Reshape_1:output:0*
T0* 
_output_shapes
:
e
add_14AddV2
add_13:z:0Tensordot_15/MatMul:product:0*
T0* 
_output_shapes
:
}
Tensordot_16/ReadVariableOpReadVariableOp$tensordot_16_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_16/ReadVariableOp_1ReadVariableOp&tensordot_16_readvariableop_1_resource*
_output_shapes	
:*
dtype0k
Tensordot_16/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_16/ReshapeReshape#Tensordot_16/ReadVariableOp:value:0#Tensordot_16/Reshape/shape:output:0*
T0*
_output_shapes
:	m
Tensordot_16/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_16/Reshape_1Reshape%Tensordot_16/ReadVariableOp_1:value:0%Tensordot_16/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_16/MatMulMatMulTensordot_16/Reshape:output:0Tensordot_16/Reshape_1:output:0*
T0* 
_output_shapes
:
e
add_15AddV2
add_14:z:0Tensordot_16/MatMul:product:0*
T0* 
_output_shapes
:
}
Tensordot_17/ReadVariableOpReadVariableOp$tensordot_17_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_17/ReadVariableOp_1ReadVariableOp&tensordot_17_readvariableop_1_resource*
_output_shapes	
:*
dtype0k
Tensordot_17/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_17/ReshapeReshape#Tensordot_17/ReadVariableOp:value:0#Tensordot_17/Reshape/shape:output:0*
T0*
_output_shapes
:	m
Tensordot_17/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_17/Reshape_1Reshape%Tensordot_17/ReadVariableOp_1:value:0%Tensordot_17/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_17/MatMulMatMulTensordot_17/Reshape:output:0Tensordot_17/Reshape_1:output:0*
T0* 
_output_shapes
:
e
add_16AddV2
add_15:z:0Tensordot_17/MatMul:product:0*
T0* 
_output_shapes
:
}
Tensordot_18/ReadVariableOpReadVariableOp$tensordot_18_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_18/ReadVariableOp_1ReadVariableOp&tensordot_18_readvariableop_1_resource*
_output_shapes	
:*
dtype0k
Tensordot_18/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_18/ReshapeReshape#Tensordot_18/ReadVariableOp:value:0#Tensordot_18/Reshape/shape:output:0*
T0*
_output_shapes
:	m
Tensordot_18/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_18/Reshape_1Reshape%Tensordot_18/ReadVariableOp_1:value:0%Tensordot_18/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_18/MatMulMatMulTensordot_18/Reshape:output:0Tensordot_18/Reshape_1:output:0*
T0* 
_output_shapes
:
e
add_17AddV2
add_16:z:0Tensordot_18/MatMul:product:0*
T0* 
_output_shapes
:
}
Tensordot_19/ReadVariableOpReadVariableOp$tensordot_19_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_19/ReadVariableOp_1ReadVariableOp&tensordot_19_readvariableop_1_resource*
_output_shapes	
:*
dtype0k
Tensordot_19/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_19/ReshapeReshape#Tensordot_19/ReadVariableOp:value:0#Tensordot_19/Reshape/shape:output:0*
T0*
_output_shapes
:	m
Tensordot_19/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_19/Reshape_1Reshape%Tensordot_19/ReadVariableOp_1:value:0%Tensordot_19/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_19/MatMulMatMulTensordot_19/Reshape:output:0Tensordot_19/Reshape_1:output:0*
T0* 
_output_shapes
:
e
add_18AddV2
add_17:z:0Tensordot_19/MatMul:product:0*
T0* 
_output_shapes
:
}
Tensordot_20/ReadVariableOpReadVariableOp$tensordot_20_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_20/ReadVariableOp_1ReadVariableOp&tensordot_20_readvariableop_1_resource*
_output_shapes	
:*
dtype0k
Tensordot_20/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_20/ReshapeReshape#Tensordot_20/ReadVariableOp:value:0#Tensordot_20/Reshape/shape:output:0*
T0*
_output_shapes
:	m
Tensordot_20/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_20/Reshape_1Reshape%Tensordot_20/ReadVariableOp_1:value:0%Tensordot_20/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_20/MatMulMatMulTensordot_20/Reshape:output:0Tensordot_20/Reshape_1:output:0*
T0* 
_output_shapes
:
e
add_19AddV2
add_18:z:0Tensordot_20/MatMul:product:0*
T0* 
_output_shapes
:
}
Tensordot_21/ReadVariableOpReadVariableOp$tensordot_21_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_21/ReadVariableOp_1ReadVariableOp&tensordot_21_readvariableop_1_resource*
_output_shapes	
:*
dtype0k
Tensordot_21/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_21/ReshapeReshape#Tensordot_21/ReadVariableOp:value:0#Tensordot_21/Reshape/shape:output:0*
T0*
_output_shapes
:	m
Tensordot_21/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_21/Reshape_1Reshape%Tensordot_21/ReadVariableOp_1:value:0%Tensordot_21/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_21/MatMulMatMulTensordot_21/Reshape:output:0Tensordot_21/Reshape_1:output:0*
T0* 
_output_shapes
:
e
add_20AddV2
add_19:z:0Tensordot_21/MatMul:product:0*
T0* 
_output_shapes
:
}
Tensordot_22/ReadVariableOpReadVariableOp$tensordot_22_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_22/ReadVariableOp_1ReadVariableOp&tensordot_22_readvariableop_1_resource*
_output_shapes	
:*
dtype0k
Tensordot_22/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_22/ReshapeReshape#Tensordot_22/ReadVariableOp:value:0#Tensordot_22/Reshape/shape:output:0*
T0*
_output_shapes
:	m
Tensordot_22/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_22/Reshape_1Reshape%Tensordot_22/ReadVariableOp_1:value:0%Tensordot_22/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_22/MatMulMatMulTensordot_22/Reshape:output:0Tensordot_22/Reshape_1:output:0*
T0* 
_output_shapes
:
e
add_21AddV2
add_20:z:0Tensordot_22/MatMul:product:0*
T0* 
_output_shapes
:
}
Tensordot_23/ReadVariableOpReadVariableOp$tensordot_23_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_23/ReadVariableOp_1ReadVariableOp&tensordot_23_readvariableop_1_resource*
_output_shapes	
:*
dtype0k
Tensordot_23/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_23/ReshapeReshape#Tensordot_23/ReadVariableOp:value:0#Tensordot_23/Reshape/shape:output:0*
T0*
_output_shapes
:	m
Tensordot_23/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_23/Reshape_1Reshape%Tensordot_23/ReadVariableOp_1:value:0%Tensordot_23/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_23/MatMulMatMulTensordot_23/Reshape:output:0Tensordot_23/Reshape_1:output:0*
T0* 
_output_shapes
:
e
add_22AddV2
add_21:z:0Tensordot_23/MatMul:product:0*
T0* 
_output_shapes
:
}
Tensordot_24/ReadVariableOpReadVariableOp$tensordot_24_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_24/ReadVariableOp_1ReadVariableOp&tensordot_24_readvariableop_1_resource*
_output_shapes	
:*
dtype0k
Tensordot_24/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_24/ReshapeReshape#Tensordot_24/ReadVariableOp:value:0#Tensordot_24/Reshape/shape:output:0*
T0*
_output_shapes
:	m
Tensordot_24/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_24/Reshape_1Reshape%Tensordot_24/ReadVariableOp_1:value:0%Tensordot_24/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_24/MatMulMatMulTensordot_24/Reshape:output:0Tensordot_24/Reshape_1:output:0*
T0* 
_output_shapes
:
e
add_23AddV2
add_22:z:0Tensordot_24/MatMul:product:0*
T0* 
_output_shapes
:
}
Tensordot_25/ReadVariableOpReadVariableOp$tensordot_25_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_25/ReadVariableOp_1ReadVariableOp&tensordot_25_readvariableop_1_resource*
_output_shapes	
:*
dtype0k
Tensordot_25/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_25/ReshapeReshape#Tensordot_25/ReadVariableOp:value:0#Tensordot_25/Reshape/shape:output:0*
T0*
_output_shapes
:	m
Tensordot_25/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_25/Reshape_1Reshape%Tensordot_25/ReadVariableOp_1:value:0%Tensordot_25/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_25/MatMulMatMulTensordot_25/Reshape:output:0Tensordot_25/Reshape_1:output:0*
T0* 
_output_shapes
:
e
add_24AddV2
add_23:z:0Tensordot_25/MatMul:product:0*
T0* 
_output_shapes
:
}
Tensordot_26/ReadVariableOpReadVariableOp$tensordot_26_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_26/ReadVariableOp_1ReadVariableOp&tensordot_26_readvariableop_1_resource*
_output_shapes	
:*
dtype0k
Tensordot_26/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_26/ReshapeReshape#Tensordot_26/ReadVariableOp:value:0#Tensordot_26/Reshape/shape:output:0*
T0*
_output_shapes
:	m
Tensordot_26/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_26/Reshape_1Reshape%Tensordot_26/ReadVariableOp_1:value:0%Tensordot_26/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_26/MatMulMatMulTensordot_26/Reshape:output:0Tensordot_26/Reshape_1:output:0*
T0* 
_output_shapes
:
e
add_25AddV2
add_24:z:0Tensordot_26/MatMul:product:0*
T0* 
_output_shapes
:
}
Tensordot_27/ReadVariableOpReadVariableOp$tensordot_27_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_27/ReadVariableOp_1ReadVariableOp&tensordot_27_readvariableop_1_resource*
_output_shapes	
:*
dtype0k
Tensordot_27/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_27/ReshapeReshape#Tensordot_27/ReadVariableOp:value:0#Tensordot_27/Reshape/shape:output:0*
T0*
_output_shapes
:	m
Tensordot_27/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_27/Reshape_1Reshape%Tensordot_27/ReadVariableOp_1:value:0%Tensordot_27/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_27/MatMulMatMulTensordot_27/Reshape:output:0Tensordot_27/Reshape_1:output:0*
T0* 
_output_shapes
:
e
add_26AddV2
add_25:z:0Tensordot_27/MatMul:product:0*
T0* 
_output_shapes
:
}
Tensordot_28/ReadVariableOpReadVariableOp$tensordot_28_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_28/ReadVariableOp_1ReadVariableOp&tensordot_28_readvariableop_1_resource*
_output_shapes	
:*
dtype0k
Tensordot_28/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_28/ReshapeReshape#Tensordot_28/ReadVariableOp:value:0#Tensordot_28/Reshape/shape:output:0*
T0*
_output_shapes
:	m
Tensordot_28/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_28/Reshape_1Reshape%Tensordot_28/ReadVariableOp_1:value:0%Tensordot_28/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_28/MatMulMatMulTensordot_28/Reshape:output:0Tensordot_28/Reshape_1:output:0*
T0* 
_output_shapes
:
e
add_27AddV2
add_26:z:0Tensordot_28/MatMul:product:0*
T0* 
_output_shapes
:
}
Tensordot_29/ReadVariableOpReadVariableOp$tensordot_29_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_29/ReadVariableOp_1ReadVariableOp&tensordot_29_readvariableop_1_resource*
_output_shapes	
:*
dtype0k
Tensordot_29/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_29/ReshapeReshape#Tensordot_29/ReadVariableOp:value:0#Tensordot_29/Reshape/shape:output:0*
T0*
_output_shapes
:	m
Tensordot_29/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_29/Reshape_1Reshape%Tensordot_29/ReadVariableOp_1:value:0%Tensordot_29/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_29/MatMulMatMulTensordot_29/Reshape:output:0Tensordot_29/Reshape_1:output:0*
T0* 
_output_shapes
:
e
add_28AddV2
add_27:z:0Tensordot_29/MatMul:product:0*
T0* 
_output_shapes
:
}
Tensordot_30/ReadVariableOpReadVariableOp$tensordot_30_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_30/ReadVariableOp_1ReadVariableOp&tensordot_30_readvariableop_1_resource*
_output_shapes	
:*
dtype0k
Tensordot_30/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_30/ReshapeReshape#Tensordot_30/ReadVariableOp:value:0#Tensordot_30/Reshape/shape:output:0*
T0*
_output_shapes
:	m
Tensordot_30/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_30/Reshape_1Reshape%Tensordot_30/ReadVariableOp_1:value:0%Tensordot_30/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_30/MatMulMatMulTensordot_30/Reshape:output:0Tensordot_30/Reshape_1:output:0*
T0* 
_output_shapes
:
e
add_29AddV2
add_28:z:0Tensordot_30/MatMul:product:0*
T0* 
_output_shapes
:
}
Tensordot_31/ReadVariableOpReadVariableOp$tensordot_31_readvariableop_resource*
_output_shapes	
:*
dtype0
Tensordot_31/ReadVariableOp_1ReadVariableOp&tensordot_31_readvariableop_1_resource*
_output_shapes	
:*
dtype0k
Tensordot_31/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
     
Tensordot_31/ReshapeReshape#Tensordot_31/ReadVariableOp:value:0#Tensordot_31/Reshape/shape:output:0*
T0*
_output_shapes
:	m
Tensordot_31/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
  
Tensordot_31/Reshape_1Reshape%Tensordot_31/ReadVariableOp_1:value:0%Tensordot_31/Reshape_1/shape:output:0*
T0*
_output_shapes
:	
Tensordot_31/MatMulMatMulTensordot_31/Reshape:output:0Tensordot_31/Reshape_1:output:0*
T0* 
_output_shapes
:
e
add_30AddV2
add_29:z:0Tensordot_31/MatMul:product:0*
T0* 
_output_shapes
:
b
matmulBatchMatMulV2
add_30:z:0inputs*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
IdentityIdentitymatmul:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿî
NoOpNoOp^Tensordot/ReadVariableOp^Tensordot/ReadVariableOp_1^Tensordot_1/ReadVariableOp^Tensordot_1/ReadVariableOp_1^Tensordot_10/ReadVariableOp^Tensordot_10/ReadVariableOp_1^Tensordot_11/ReadVariableOp^Tensordot_11/ReadVariableOp_1^Tensordot_12/ReadVariableOp^Tensordot_12/ReadVariableOp_1^Tensordot_13/ReadVariableOp^Tensordot_13/ReadVariableOp_1^Tensordot_14/ReadVariableOp^Tensordot_14/ReadVariableOp_1^Tensordot_15/ReadVariableOp^Tensordot_15/ReadVariableOp_1^Tensordot_16/ReadVariableOp^Tensordot_16/ReadVariableOp_1^Tensordot_17/ReadVariableOp^Tensordot_17/ReadVariableOp_1^Tensordot_18/ReadVariableOp^Tensordot_18/ReadVariableOp_1^Tensordot_19/ReadVariableOp^Tensordot_19/ReadVariableOp_1^Tensordot_2/ReadVariableOp^Tensordot_2/ReadVariableOp_1^Tensordot_20/ReadVariableOp^Tensordot_20/ReadVariableOp_1^Tensordot_21/ReadVariableOp^Tensordot_21/ReadVariableOp_1^Tensordot_22/ReadVariableOp^Tensordot_22/ReadVariableOp_1^Tensordot_23/ReadVariableOp^Tensordot_23/ReadVariableOp_1^Tensordot_24/ReadVariableOp^Tensordot_24/ReadVariableOp_1^Tensordot_25/ReadVariableOp^Tensordot_25/ReadVariableOp_1^Tensordot_26/ReadVariableOp^Tensordot_26/ReadVariableOp_1^Tensordot_27/ReadVariableOp^Tensordot_27/ReadVariableOp_1^Tensordot_28/ReadVariableOp^Tensordot_28/ReadVariableOp_1^Tensordot_29/ReadVariableOp^Tensordot_29/ReadVariableOp_1^Tensordot_3/ReadVariableOp^Tensordot_3/ReadVariableOp_1^Tensordot_30/ReadVariableOp^Tensordot_30/ReadVariableOp_1^Tensordot_31/ReadVariableOp^Tensordot_31/ReadVariableOp_1^Tensordot_4/ReadVariableOp^Tensordot_4/ReadVariableOp_1^Tensordot_5/ReadVariableOp^Tensordot_5/ReadVariableOp_1^Tensordot_6/ReadVariableOp^Tensordot_6/ReadVariableOp_1^Tensordot_7/ReadVariableOp^Tensordot_7/ReadVariableOp_1^Tensordot_8/ReadVariableOp^Tensordot_8/ReadVariableOp_1^Tensordot_9/ReadVariableOp^Tensordot_9/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*­
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 24
Tensordot/ReadVariableOpTensordot/ReadVariableOp28
Tensordot/ReadVariableOp_1Tensordot/ReadVariableOp_128
Tensordot_1/ReadVariableOpTensordot_1/ReadVariableOp2<
Tensordot_1/ReadVariableOp_1Tensordot_1/ReadVariableOp_12:
Tensordot_10/ReadVariableOpTensordot_10/ReadVariableOp2>
Tensordot_10/ReadVariableOp_1Tensordot_10/ReadVariableOp_12:
Tensordot_11/ReadVariableOpTensordot_11/ReadVariableOp2>
Tensordot_11/ReadVariableOp_1Tensordot_11/ReadVariableOp_12:
Tensordot_12/ReadVariableOpTensordot_12/ReadVariableOp2>
Tensordot_12/ReadVariableOp_1Tensordot_12/ReadVariableOp_12:
Tensordot_13/ReadVariableOpTensordot_13/ReadVariableOp2>
Tensordot_13/ReadVariableOp_1Tensordot_13/ReadVariableOp_12:
Tensordot_14/ReadVariableOpTensordot_14/ReadVariableOp2>
Tensordot_14/ReadVariableOp_1Tensordot_14/ReadVariableOp_12:
Tensordot_15/ReadVariableOpTensordot_15/ReadVariableOp2>
Tensordot_15/ReadVariableOp_1Tensordot_15/ReadVariableOp_12:
Tensordot_16/ReadVariableOpTensordot_16/ReadVariableOp2>
Tensordot_16/ReadVariableOp_1Tensordot_16/ReadVariableOp_12:
Tensordot_17/ReadVariableOpTensordot_17/ReadVariableOp2>
Tensordot_17/ReadVariableOp_1Tensordot_17/ReadVariableOp_12:
Tensordot_18/ReadVariableOpTensordot_18/ReadVariableOp2>
Tensordot_18/ReadVariableOp_1Tensordot_18/ReadVariableOp_12:
Tensordot_19/ReadVariableOpTensordot_19/ReadVariableOp2>
Tensordot_19/ReadVariableOp_1Tensordot_19/ReadVariableOp_128
Tensordot_2/ReadVariableOpTensordot_2/ReadVariableOp2<
Tensordot_2/ReadVariableOp_1Tensordot_2/ReadVariableOp_12:
Tensordot_20/ReadVariableOpTensordot_20/ReadVariableOp2>
Tensordot_20/ReadVariableOp_1Tensordot_20/ReadVariableOp_12:
Tensordot_21/ReadVariableOpTensordot_21/ReadVariableOp2>
Tensordot_21/ReadVariableOp_1Tensordot_21/ReadVariableOp_12:
Tensordot_22/ReadVariableOpTensordot_22/ReadVariableOp2>
Tensordot_22/ReadVariableOp_1Tensordot_22/ReadVariableOp_12:
Tensordot_23/ReadVariableOpTensordot_23/ReadVariableOp2>
Tensordot_23/ReadVariableOp_1Tensordot_23/ReadVariableOp_12:
Tensordot_24/ReadVariableOpTensordot_24/ReadVariableOp2>
Tensordot_24/ReadVariableOp_1Tensordot_24/ReadVariableOp_12:
Tensordot_25/ReadVariableOpTensordot_25/ReadVariableOp2>
Tensordot_25/ReadVariableOp_1Tensordot_25/ReadVariableOp_12:
Tensordot_26/ReadVariableOpTensordot_26/ReadVariableOp2>
Tensordot_26/ReadVariableOp_1Tensordot_26/ReadVariableOp_12:
Tensordot_27/ReadVariableOpTensordot_27/ReadVariableOp2>
Tensordot_27/ReadVariableOp_1Tensordot_27/ReadVariableOp_12:
Tensordot_28/ReadVariableOpTensordot_28/ReadVariableOp2>
Tensordot_28/ReadVariableOp_1Tensordot_28/ReadVariableOp_12:
Tensordot_29/ReadVariableOpTensordot_29/ReadVariableOp2>
Tensordot_29/ReadVariableOp_1Tensordot_29/ReadVariableOp_128
Tensordot_3/ReadVariableOpTensordot_3/ReadVariableOp2<
Tensordot_3/ReadVariableOp_1Tensordot_3/ReadVariableOp_12:
Tensordot_30/ReadVariableOpTensordot_30/ReadVariableOp2>
Tensordot_30/ReadVariableOp_1Tensordot_30/ReadVariableOp_12:
Tensordot_31/ReadVariableOpTensordot_31/ReadVariableOp2>
Tensordot_31/ReadVariableOp_1Tensordot_31/ReadVariableOp_128
Tensordot_4/ReadVariableOpTensordot_4/ReadVariableOp2<
Tensordot_4/ReadVariableOp_1Tensordot_4/ReadVariableOp_128
Tensordot_5/ReadVariableOpTensordot_5/ReadVariableOp2<
Tensordot_5/ReadVariableOp_1Tensordot_5/ReadVariableOp_128
Tensordot_6/ReadVariableOpTensordot_6/ReadVariableOp2<
Tensordot_6/ReadVariableOp_1Tensordot_6/ReadVariableOp_128
Tensordot_7/ReadVariableOpTensordot_7/ReadVariableOp2<
Tensordot_7/ReadVariableOp_1Tensordot_7/ReadVariableOp_128
Tensordot_8/ReadVariableOpTensordot_8/ReadVariableOp2<
Tensordot_8/ReadVariableOp_1Tensordot_8/ReadVariableOp_128
Tensordot_9/ReadVariableOpTensordot_9/ReadVariableOp2<
Tensordot_9/ReadVariableOp_1Tensordot_9/ReadVariableOp_1:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ÿ
F__inference_conv2d_10_layer_call_and_return_conditional_losses_4829178

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
ï

*__inference_conv2d_9_layer_call_fn_4831744

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
E__inference_conv2d_9_layer_call_and_return_conditional_losses_4828675w
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
±

.__inference_sequential_3_layer_call_fn_4830976

inputs!
unknown:
	unknown_0:
	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:	
	unknown_5:	
	unknown_6:	
	unknown_7:	
	unknown_8:	
	unknown_9:	

unknown_10:	

unknown_11:	

unknown_12:	

unknown_13:	

unknown_14:	

unknown_15:	

unknown_16:	

unknown_17:	

unknown_18:	

unknown_19:	

unknown_20:	

unknown_21:	

unknown_22:	

unknown_23:	

unknown_24:	

unknown_25:	

unknown_26:	

unknown_27:	

unknown_28:	

unknown_29:	

unknown_30:	

unknown_31:	

unknown_32:	

unknown_33:	

unknown_34:	

unknown_35:	

unknown_36:	

unknown_37:	

unknown_38:	

unknown_39:	

unknown_40:	

unknown_41:	

unknown_42:	

unknown_43:	

unknown_44:	

unknown_45:	

unknown_46:	

unknown_47:	

unknown_48:	

unknown_49:	

unknown_50:	

unknown_51:	

unknown_52:	

unknown_53:	

unknown_54:	

unknown_55:	

unknown_56:	

unknown_57:	

unknown_58:	

unknown_59:	

unknown_60:	

unknown_61:	

unknown_62:	

unknown_63:	

unknown_64:	$

unknown_65:

unknown_66:$

unknown_67:

unknown_68:

unknown_69:	


unknown_70:

identity¢StatefulPartitionedCall¬

StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60
unknown_61
unknown_62
unknown_63
unknown_64
unknown_65
unknown_66
unknown_67
unknown_68
unknown_69
unknown_70*T
TinM
K2I*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*j
_read_only_resource_inputsL
JH	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGH*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_sequential_3_layer_call_and_return_conditional_losses_4829907o
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
_construction_contextkEagerRuntime*À
_input_shapes®
«:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ÿ
F__inference_conv2d_11_layer_call_and_return_conditional_losses_4832309

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
½
M
1__inference_max_pooling2d_7_layer_call_fn_4832284

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
L__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_4828654
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
±

.__inference_sequential_3_layer_call_fn_4830827

inputs!
unknown:
	unknown_0:
	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:	
	unknown_5:	
	unknown_6:	
	unknown_7:	
	unknown_8:	
	unknown_9:	

unknown_10:	

unknown_11:	

unknown_12:	

unknown_13:	

unknown_14:	

unknown_15:	

unknown_16:	

unknown_17:	

unknown_18:	

unknown_19:	

unknown_20:	

unknown_21:	

unknown_22:	

unknown_23:	

unknown_24:	

unknown_25:	

unknown_26:	

unknown_27:	

unknown_28:	

unknown_29:	

unknown_30:	

unknown_31:	

unknown_32:	

unknown_33:	

unknown_34:	

unknown_35:	

unknown_36:	

unknown_37:	

unknown_38:	

unknown_39:	

unknown_40:	

unknown_41:	

unknown_42:	

unknown_43:	

unknown_44:	

unknown_45:	

unknown_46:	

unknown_47:	

unknown_48:	

unknown_49:	

unknown_50:	

unknown_51:	

unknown_52:	

unknown_53:	

unknown_54:	

unknown_55:	

unknown_56:	

unknown_57:	

unknown_58:	

unknown_59:	

unknown_60:	

unknown_61:	

unknown_62:	

unknown_63:	

unknown_64:	$

unknown_65:

unknown_66:$

unknown_67:

unknown_68:

unknown_69:	


unknown_70:

identity¢StatefulPartitionedCall¬

StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60
unknown_61
unknown_62
unknown_63
unknown_64
unknown_65
unknown_66
unknown_67
unknown_68
unknown_69
unknown_70*T
TinM
K2I*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*j
_read_only_resource_inputsL
JH	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGH*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_sequential_3_layer_call_and_return_conditional_losses_4829235o
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
_construction_contextkEagerRuntime*À
_input_shapes®
«:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


%__inference_signature_wrapper_4830678
input_4!
unknown:
	unknown_0:
	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:	
	unknown_5:	
	unknown_6:	
	unknown_7:	
	unknown_8:	
	unknown_9:	

unknown_10:	

unknown_11:	

unknown_12:	

unknown_13:	

unknown_14:	

unknown_15:	

unknown_16:	

unknown_17:	

unknown_18:	

unknown_19:	

unknown_20:	

unknown_21:	

unknown_22:	

unknown_23:	

unknown_24:	

unknown_25:	

unknown_26:	

unknown_27:	

unknown_28:	

unknown_29:	

unknown_30:	

unknown_31:	

unknown_32:	

unknown_33:	

unknown_34:	

unknown_35:	

unknown_36:	

unknown_37:	

unknown_38:	

unknown_39:	

unknown_40:	

unknown_41:	

unknown_42:	

unknown_43:	

unknown_44:	

unknown_45:	

unknown_46:	

unknown_47:	

unknown_48:	

unknown_49:	

unknown_50:	

unknown_51:	

unknown_52:	

unknown_53:	

unknown_54:	

unknown_55:	

unknown_56:	

unknown_57:	

unknown_58:	

unknown_59:	

unknown_60:	

unknown_61:	

unknown_62:	

unknown_63:	

unknown_64:	$

unknown_65:

unknown_66:$

unknown_67:

unknown_68:

unknown_69:	


unknown_70:

identity¢StatefulPartitionedCall

StatefulPartitionedCallStatefulPartitionedCallinput_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60
unknown_61
unknown_62
unknown_63
unknown_64
unknown_65
unknown_66
unknown_67
unknown_68
unknown_69
unknown_70*T
TinM
K2I*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*j
_read_only_resource_inputsL
JH	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGH*0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__wrapped_model_4828633o
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
_construction_contextkEagerRuntime*À
_input_shapes®
«:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_4"µ	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*²
serving_default
C
input_48
serving_default_input_4:0ÿÿÿÿÿÿÿÿÿ;
dense_30
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿ
tensorflow/serving/predict:Äà
ø
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
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
¯	
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses
*	vectors_u
+	vectors_v
,	weightu_0
-	weightv_0
.	weightu_1
/	weightv_1
0	weightu_2
1	weightv_2
2	weightu_3
3	weightv_3
4	weightu_4
5	weightv_4
6	weightu_5
7	weightv_5
8	weightu_6
9	weightv_6
:	weightu_7
;	weightv_7
<	weightu_8
=	weightv_8
>	weightu_9
?	weightv_9
@
weightu_10
A
weightv_10
B
weightu_11
C
weightv_11
D
weightu_12
E
weightv_12
F
weightu_13
G
weightv_13
H
weightu_14
I
weightv_14
J
weightu_15
K
weightv_15
L
weightu_16
M
weightv_16
N
weightu_17
O
weightv_17
P
weightu_18
Q
weightv_18
R
weightu_19
S
weightv_19
T
weightu_20
U
weightv_20
V
weightu_21
W
weightv_21
X
weightu_22
Y
weightv_22
Z
weightu_23
[
weightv_23
\
weightu_24
]
weightv_24
^
weightu_25
_
weightv_25
`
weightu_26
a
weightv_26
b
weightu_27
c
weightv_27
d
weightu_28
e
weightv_28
f
weightu_29
g
weightv_29
h
weightu_30
i
weightv_30
j
weightu_31
k
weightv_31"
_tf_keras_layer
¥
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
p__call__
*q&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
r	variables
strainable_variables
tregularization_losses
u	keras_api
v__call__
*w&call_and_return_all_conditional_losses"
_tf_keras_layer
Þ
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
|__call__
*}&call_and_return_all_conditional_losses

~kernel
bias
!_jit_compiled_convolution_op"
_tf_keras_layer
«
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
æ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias
!_jit_compiled_convolution_op"
_tf_keras_layer
«
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_random_generator"
_tf_keras_layer
Ã
	variables
trainable_variables
regularization_losses
 	keras_api
¡__call__
+¢&call_and_return_all_conditional_losses
£kernel
	¤bias"
_tf_keras_layer
Ú
0
1
,2
-3
.4
/5
06
17
28
39
410
511
612
713
814
915
:16
;17
<18
=19
>20
?21
@22
A23
B24
C25
D26
E27
F28
G29
H30
I31
J32
K33
L34
M35
N36
O37
P38
Q39
R40
S41
T42
U43
V44
W45
X46
Y47
Z48
[49
\50
]51
^52
_53
`54
a55
b56
c57
d58
e59
f60
g61
h62
i63
j64
k65
~66
67
68
69
£70
¤71"
trackable_list_wrapper
Ú
0
1
,2
-3
.4
/5
06
17
28
39
410
511
612
713
814
915
:16
;17
<18
=19
>20
?21
@22
A23
B24
C25
D26
E27
F28
G29
H30
I31
J32
K33
L34
M35
N36
O37
P38
Q39
R40
S41
T42
U43
V44
W45
X46
Y47
Z48
[49
\50
]51
^52
_53
`54
a55
b56
c57
d58
e59
f60
g61
h62
i63
j64
k65
~66
67
68
69
£70
¤71"
trackable_list_wrapper
 "
trackable_list_wrapper
Ï
¥non_trainable_variables
¦layers
§metrics
 ¨layer_regularization_losses
©layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
õ
ªtrace_0
«trace_1
¬trace_2
­trace_32
.__inference_sequential_3_layer_call_fn_4829382
.__inference_sequential_3_layer_call_fn_4830827
.__inference_sequential_3_layer_call_fn_4830976
.__inference_sequential_3_layer_call_fn_4830203¿
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
 zªtrace_0z«trace_1z¬trace_2z­trace_3
á
®trace_0
¯trace_1
°trace_2
±trace_32î
I__inference_sequential_3_layer_call_and_return_conditional_losses_4831352
I__inference_sequential_3_layer_call_and_return_conditional_losses_4831735
I__inference_sequential_3_layer_call_and_return_conditional_losses_4830362
I__inference_sequential_3_layer_call_and_return_conditional_losses_4830521¿
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
 z®trace_0z¯trace_1z°trace_2z±trace_3
ÍBÊ
"__inference__wrapped_model_4828633input_4"
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

	²iter
³beta_1
´beta_2

µdecay
¶learning_ratemm,m-m.m/m0m1m2m3m4m5m6m7m8m 9m¡:m¢;m£<m¤=m¥>m¦?m§@m¨Am©BmªCm«Dm¬Em­Fm®Gm¯Hm°Im±Jm²Km³Lm´MmµNm¶Om·Pm¸Qm¹RmºSm»Tm¼Um½Vm¾Wm¿XmÀYmÁZmÂ[mÃ\mÄ]mÅ^mÆ_mÇ`mÈamÉbmÊcmËdmÌemÍfmÎgmÏhmÐimÑjmÒkmÓ~mÔmÕ	mÖ	m×	£mØ	¤mÙvÚvÛ,vÜ-vÝ.vÞ/vß0và1vá2vâ3vã4vä5vå6væ7vç8vè9vé:vê;vë<vì=ví>vî?vï@vðAvñBvòCvóDvôEvõFvöGv÷HvøIvùJvúKvûLvüMvýNvþOvÿPvQvRvSvTvUvVvWvXvYvZv[v\v]v^v_v`vavbvcvdvevfvgvhvivjvkv~vv	v	v	£v 	¤v¡"
	optimizer
-
·serving_default"
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
²
¸non_trainable_variables
¹layers
ºmetrics
 »layer_regularization_losses
¼layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ð
½trace_02Ñ
*__inference_conv2d_9_layer_call_fn_4831744¢
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
 z½trace_0

¾trace_02ì
E__inference_conv2d_9_layer_call_and_return_conditional_losses_4831755¢
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
 z¾trace_0
):'2conv2d_9/kernel
:2conv2d_9/bias
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
¿non_trainable_variables
Àlayers
Ámetrics
 Âlayer_regularization_losses
Ãlayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
ñ
Ätrace_02Ò
+__inference_reshape_4_layer_call_fn_4831760¢
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
 zÄtrace_0

Åtrace_02í
F__inference_reshape_4_layer_call_and_return_conditional_losses_4831773¢
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
 zÅtrace_0

,0
-1
.2
/3
04
15
26
37
48
59
610
711
812
913
:14
;15
<16
=17
>18
?19
@20
A21
B22
C23
D24
E25
F26
G27
H28
I29
J30
K31
L32
M33
N34
O35
P36
Q37
R38
S39
T40
U41
V42
W43
X44
Y45
Z46
[47
\48
]49
^50
_51
`52
a53
b54
c55
d56
e57
f58
g59
h60
i61
j62
k63"
trackable_list_wrapper

,0
-1
.2
/3
04
15
26
37
48
59
610
711
812
913
:14
;15
<16
=17
>18
?19
@20
A21
B22
C23
D24
E25
F26
G27
H28
I29
J30
K31
L32
M33
N34
O35
P36
Q37
R38
S39
T40
U41
V42
W43
X44
Y45
Z46
[47
\48
]49
^50
_51
`52
a53
b54
c55
d56
e57
f58
g59
h60
i61
j62
k63"
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ænon_trainable_variables
Çlayers
Èmetrics
 Élayer_regularization_losses
Êlayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
ø
Ëtrace_02Ù
2__inference_low_rank_layer_2_layer_call_fn_4831906¢
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
 zËtrace_0

Ìtrace_02ô
M__inference_low_rank_layer_2_layer_call_and_return_conditional_losses_4832230¢
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
 zÌtrace_0

,0
.1
02
23
44
65
86
:7
<8
>9
@10
B11
D12
F13
H14
J15
L16
N17
P18
R19
T20
V21
X22
Z23
\24
^25
`26
b27
d28
f29
h30
j31"
trackable_list_wrapper

-0
/1
12
33
54
75
96
;7
=8
?9
A10
C11
E12
G13
I14
K15
M16
O17
Q18
S19
U20
W21
Y22
[23
]24
_25
a26
c27
e28
g29
i30
k31"
trackable_list_wrapper
:2	weightu_0
:2	weightv_0
:2	weightu_1
:2	weightv_1
:2	weightu_2
:2	weightv_2
:2	weightu_3
:2	weightv_3
:2	weightu_4
:2	weightv_4
:2	weightu_5
:2	weightv_5
:2	weightu_6
:2	weightv_6
:2	weightu_7
:2	weightv_7
:2	weightu_8
:2	weightv_8
:2	weightu_9
:2	weightv_9
:2
weightu_10
:2
weightv_10
:2
weightu_11
:2
weightv_11
:2
weightu_12
:2
weightv_12
:2
weightu_13
:2
weightv_13
:2
weightu_14
:2
weightv_14
:2
weightu_15
:2
weightv_15
:2
weightu_16
:2
weightv_16
:2
weightu_17
:2
weightv_17
:2
weightu_18
:2
weightv_18
:2
weightu_19
:2
weightv_19
:2
weightu_20
:2
weightv_20
:2
weightu_21
:2
weightv_21
:2
weightu_22
:2
weightv_22
:2
weightu_23
:2
weightv_23
:2
weightu_24
:2
weightv_24
:2
weightu_25
:2
weightv_25
:2
weightu_26
:2
weightv_26
:2
weightu_27
:2
weightv_27
:2
weightu_28
:2
weightv_28
:2
weightu_29
:2
weightv_29
:2
weightu_30
:2
weightv_30
:2
weightu_31
:2
weightv_31
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ínon_trainable_variables
Îlayers
Ïmetrics
 Ðlayer_regularization_losses
Ñlayer_metrics
l	variables
mtrainable_variables
nregularization_losses
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses"
_generic_user_object
ñ
Òtrace_02Ò
+__inference_reshape_5_layer_call_fn_4832235¢
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
 zÒtrace_0

Ótrace_02í
F__inference_reshape_5_layer_call_and_return_conditional_losses_4832249¢
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
 zÓtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ônon_trainable_variables
Õlayers
Ömetrics
 ×layer_regularization_losses
Ølayer_metrics
r	variables
strainable_variables
tregularization_losses
v__call__
*w&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses"
_generic_user_object
÷
Ùtrace_02Ø
1__inference_max_pooling2d_6_layer_call_fn_4832254¢
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
 zÙtrace_0

Útrace_02ó
L__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_4832259¢
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
 zÚtrace_0
.
~0
1"
trackable_list_wrapper
.
~0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ûnon_trainable_variables
Ülayers
Ýmetrics
 Þlayer_regularization_losses
ßlayer_metrics
x	variables
ytrainable_variables
zregularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
ñ
àtrace_02Ò
+__inference_conv2d_10_layer_call_fn_4832268¢
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
 zàtrace_0

átrace_02í
F__inference_conv2d_10_layer_call_and_return_conditional_losses_4832279¢
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
 zátrace_0
*:(2conv2d_10/kernel
:2conv2d_10/bias
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
¸
ânon_trainable_variables
ãlayers
ämetrics
 ålayer_regularization_losses
ælayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
÷
çtrace_02Ø
1__inference_max_pooling2d_7_layer_call_fn_4832284¢
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
 zçtrace_0

ètrace_02ó
L__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_4832289¢
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
 zètrace_0
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
énon_trainable_variables
êlayers
ëmetrics
 ìlayer_regularization_losses
ílayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ñ
îtrace_02Ò
+__inference_conv2d_11_layer_call_fn_4832298¢
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
 zîtrace_0

ïtrace_02í
F__inference_conv2d_11_layer_call_and_return_conditional_losses_4832309¢
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
 zïtrace_0
*:(2conv2d_11/kernel
:2conv2d_11/bias
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
¸
ðnon_trainable_variables
ñlayers
òmetrics
 ólayer_regularization_losses
ôlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ñ
õtrace_02Ò
+__inference_flatten_3_layer_call_fn_4832314¢
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
 zõtrace_0

ötrace_02í
F__inference_flatten_3_layer_call_and_return_conditional_losses_4832320¢
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
 zötrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
÷non_trainable_variables
ølayers
ùmetrics
 úlayer_regularization_losses
ûlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Ë
ütrace_0
ýtrace_12
+__inference_dropout_3_layer_call_fn_4832325
+__inference_dropout_3_layer_call_fn_4832330³
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
 zütrace_0zýtrace_1

þtrace_0
ÿtrace_12Æ
F__inference_dropout_3_layer_call_and_return_conditional_losses_4832335
F__inference_dropout_3_layer_call_and_return_conditional_losses_4832347³
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
 zþtrace_0zÿtrace_1
"
_generic_user_object
0
£0
¤1"
trackable_list_wrapper
0
£0
¤1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
¡__call__
+¢&call_and_return_all_conditional_losses
'¢"call_and_return_conditional_losses"
_generic_user_object
ï
trace_02Ð
)__inference_dense_3_layer_call_fn_4832356¢
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
 ztrace_0

trace_02ë
D__inference_dense_3_layer_call_and_return_conditional_losses_4832367¢
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
 ztrace_0
!:	
2dense_3/kernel
:
2dense_3/bias
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
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
Bý
.__inference_sequential_3_layer_call_fn_4829382input_4"¿
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
.__inference_sequential_3_layer_call_fn_4830827inputs"¿
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
.__inference_sequential_3_layer_call_fn_4830976inputs"¿
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
.__inference_sequential_3_layer_call_fn_4830203input_4"¿
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
I__inference_sequential_3_layer_call_and_return_conditional_losses_4831352inputs"¿
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
I__inference_sequential_3_layer_call_and_return_conditional_losses_4831735inputs"¿
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
I__inference_sequential_3_layer_call_and_return_conditional_losses_4830362input_4"¿
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
I__inference_sequential_3_layer_call_and_return_conditional_losses_4830521input_4"¿
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
%__inference_signature_wrapper_4830678input_4"
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
ÞBÛ
*__inference_conv2d_9_layer_call_fn_4831744inputs"¢
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
E__inference_conv2d_9_layer_call_and_return_conditional_losses_4831755inputs"¢
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
+__inference_reshape_4_layer_call_fn_4831760inputs"¢
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
F__inference_reshape_4_layer_call_and_return_conditional_losses_4831773inputs"¢
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
2__inference_low_rank_layer_2_layer_call_fn_4831906inputs"¢
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
M__inference_low_rank_layer_2_layer_call_and_return_conditional_losses_4832230inputs"¢
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
+__inference_reshape_5_layer_call_fn_4832235inputs"¢
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
F__inference_reshape_5_layer_call_and_return_conditional_losses_4832249inputs"¢
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
1__inference_max_pooling2d_6_layer_call_fn_4832254inputs"¢
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
L__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_4832259inputs"¢
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
+__inference_conv2d_10_layer_call_fn_4832268inputs"¢
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
F__inference_conv2d_10_layer_call_and_return_conditional_losses_4832279inputs"¢
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
1__inference_max_pooling2d_7_layer_call_fn_4832284inputs"¢
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
L__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_4832289inputs"¢
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
+__inference_conv2d_11_layer_call_fn_4832298inputs"¢
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
F__inference_conv2d_11_layer_call_and_return_conditional_losses_4832309inputs"¢
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
+__inference_flatten_3_layer_call_fn_4832314inputs"¢
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
F__inference_flatten_3_layer_call_and_return_conditional_losses_4832320inputs"¢
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
+__inference_dropout_3_layer_call_fn_4832325inputs"³
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
+__inference_dropout_3_layer_call_fn_4832330inputs"³
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
F__inference_dropout_3_layer_call_and_return_conditional_losses_4832335inputs"³
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
F__inference_dropout_3_layer_call_and_return_conditional_losses_4832347inputs"³
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
)__inference_dense_3_layer_call_fn_4832356inputs"¢
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
D__inference_dense_3_layer_call_and_return_conditional_losses_4832367inputs"¢
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
	variables
	keras_api

total

count"
_tf_keras_metric
c
	variables
	keras_api

total

count

_fn_kwargs"
_tf_keras_metric
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.:,2Adam/conv2d_9/kernel/m
 :2Adam/conv2d_9/bias/m
:2Adam/weightu_0/m
:2Adam/weightv_0/m
:2Adam/weightu_1/m
:2Adam/weightv_1/m
:2Adam/weightu_2/m
:2Adam/weightv_2/m
:2Adam/weightu_3/m
:2Adam/weightv_3/m
:2Adam/weightu_4/m
:2Adam/weightv_4/m
:2Adam/weightu_5/m
:2Adam/weightv_5/m
:2Adam/weightu_6/m
:2Adam/weightv_6/m
:2Adam/weightu_7/m
:2Adam/weightv_7/m
:2Adam/weightu_8/m
:2Adam/weightv_8/m
:2Adam/weightu_9/m
:2Adam/weightv_9/m
:2Adam/weightu_10/m
:2Adam/weightv_10/m
:2Adam/weightu_11/m
:2Adam/weightv_11/m
:2Adam/weightu_12/m
:2Adam/weightv_12/m
:2Adam/weightu_13/m
:2Adam/weightv_13/m
:2Adam/weightu_14/m
:2Adam/weightv_14/m
:2Adam/weightu_15/m
:2Adam/weightv_15/m
:2Adam/weightu_16/m
:2Adam/weightv_16/m
:2Adam/weightu_17/m
:2Adam/weightv_17/m
:2Adam/weightu_18/m
:2Adam/weightv_18/m
:2Adam/weightu_19/m
:2Adam/weightv_19/m
:2Adam/weightu_20/m
:2Adam/weightv_20/m
:2Adam/weightu_21/m
:2Adam/weightv_21/m
:2Adam/weightu_22/m
:2Adam/weightv_22/m
:2Adam/weightu_23/m
:2Adam/weightv_23/m
:2Adam/weightu_24/m
:2Adam/weightv_24/m
:2Adam/weightu_25/m
:2Adam/weightv_25/m
:2Adam/weightu_26/m
:2Adam/weightv_26/m
:2Adam/weightu_27/m
:2Adam/weightv_27/m
:2Adam/weightu_28/m
:2Adam/weightv_28/m
:2Adam/weightu_29/m
:2Adam/weightv_29/m
:2Adam/weightu_30/m
:2Adam/weightv_30/m
:2Adam/weightu_31/m
:2Adam/weightv_31/m
/:-2Adam/conv2d_10/kernel/m
!:2Adam/conv2d_10/bias/m
/:-2Adam/conv2d_11/kernel/m
!:2Adam/conv2d_11/bias/m
&:$	
2Adam/dense_3/kernel/m
:
2Adam/dense_3/bias/m
.:,2Adam/conv2d_9/kernel/v
 :2Adam/conv2d_9/bias/v
:2Adam/weightu_0/v
:2Adam/weightv_0/v
:2Adam/weightu_1/v
:2Adam/weightv_1/v
:2Adam/weightu_2/v
:2Adam/weightv_2/v
:2Adam/weightu_3/v
:2Adam/weightv_3/v
:2Adam/weightu_4/v
:2Adam/weightv_4/v
:2Adam/weightu_5/v
:2Adam/weightv_5/v
:2Adam/weightu_6/v
:2Adam/weightv_6/v
:2Adam/weightu_7/v
:2Adam/weightv_7/v
:2Adam/weightu_8/v
:2Adam/weightv_8/v
:2Adam/weightu_9/v
:2Adam/weightv_9/v
:2Adam/weightu_10/v
:2Adam/weightv_10/v
:2Adam/weightu_11/v
:2Adam/weightv_11/v
:2Adam/weightu_12/v
:2Adam/weightv_12/v
:2Adam/weightu_13/v
:2Adam/weightv_13/v
:2Adam/weightu_14/v
:2Adam/weightv_14/v
:2Adam/weightu_15/v
:2Adam/weightv_15/v
:2Adam/weightu_16/v
:2Adam/weightv_16/v
:2Adam/weightu_17/v
:2Adam/weightv_17/v
:2Adam/weightu_18/v
:2Adam/weightv_18/v
:2Adam/weightu_19/v
:2Adam/weightv_19/v
:2Adam/weightu_20/v
:2Adam/weightv_20/v
:2Adam/weightu_21/v
:2Adam/weightv_21/v
:2Adam/weightu_22/v
:2Adam/weightv_22/v
:2Adam/weightu_23/v
:2Adam/weightv_23/v
:2Adam/weightu_24/v
:2Adam/weightv_24/v
:2Adam/weightu_25/v
:2Adam/weightv_25/v
:2Adam/weightu_26/v
:2Adam/weightv_26/v
:2Adam/weightu_27/v
:2Adam/weightv_27/v
:2Adam/weightu_28/v
:2Adam/weightv_28/v
:2Adam/weightu_29/v
:2Adam/weightv_29/v
:2Adam/weightu_30/v
:2Adam/weightv_30/v
:2Adam/weightu_31/v
:2Adam/weightv_31/v
/:-2Adam/conv2d_10/kernel/v
!:2Adam/conv2d_10/bias/v
/:-2Adam/conv2d_11/kernel/v
!:2Adam/conv2d_11/bias/v
&:$	
2Adam/dense_3/kernel/v
:
2Adam/dense_3/bias/vâ
"__inference__wrapped_model_4828633»L,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijk~£¤8¢5
.¢+
)&
input_4ÿÿÿÿÿÿÿÿÿ
ª "1ª.
,
dense_3!
dense_3ÿÿÿÿÿÿÿÿÿ
¶
F__inference_conv2d_10_layer_call_and_return_conditional_losses_4832279l~7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ
 
+__inference_conv2d_10_layer_call_fn_4832268_~7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª " ÿÿÿÿÿÿÿÿÿ¸
F__inference_conv2d_11_layer_call_and_return_conditional_losses_4832309n7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ
 
+__inference_conv2d_11_layer_call_fn_4832298a7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª " ÿÿÿÿÿÿÿÿÿµ
E__inference_conv2d_9_layer_call_and_return_conditional_losses_4831755l7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ
 
*__inference_conv2d_9_layer_call_fn_4831744_7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª " ÿÿÿÿÿÿÿÿÿ§
D__inference_dense_3_layer_call_and_return_conditional_losses_4832367_£¤0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 
)__inference_dense_3_layer_call_fn_4832356R£¤0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ
¨
F__inference_dropout_3_layer_call_and_return_conditional_losses_4832335^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ¨
F__inference_dropout_3_layer_call_and_return_conditional_losses_4832347^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
+__inference_dropout_3_layer_call_fn_4832325Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ
+__inference_dropout_3_layer_call_fn_4832330Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ«
F__inference_flatten_3_layer_call_and_return_conditional_losses_4832320a7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
+__inference_flatten_3_layer_call_fn_4832314T7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿö
M__inference_low_rank_layer_2_layer_call_and_return_conditional_losses_4832230¤@,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijk4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿ
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ
 Î
2__inference_low_rank_layer_2_layer_call_fn_4831906@,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijk4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿï
L__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_4832259R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ç
1__inference_max_pooling2d_6_layer_call_fn_4832254R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿï
L__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_4832289R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ç
1__inference_max_pooling2d_7_layer_call_fn_4832284R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¯
F__inference_reshape_4_layer_call_and_return_conditional_losses_4831773e7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ
 
+__inference_reshape_4_layer_call_fn_4831760X7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¯
F__inference_reshape_5_layer_call_and_return_conditional_losses_4832249e4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿ
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ
 
+__inference_reshape_5_layer_call_fn_4832235X4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿ
ª " ÿÿÿÿÿÿÿÿÿ
I__inference_sequential_3_layer_call_and_return_conditional_losses_4830362·L,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijk~£¤@¢=
6¢3
)&
input_4ÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 
I__inference_sequential_3_layer_call_and_return_conditional_losses_4830521·L,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijk~£¤@¢=
6¢3
)&
input_4ÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 
I__inference_sequential_3_layer_call_and_return_conditional_losses_4831352¶L,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijk~£¤?¢<
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
 
I__inference_sequential_3_layer_call_and_return_conditional_losses_4831735¶L,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijk~£¤?¢<
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
 Ý
.__inference_sequential_3_layer_call_fn_4829382ªL,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijk~£¤@¢=
6¢3
)&
input_4ÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
Ý
.__inference_sequential_3_layer_call_fn_4830203ªL,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijk~£¤@¢=
6¢3
)&
input_4ÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
Ü
.__inference_sequential_3_layer_call_fn_4830827©L,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijk~£¤?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
Ü
.__inference_sequential_3_layer_call_fn_4830976©L,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijk~£¤?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
ð
%__inference_signature_wrapper_4830678ÆL,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijk~£¤C¢@
¢ 
9ª6
4
input_4)&
input_4ÿÿÿÿÿÿÿÿÿ"1ª.
,
dense_3!
dense_3ÿÿÿÿÿÿÿÿÿ
