ć
*ĺ)
:
Add
x"T
y"T
z"T"
Ttype:
2	
î
	ApplyAdam
var"T	
m"T	
v"T
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 

ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
s
	AssignAdd
ref"T

value"T

output_ref"T" 
Ttype:
2	"
use_lockingbool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
8
Const
output"dtype"
valuetensor"
dtypetype
ë
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)


Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)


Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

B
Equal
x"T
y"T
z
"
Ttype:
2	

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
4
Fill
dims

value"T
output"T"	
Ttype
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
Ô
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
î
MaxPoolGrad

orig_input"T
orig_output"T	
grad"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype0:
2	
;
Maximum
x"T
y"T
z"T"
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
8
MergeSummary
inputs*N
summary"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
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
L
PreventGradient

input"T
output"T"	
Ttype"
messagestring 

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	

RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
D
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
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
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
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

#SparseSoftmaxCrossEntropyWithLogits
features"T
labels"Tlabels	
loss"T
backprop"T"
Ttype:
2"
Tlabelstype0	:
2	
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring 
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.5.02v1.5.0-0-g37aa430d84˙˘
n
PlaceholderPlaceholder*
dtype0*
shape:˙˙˙˙˙˙˙˙˙*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
S
IdentityIdentityPlaceholder*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Placeholder_1Placeholder*
dtype0*$
shape:˙˙˙˙˙˙˙˙˙  */
_output_shapes
:˙˙˙˙˙˙˙˙˙  
h
Placeholder_2Placeholder*
dtype0*
shape:˙˙˙˙˙˙˙˙˙*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
-conv1/weights/Initializer/random_normal/shapeConst*
dtype0* 
_class
loc:@conv1/weights*%
valueB"             *
_output_shapes
:

,conv1/weights/Initializer/random_normal/meanConst*
dtype0* 
_class
loc:@conv1/weights*
valueB
 *    *
_output_shapes
: 

.conv1/weights/Initializer/random_normal/stddevConst*
dtype0* 
_class
loc:@conv1/weights*
valueB
 *  ?*
_output_shapes
: 
ü
<conv1/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal-conv1/weights/Initializer/random_normal/shape*&
_output_shapes
: *
dtype0*
seed2 *

seed *
T0* 
_class
loc:@conv1/weights
ó
+conv1/weights/Initializer/random_normal/mulMul<conv1/weights/Initializer/random_normal/RandomStandardNormal.conv1/weights/Initializer/random_normal/stddev* 
_class
loc:@conv1/weights*
T0*&
_output_shapes
: 
Ü
'conv1/weights/Initializer/random_normalAdd+conv1/weights/Initializer/random_normal/mul,conv1/weights/Initializer/random_normal/mean* 
_class
loc:@conv1/weights*
T0*&
_output_shapes
: 
ł
conv1/weights
VariableV2*
	container *&
_output_shapes
: *
dtype0*
shape: * 
_class
loc:@conv1/weights*
shared_name 
Ň
conv1/weights/AssignAssignconv1/weights'conv1/weights/Initializer/random_normal*
validate_shape(* 
_class
loc:@conv1/weights*
use_locking(*
T0*&
_output_shapes
: 

conv1/weights/readIdentityconv1/weights* 
_class
loc:@conv1/weights*
T0*&
_output_shapes
: 

*conv1/bias/Initializer/random_normal/shapeConst*
dtype0*
_class
loc:@conv1/bias*
valueB: *
_output_shapes
:

)conv1/bias/Initializer/random_normal/meanConst*
dtype0*
_class
loc:@conv1/bias*
valueB
 *    *
_output_shapes
: 

+conv1/bias/Initializer/random_normal/stddevConst*
dtype0*
_class
loc:@conv1/bias*
valueB
 *  ?*
_output_shapes
: 
ç
9conv1/bias/Initializer/random_normal/RandomStandardNormalRandomStandardNormal*conv1/bias/Initializer/random_normal/shape*
_output_shapes
: *
dtype0*
seed2 *

seed *
T0*
_class
loc:@conv1/bias
Ű
(conv1/bias/Initializer/random_normal/mulMul9conv1/bias/Initializer/random_normal/RandomStandardNormal+conv1/bias/Initializer/random_normal/stddev*
_class
loc:@conv1/bias*
T0*
_output_shapes
: 
Ä
$conv1/bias/Initializer/random_normalAdd(conv1/bias/Initializer/random_normal/mul)conv1/bias/Initializer/random_normal/mean*
_class
loc:@conv1/bias*
T0*
_output_shapes
: 


conv1/bias
VariableV2*
	container *
_output_shapes
: *
dtype0*
shape: *
_class
loc:@conv1/bias*
shared_name 
ş
conv1/bias/AssignAssign
conv1/bias$conv1/bias/Initializer/random_normal*
validate_shape(*
_class
loc:@conv1/bias*
use_locking(*
T0*
_output_shapes
: 
k
conv1/bias/readIdentity
conv1/bias*
_class
loc:@conv1/bias*
T0*
_output_shapes
: 
á
conv1/Conv2DConv2DPlaceholder_1conv1/weights/read*/
_output_shapes
:˙˙˙˙˙˙˙˙˙   *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0*
	dilations


conv1/BiasAddBiasAddconv1/Conv2Dconv1/bias/read*/
_output_shapes
:˙˙˙˙˙˙˙˙˙   *
data_formatNHWC*
T0
[

conv1/ReluReluconv1/BiasAdd*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙   
°
conv1/MaxPoolMaxPool
conv1/Relu*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
data_formatNHWC*
paddingSAME*
strides
*
ksize
*
T0
¨
-conv2/weights/Initializer/random_normal/shapeConst*
dtype0* 
_class
loc:@conv2/weights*%
valueB"          @   *
_output_shapes
:

,conv2/weights/Initializer/random_normal/meanConst*
dtype0* 
_class
loc:@conv2/weights*
valueB
 *    *
_output_shapes
: 

.conv2/weights/Initializer/random_normal/stddevConst*
dtype0* 
_class
loc:@conv2/weights*
valueB
 *  ?*
_output_shapes
: 
ü
<conv2/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal-conv2/weights/Initializer/random_normal/shape*&
_output_shapes
: @*
dtype0*
seed2 *

seed *
T0* 
_class
loc:@conv2/weights
ó
+conv2/weights/Initializer/random_normal/mulMul<conv2/weights/Initializer/random_normal/RandomStandardNormal.conv2/weights/Initializer/random_normal/stddev* 
_class
loc:@conv2/weights*
T0*&
_output_shapes
: @
Ü
'conv2/weights/Initializer/random_normalAdd+conv2/weights/Initializer/random_normal/mul,conv2/weights/Initializer/random_normal/mean* 
_class
loc:@conv2/weights*
T0*&
_output_shapes
: @
ł
conv2/weights
VariableV2*
	container *&
_output_shapes
: @*
dtype0*
shape: @* 
_class
loc:@conv2/weights*
shared_name 
Ň
conv2/weights/AssignAssignconv2/weights'conv2/weights/Initializer/random_normal*
validate_shape(* 
_class
loc:@conv2/weights*
use_locking(*
T0*&
_output_shapes
: @

conv2/weights/readIdentityconv2/weights* 
_class
loc:@conv2/weights*
T0*&
_output_shapes
: @

*conv2/bias/Initializer/random_normal/shapeConst*
dtype0*
_class
loc:@conv2/bias*
valueB:@*
_output_shapes
:

)conv2/bias/Initializer/random_normal/meanConst*
dtype0*
_class
loc:@conv2/bias*
valueB
 *    *
_output_shapes
: 

+conv2/bias/Initializer/random_normal/stddevConst*
dtype0*
_class
loc:@conv2/bias*
valueB
 *  ?*
_output_shapes
: 
ç
9conv2/bias/Initializer/random_normal/RandomStandardNormalRandomStandardNormal*conv2/bias/Initializer/random_normal/shape*
_output_shapes
:@*
dtype0*
seed2 *

seed *
T0*
_class
loc:@conv2/bias
Ű
(conv2/bias/Initializer/random_normal/mulMul9conv2/bias/Initializer/random_normal/RandomStandardNormal+conv2/bias/Initializer/random_normal/stddev*
_class
loc:@conv2/bias*
T0*
_output_shapes
:@
Ä
$conv2/bias/Initializer/random_normalAdd(conv2/bias/Initializer/random_normal/mul)conv2/bias/Initializer/random_normal/mean*
_class
loc:@conv2/bias*
T0*
_output_shapes
:@


conv2/bias
VariableV2*
	container *
_output_shapes
:@*
dtype0*
shape:@*
_class
loc:@conv2/bias*
shared_name 
ş
conv2/bias/AssignAssign
conv2/bias$conv2/bias/Initializer/random_normal*
validate_shape(*
_class
loc:@conv2/bias*
use_locking(*
T0*
_output_shapes
:@
k
conv2/bias/readIdentity
conv2/bias*
_class
loc:@conv2/bias*
T0*
_output_shapes
:@
á
conv2/Conv2DConv2Dconv1/MaxPoolconv2/weights/read*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0*
	dilations


conv2/BiasAddBiasAddconv2/Conv2Dconv2/bias/read*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
data_formatNHWC*
T0
[

conv2/ReluReluconv2/BiasAdd*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
°
conv2/MaxPoolMaxPool
conv2/Relu*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
data_formatNHWC*
paddingSAME*
strides
*
ksize
*
T0
^
Reshape/shapeConst*
dtype0*
valueB"˙˙˙˙   *
_output_shapes
:
q
ReshapeReshapeconv2/MaxPoolReshape/shape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
Tshape0*
T0

+fc1/weights/Initializer/random_normal/shapeConst*
dtype0*
_class
loc:@fc1/weights*
valueB"      *
_output_shapes
:

*fc1/weights/Initializer/random_normal/meanConst*
dtype0*
_class
loc:@fc1/weights*
valueB
 *    *
_output_shapes
: 

,fc1/weights/Initializer/random_normal/stddevConst*
dtype0*
_class
loc:@fc1/weights*
valueB
 *  ?*
_output_shapes
: 
ď
:fc1/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal+fc1/weights/Initializer/random_normal/shape*
_output_shapes
:	 *
dtype0*
seed2 *

seed *
T0*
_class
loc:@fc1/weights
ä
)fc1/weights/Initializer/random_normal/mulMul:fc1/weights/Initializer/random_normal/RandomStandardNormal,fc1/weights/Initializer/random_normal/stddev*
_class
loc:@fc1/weights*
T0*
_output_shapes
:	 
Í
%fc1/weights/Initializer/random_normalAdd)fc1/weights/Initializer/random_normal/mul*fc1/weights/Initializer/random_normal/mean*
_class
loc:@fc1/weights*
T0*
_output_shapes
:	 
Ą
fc1/weights
VariableV2*
	container *
_output_shapes
:	 *
dtype0*
shape:	 *
_class
loc:@fc1/weights*
shared_name 
Ă
fc1/weights/AssignAssignfc1/weights%fc1/weights/Initializer/random_normal*
validate_shape(*
_class
loc:@fc1/weights*
use_locking(*
T0*
_output_shapes
:	 
s
fc1/weights/readIdentityfc1/weights*
_class
loc:@fc1/weights*
T0*
_output_shapes
:	 

(fc1/bias/Initializer/random_normal/shapeConst*
dtype0*
_class
loc:@fc1/bias*
valueB:*
_output_shapes
:

'fc1/bias/Initializer/random_normal/meanConst*
dtype0*
_class
loc:@fc1/bias*
valueB
 *    *
_output_shapes
: 

)fc1/bias/Initializer/random_normal/stddevConst*
dtype0*
_class
loc:@fc1/bias*
valueB
 *  ?*
_output_shapes
: 
á
7fc1/bias/Initializer/random_normal/RandomStandardNormalRandomStandardNormal(fc1/bias/Initializer/random_normal/shape*
_output_shapes
:*
dtype0*
seed2 *

seed *
T0*
_class
loc:@fc1/bias
Ó
&fc1/bias/Initializer/random_normal/mulMul7fc1/bias/Initializer/random_normal/RandomStandardNormal)fc1/bias/Initializer/random_normal/stddev*
_class
loc:@fc1/bias*
T0*
_output_shapes
:
ź
"fc1/bias/Initializer/random_normalAdd&fc1/bias/Initializer/random_normal/mul'fc1/bias/Initializer/random_normal/mean*
_class
loc:@fc1/bias*
T0*
_output_shapes
:

fc1/bias
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*
_class
loc:@fc1/bias*
shared_name 
˛
fc1/bias/AssignAssignfc1/bias"fc1/bias/Initializer/random_normal*
validate_shape(*
_class
loc:@fc1/bias*
use_locking(*
T0*
_output_shapes
:
e
fc1/bias/readIdentityfc1/bias*
_class
loc:@fc1/bias*
T0*
_output_shapes
:


fc1/MatMulMatMulReshapefc1/weights/read*
transpose_b( *
transpose_a( *
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
fc1/AddAdd
fc1/MatMulfc1/bias/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
v
)SparseSoftmaxCrossEntropyWithLogits/ShapeShapePlaceholder_2*
out_type0*
T0*
_output_shapes
:
Ö
GSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsfc1/AddPlaceholder_2*
T0*
Tlabels0*6
_output_shapes$
":˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
O
ConstConst*
dtype0*
valueB: *
_output_shapes
:

MeanMeanGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsConst*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
[
global_step/initial_valueConst*
dtype0*
value	B : *
_output_shapes
: 
o
global_step
VariableV2*
dtype0*
shape: *
	container *
shared_name *
_output_shapes
: 
Ž
global_step/AssignAssignglobal_stepglobal_step/initial_value*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
_class
loc:@global_step*
T0*
_output_shapes
: 
R
gradients/ShapeConst*
dtype0*
valueB *
_output_shapes
: 
X
gradients/grad_ys_0Const*
dtype0*
valueB
 *  ?*
_output_shapes
: 
]
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*
_output_shapes
: 
k
!gradients/Mean_grad/Reshape/shapeConst*
dtype0*
valueB:*
_output_shapes
:

gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/Reshape/shape*
_output_shapes
:*
Tshape0*
T0
 
gradients/Mean_grad/ShapeShapeGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
out_type0*
T0*
_output_shapes
:

gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
˘
gradients/Mean_grad/Shape_1ShapeGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
out_type0*
T0*
_output_shapes
:
^
gradients/Mean_grad/Shape_2Const*
dtype0*
valueB *
_output_shapes
: 
c
gradients/Mean_grad/ConstConst*
dtype0*
valueB: *
_output_shapes
:

gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
e
gradients/Mean_grad/Const_1Const*
dtype0*
valueB: *
_output_shapes
:

gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
_
gradients/Mean_grad/Maximum/yConst*
dtype0*
value	B :*
_output_shapes
: 

gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
T0*
_output_shapes
: 

gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
T0*
_output_shapes
: 
n
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*

DstT0*

SrcT0*
_output_shapes
: 

gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

gradients/zeros_like	ZerosLikeISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
­
fgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*´
message¨ĽCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
°
egradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙*
_output_shapes
: 
ą
agradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDimsgradients/Mean_grad/truedivegradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ţ
Zgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulagradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsfgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
f
gradients/fc1/Add_grad/ShapeShape
fc1/MatMul*
out_type0*
T0*
_output_shapes
:
h
gradients/fc1/Add_grad/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:
Ŕ
,gradients/fc1/Add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/fc1/Add_grad/Shapegradients/fc1/Add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ë
gradients/fc1/Add_grad/SumSumZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/fc1/Add_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Ł
gradients/fc1/Add_grad/ReshapeReshapegradients/fc1/Add_grad/Sumgradients/fc1/Add_grad/Shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0*
T0
ď
gradients/fc1/Add_grad/Sum_1SumZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul.gradients/fc1/Add_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0

 gradients/fc1/Add_grad/Reshape_1Reshapegradients/fc1/Add_grad/Sum_1gradients/fc1/Add_grad/Shape_1*
_output_shapes
:*
Tshape0*
T0
s
'gradients/fc1/Add_grad/tuple/group_depsNoOp^gradients/fc1/Add_grad/Reshape!^gradients/fc1/Add_grad/Reshape_1
ę
/gradients/fc1/Add_grad/tuple/control_dependencyIdentitygradients/fc1/Add_grad/Reshape(^gradients/fc1/Add_grad/tuple/group_deps*1
_class'
%#loc:@gradients/fc1/Add_grad/Reshape*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ă
1gradients/fc1/Add_grad/tuple/control_dependency_1Identity gradients/fc1/Add_grad/Reshape_1(^gradients/fc1/Add_grad/tuple/group_deps*3
_class)
'%loc:@gradients/fc1/Add_grad/Reshape_1*
T0*
_output_shapes
:
Ć
 gradients/fc1/MatMul_grad/MatMulMatMul/gradients/fc1/Add_grad/tuple/control_dependencyfc1/weights/read*
transpose_b(*
transpose_a( *
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
ś
"gradients/fc1/MatMul_grad/MatMul_1MatMulReshape/gradients/fc1/Add_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0*
_output_shapes
:	 
z
*gradients/fc1/MatMul_grad/tuple/group_depsNoOp!^gradients/fc1/MatMul_grad/MatMul#^gradients/fc1/MatMul_grad/MatMul_1
ő
2gradients/fc1/MatMul_grad/tuple/control_dependencyIdentity gradients/fc1/MatMul_grad/MatMul+^gradients/fc1/MatMul_grad/tuple/group_deps*3
_class)
'%loc:@gradients/fc1/MatMul_grad/MatMul*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
ň
4gradients/fc1/MatMul_grad/tuple/control_dependency_1Identity"gradients/fc1/MatMul_grad/MatMul_1+^gradients/fc1/MatMul_grad/tuple/group_deps*5
_class+
)'loc:@gradients/fc1/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	 
i
gradients/Reshape_grad/ShapeShapeconv2/MaxPool*
out_type0*
T0*
_output_shapes
:
Ă
gradients/Reshape_grad/ReshapeReshape2gradients/fc1/MatMul_grad/tuple/control_dependencygradients/Reshape_grad/Shape*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
Tshape0*
T0
ţ
(gradients/conv2/MaxPool_grad/MaxPoolGradMaxPoolGrad
conv2/Reluconv2/MaxPoolgradients/Reshape_grad/Reshape*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
data_formatNHWC*
paddingSAME*
strides
*
ksize
*
T0

"gradients/conv2/Relu_grad/ReluGradReluGrad(gradients/conv2/MaxPool_grad/MaxPoolGrad
conv2/Relu*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@

(gradients/conv2/BiasAdd_grad/BiasAddGradBiasAddGrad"gradients/conv2/Relu_grad/ReluGrad*
_output_shapes
:@*
data_formatNHWC*
T0

-gradients/conv2/BiasAdd_grad/tuple/group_depsNoOp#^gradients/conv2/Relu_grad/ReluGrad)^gradients/conv2/BiasAdd_grad/BiasAddGrad

5gradients/conv2/BiasAdd_grad/tuple/control_dependencyIdentity"gradients/conv2/Relu_grad/ReluGrad.^gradients/conv2/BiasAdd_grad/tuple/group_deps*5
_class+
)'loc:@gradients/conv2/Relu_grad/ReluGrad*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
˙
7gradients/conv2/BiasAdd_grad/tuple/control_dependency_1Identity(gradients/conv2/BiasAdd_grad/BiasAddGrad.^gradients/conv2/BiasAdd_grad/tuple/group_deps*;
_class1
/-loc:@gradients/conv2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@

"gradients/conv2/Conv2D_grad/ShapeNShapeNconv1/MaxPoolconv2/weights/read*
out_type0*
T0* 
_output_shapes
::*
N
z
!gradients/conv2/Conv2D_grad/ConstConst*
dtype0*%
valueB"          @   *
_output_shapes
:
ř
/gradients/conv2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput"gradients/conv2/Conv2D_grad/ShapeNconv2/weights/read5gradients/conv2/BiasAdd_grad/tuple/control_dependency*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0*
	dilations

Đ
0gradients/conv2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv1/MaxPool!gradients/conv2/Conv2D_grad/Const5gradients/conv2/BiasAdd_grad/tuple/control_dependency*&
_output_shapes
: @*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0*
	dilations


,gradients/conv2/Conv2D_grad/tuple/group_depsNoOp0^gradients/conv2/Conv2D_grad/Conv2DBackpropInput1^gradients/conv2/Conv2D_grad/Conv2DBackpropFilter

4gradients/conv2/Conv2D_grad/tuple/control_dependencyIdentity/gradients/conv2/Conv2D_grad/Conv2DBackpropInput-^gradients/conv2/Conv2D_grad/tuple/group_deps*B
_class8
64loc:@gradients/conv2/Conv2D_grad/Conv2DBackpropInput*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

6gradients/conv2/Conv2D_grad/tuple/control_dependency_1Identity0gradients/conv2/Conv2D_grad/Conv2DBackpropFilter-^gradients/conv2/Conv2D_grad/tuple/group_deps*C
_class9
75loc:@gradients/conv2/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
: @

(gradients/conv1/MaxPool_grad/MaxPoolGradMaxPoolGrad
conv1/Reluconv1/MaxPool4gradients/conv2/Conv2D_grad/tuple/control_dependency*/
_output_shapes
:˙˙˙˙˙˙˙˙˙   *
data_formatNHWC*
paddingSAME*
strides
*
ksize
*
T0

"gradients/conv1/Relu_grad/ReluGradReluGrad(gradients/conv1/MaxPool_grad/MaxPoolGrad
conv1/Relu*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙   

(gradients/conv1/BiasAdd_grad/BiasAddGradBiasAddGrad"gradients/conv1/Relu_grad/ReluGrad*
_output_shapes
: *
data_formatNHWC*
T0

-gradients/conv1/BiasAdd_grad/tuple/group_depsNoOp#^gradients/conv1/Relu_grad/ReluGrad)^gradients/conv1/BiasAdd_grad/BiasAddGrad

5gradients/conv1/BiasAdd_grad/tuple/control_dependencyIdentity"gradients/conv1/Relu_grad/ReluGrad.^gradients/conv1/BiasAdd_grad/tuple/group_deps*5
_class+
)'loc:@gradients/conv1/Relu_grad/ReluGrad*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙   
˙
7gradients/conv1/BiasAdd_grad/tuple/control_dependency_1Identity(gradients/conv1/BiasAdd_grad/BiasAddGrad.^gradients/conv1/BiasAdd_grad/tuple/group_deps*;
_class1
/-loc:@gradients/conv1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
: 

"gradients/conv1/Conv2D_grad/ShapeNShapeNPlaceholder_1conv1/weights/read*
out_type0*
T0* 
_output_shapes
::*
N
z
!gradients/conv1/Conv2D_grad/ConstConst*
dtype0*%
valueB"             *
_output_shapes
:
ř
/gradients/conv1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput"gradients/conv1/Conv2D_grad/ShapeNconv1/weights/read5gradients/conv1/BiasAdd_grad/tuple/control_dependency*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0*
	dilations

Đ
0gradients/conv1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterPlaceholder_1!gradients/conv1/Conv2D_grad/Const5gradients/conv1/BiasAdd_grad/tuple/control_dependency*&
_output_shapes
: *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0*
	dilations


,gradients/conv1/Conv2D_grad/tuple/group_depsNoOp0^gradients/conv1/Conv2D_grad/Conv2DBackpropInput1^gradients/conv1/Conv2D_grad/Conv2DBackpropFilter

4gradients/conv1/Conv2D_grad/tuple/control_dependencyIdentity/gradients/conv1/Conv2D_grad/Conv2DBackpropInput-^gradients/conv1/Conv2D_grad/tuple/group_deps*B
_class8
64loc:@gradients/conv1/Conv2D_grad/Conv2DBackpropInput*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  

6gradients/conv1/Conv2D_grad/tuple/control_dependency_1Identity0gradients/conv1/Conv2D_grad/Conv2DBackpropFilter-^gradients/conv1/Conv2D_grad/tuple/group_deps*C
_class9
75loc:@gradients/conv1/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
: 
}
beta1_power/initial_valueConst*
dtype0*
_class
loc:@conv1/bias*
valueB
 *fff?*
_output_shapes
: 

beta1_power
VariableV2*
	container *
_output_shapes
: *
dtype0*
shape: *
_class
loc:@conv1/bias*
shared_name 
­
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
validate_shape(*
_class
loc:@conv1/bias*
use_locking(*
T0*
_output_shapes
: 
i
beta1_power/readIdentitybeta1_power*
_class
loc:@conv1/bias*
T0*
_output_shapes
: 
}
beta2_power/initial_valueConst*
dtype0*
_class
loc:@conv1/bias*
valueB
 *wž?*
_output_shapes
: 

beta2_power
VariableV2*
	container *
_output_shapes
: *
dtype0*
shape: *
_class
loc:@conv1/bias*
shared_name 
­
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
validate_shape(*
_class
loc:@conv1/bias*
use_locking(*
T0*
_output_shapes
: 
i
beta2_power/readIdentitybeta2_power*
_class
loc:@conv1/bias*
T0*
_output_shapes
: 
Ť
$conv1/weights/Adam/Initializer/zerosConst*
dtype0* 
_class
loc:@conv1/weights*%
valueB *    *&
_output_shapes
: 
¸
conv1/weights/Adam
VariableV2*
	container *&
_output_shapes
: *
dtype0*
shape: * 
_class
loc:@conv1/weights*
shared_name 
Ů
conv1/weights/Adam/AssignAssignconv1/weights/Adam$conv1/weights/Adam/Initializer/zeros*
validate_shape(* 
_class
loc:@conv1/weights*
use_locking(*
T0*&
_output_shapes
: 

conv1/weights/Adam/readIdentityconv1/weights/Adam* 
_class
loc:@conv1/weights*
T0*&
_output_shapes
: 
­
&conv1/weights/Adam_1/Initializer/zerosConst*
dtype0* 
_class
loc:@conv1/weights*%
valueB *    *&
_output_shapes
: 
ş
conv1/weights/Adam_1
VariableV2*
	container *&
_output_shapes
: *
dtype0*
shape: * 
_class
loc:@conv1/weights*
shared_name 
ß
conv1/weights/Adam_1/AssignAssignconv1/weights/Adam_1&conv1/weights/Adam_1/Initializer/zeros*
validate_shape(* 
_class
loc:@conv1/weights*
use_locking(*
T0*&
_output_shapes
: 

conv1/weights/Adam_1/readIdentityconv1/weights/Adam_1* 
_class
loc:@conv1/weights*
T0*&
_output_shapes
: 

!conv1/bias/Adam/Initializer/zerosConst*
dtype0*
_class
loc:@conv1/bias*
valueB *    *
_output_shapes
: 

conv1/bias/Adam
VariableV2*
	container *
_output_shapes
: *
dtype0*
shape: *
_class
loc:@conv1/bias*
shared_name 
Á
conv1/bias/Adam/AssignAssignconv1/bias/Adam!conv1/bias/Adam/Initializer/zeros*
validate_shape(*
_class
loc:@conv1/bias*
use_locking(*
T0*
_output_shapes
: 
u
conv1/bias/Adam/readIdentityconv1/bias/Adam*
_class
loc:@conv1/bias*
T0*
_output_shapes
: 

#conv1/bias/Adam_1/Initializer/zerosConst*
dtype0*
_class
loc:@conv1/bias*
valueB *    *
_output_shapes
: 

conv1/bias/Adam_1
VariableV2*
	container *
_output_shapes
: *
dtype0*
shape: *
_class
loc:@conv1/bias*
shared_name 
Ç
conv1/bias/Adam_1/AssignAssignconv1/bias/Adam_1#conv1/bias/Adam_1/Initializer/zeros*
validate_shape(*
_class
loc:@conv1/bias*
use_locking(*
T0*
_output_shapes
: 
y
conv1/bias/Adam_1/readIdentityconv1/bias/Adam_1*
_class
loc:@conv1/bias*
T0*
_output_shapes
: 
Ť
$conv2/weights/Adam/Initializer/zerosConst*
dtype0* 
_class
loc:@conv2/weights*%
valueB @*    *&
_output_shapes
: @
¸
conv2/weights/Adam
VariableV2*
	container *&
_output_shapes
: @*
dtype0*
shape: @* 
_class
loc:@conv2/weights*
shared_name 
Ů
conv2/weights/Adam/AssignAssignconv2/weights/Adam$conv2/weights/Adam/Initializer/zeros*
validate_shape(* 
_class
loc:@conv2/weights*
use_locking(*
T0*&
_output_shapes
: @

conv2/weights/Adam/readIdentityconv2/weights/Adam* 
_class
loc:@conv2/weights*
T0*&
_output_shapes
: @
­
&conv2/weights/Adam_1/Initializer/zerosConst*
dtype0* 
_class
loc:@conv2/weights*%
valueB @*    *&
_output_shapes
: @
ş
conv2/weights/Adam_1
VariableV2*
	container *&
_output_shapes
: @*
dtype0*
shape: @* 
_class
loc:@conv2/weights*
shared_name 
ß
conv2/weights/Adam_1/AssignAssignconv2/weights/Adam_1&conv2/weights/Adam_1/Initializer/zeros*
validate_shape(* 
_class
loc:@conv2/weights*
use_locking(*
T0*&
_output_shapes
: @

conv2/weights/Adam_1/readIdentityconv2/weights/Adam_1* 
_class
loc:@conv2/weights*
T0*&
_output_shapes
: @

!conv2/bias/Adam/Initializer/zerosConst*
dtype0*
_class
loc:@conv2/bias*
valueB@*    *
_output_shapes
:@

conv2/bias/Adam
VariableV2*
	container *
_output_shapes
:@*
dtype0*
shape:@*
_class
loc:@conv2/bias*
shared_name 
Á
conv2/bias/Adam/AssignAssignconv2/bias/Adam!conv2/bias/Adam/Initializer/zeros*
validate_shape(*
_class
loc:@conv2/bias*
use_locking(*
T0*
_output_shapes
:@
u
conv2/bias/Adam/readIdentityconv2/bias/Adam*
_class
loc:@conv2/bias*
T0*
_output_shapes
:@

#conv2/bias/Adam_1/Initializer/zerosConst*
dtype0*
_class
loc:@conv2/bias*
valueB@*    *
_output_shapes
:@

conv2/bias/Adam_1
VariableV2*
	container *
_output_shapes
:@*
dtype0*
shape:@*
_class
loc:@conv2/bias*
shared_name 
Ç
conv2/bias/Adam_1/AssignAssignconv2/bias/Adam_1#conv2/bias/Adam_1/Initializer/zeros*
validate_shape(*
_class
loc:@conv2/bias*
use_locking(*
T0*
_output_shapes
:@
y
conv2/bias/Adam_1/readIdentityconv2/bias/Adam_1*
_class
loc:@conv2/bias*
T0*
_output_shapes
:@

"fc1/weights/Adam/Initializer/zerosConst*
dtype0*
_class
loc:@fc1/weights*
valueB	 *    *
_output_shapes
:	 
Ś
fc1/weights/Adam
VariableV2*
	container *
_output_shapes
:	 *
dtype0*
shape:	 *
_class
loc:@fc1/weights*
shared_name 
Ę
fc1/weights/Adam/AssignAssignfc1/weights/Adam"fc1/weights/Adam/Initializer/zeros*
validate_shape(*
_class
loc:@fc1/weights*
use_locking(*
T0*
_output_shapes
:	 
}
fc1/weights/Adam/readIdentityfc1/weights/Adam*
_class
loc:@fc1/weights*
T0*
_output_shapes
:	 

$fc1/weights/Adam_1/Initializer/zerosConst*
dtype0*
_class
loc:@fc1/weights*
valueB	 *    *
_output_shapes
:	 
¨
fc1/weights/Adam_1
VariableV2*
	container *
_output_shapes
:	 *
dtype0*
shape:	 *
_class
loc:@fc1/weights*
shared_name 
Đ
fc1/weights/Adam_1/AssignAssignfc1/weights/Adam_1$fc1/weights/Adam_1/Initializer/zeros*
validate_shape(*
_class
loc:@fc1/weights*
use_locking(*
T0*
_output_shapes
:	 

fc1/weights/Adam_1/readIdentityfc1/weights/Adam_1*
_class
loc:@fc1/weights*
T0*
_output_shapes
:	 

fc1/bias/Adam/Initializer/zerosConst*
dtype0*
_class
loc:@fc1/bias*
valueB*    *
_output_shapes
:

fc1/bias/Adam
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*
_class
loc:@fc1/bias*
shared_name 
š
fc1/bias/Adam/AssignAssignfc1/bias/Adamfc1/bias/Adam/Initializer/zeros*
validate_shape(*
_class
loc:@fc1/bias*
use_locking(*
T0*
_output_shapes
:
o
fc1/bias/Adam/readIdentityfc1/bias/Adam*
_class
loc:@fc1/bias*
T0*
_output_shapes
:

!fc1/bias/Adam_1/Initializer/zerosConst*
dtype0*
_class
loc:@fc1/bias*
valueB*    *
_output_shapes
:

fc1/bias/Adam_1
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*
_class
loc:@fc1/bias*
shared_name 
ż
fc1/bias/Adam_1/AssignAssignfc1/bias/Adam_1!fc1/bias/Adam_1/Initializer/zeros*
validate_shape(*
_class
loc:@fc1/bias*
use_locking(*
T0*
_output_shapes
:
s
fc1/bias/Adam_1/readIdentityfc1/bias/Adam_1*
_class
loc:@fc1/bias*
T0*
_output_shapes
:
W
Adam/learning_rateConst*
dtype0*
valueB
 *
×#<*
_output_shapes
: 
O

Adam/beta1Const*
dtype0*
valueB
 *fff?*
_output_shapes
: 
O

Adam/beta2Const*
dtype0*
valueB
 *wž?*
_output_shapes
: 
Q
Adam/epsilonConst*
dtype0*
valueB
 *wĚ+2*
_output_shapes
: 
ů
#Adam/update_conv1/weights/ApplyAdam	ApplyAdamconv1/weightsconv1/weights/Adamconv1/weights/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon6gradients/conv1/Conv2D_grad/tuple/control_dependency_1*
use_nesterov( * 
_class
loc:@conv1/weights*
use_locking( *
T0*&
_output_shapes
: 
ß
 Adam/update_conv1/bias/ApplyAdam	ApplyAdam
conv1/biasconv1/bias/Adamconv1/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon7gradients/conv1/BiasAdd_grad/tuple/control_dependency_1*
use_nesterov( *
_class
loc:@conv1/bias*
use_locking( *
T0*
_output_shapes
: 
ů
#Adam/update_conv2/weights/ApplyAdam	ApplyAdamconv2/weightsconv2/weights/Adamconv2/weights/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon6gradients/conv2/Conv2D_grad/tuple/control_dependency_1*
use_nesterov( * 
_class
loc:@conv2/weights*
use_locking( *
T0*&
_output_shapes
: @
ß
 Adam/update_conv2/bias/ApplyAdam	ApplyAdam
conv2/biasconv2/bias/Adamconv2/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon7gradients/conv2/BiasAdd_grad/tuple/control_dependency_1*
use_nesterov( *
_class
loc:@conv2/bias*
use_locking( *
T0*
_output_shapes
:@
ć
!Adam/update_fc1/weights/ApplyAdam	ApplyAdamfc1/weightsfc1/weights/Adamfc1/weights/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon4gradients/fc1/MatMul_grad/tuple/control_dependency_1*
use_nesterov( *
_class
loc:@fc1/weights*
use_locking( *
T0*
_output_shapes
:	 
Ď
Adam/update_fc1/bias/ApplyAdam	ApplyAdamfc1/biasfc1/bias/Adamfc1/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon1gradients/fc1/Add_grad/tuple/control_dependency_1*
use_nesterov( *
_class
loc:@fc1/bias*
use_locking( *
T0*
_output_shapes
:
Ä
Adam/mulMulbeta1_power/read
Adam/beta1$^Adam/update_conv1/weights/ApplyAdam!^Adam/update_conv1/bias/ApplyAdam$^Adam/update_conv2/weights/ApplyAdam!^Adam/update_conv2/bias/ApplyAdam"^Adam/update_fc1/weights/ApplyAdam^Adam/update_fc1/bias/ApplyAdam*
_class
loc:@conv1/bias*
T0*
_output_shapes
: 

Adam/AssignAssignbeta1_powerAdam/mul*
validate_shape(*
_class
loc:@conv1/bias*
use_locking( *
T0*
_output_shapes
: 
Ć

Adam/mul_1Mulbeta2_power/read
Adam/beta2$^Adam/update_conv1/weights/ApplyAdam!^Adam/update_conv1/bias/ApplyAdam$^Adam/update_conv2/weights/ApplyAdam!^Adam/update_conv2/bias/ApplyAdam"^Adam/update_fc1/weights/ApplyAdam^Adam/update_fc1/bias/ApplyAdam*
_class
loc:@conv1/bias*
T0*
_output_shapes
: 

Adam/Assign_1Assignbeta2_power
Adam/mul_1*
validate_shape(*
_class
loc:@conv1/bias*
use_locking( *
T0*
_output_shapes
: 

Adam/updateNoOp$^Adam/update_conv1/weights/ApplyAdam!^Adam/update_conv1/bias/ApplyAdam$^Adam/update_conv2/weights/ApplyAdam!^Adam/update_conv2/bias/ApplyAdam"^Adam/update_fc1/weights/ApplyAdam^Adam/update_fc1/bias/ApplyAdam^Adam/Assign^Adam/Assign_1
z

Adam/valueConst^Adam/update*
dtype0*
_class
loc:@global_step*
value	B :*
_output_shapes
: 
~
Adam	AssignAddglobal_step
Adam/value*
_class
loc:@global_step*
use_locking( *
T0*
_output_shapes
: 
ă
conv1_1/Conv2DConv2DPlaceholder_1conv1/weights/read*/
_output_shapes
:˙˙˙˙˙˙˙˙˙   *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0*
	dilations


conv1_1/BiasAddBiasAddconv1_1/Conv2Dconv1/bias/read*/
_output_shapes
:˙˙˙˙˙˙˙˙˙   *
data_formatNHWC*
T0
_
conv1_1/ReluReluconv1_1/BiasAdd*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙   
´
conv1_1/MaxPoolMaxPoolconv1_1/Relu*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
data_formatNHWC*
paddingSAME*
strides
*
ksize
*
T0
ĺ
conv2_1/Conv2DConv2Dconv1_1/MaxPoolconv2/weights/read*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0*
	dilations


conv2_1/BiasAddBiasAddconv2_1/Conv2Dconv2/bias/read*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
data_formatNHWC*
T0
_
conv2_1/ReluReluconv2_1/BiasAdd*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
´
conv2_1/MaxPoolMaxPoolconv2_1/Relu*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
data_formatNHWC*
paddingSAME*
strides
*
ksize
*
T0
`
Reshape_1/shapeConst*
dtype0*
valueB"˙˙˙˙   *
_output_shapes
:
w
	Reshape_1Reshapeconv2_1/MaxPoolReshape_1/shape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
Tshape0*
T0

fc1_1/MatMulMatMul	Reshape_1fc1/weights/read*
transpose_b( *
transpose_a( *
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
_
	fc1_1/AddAddfc1_1/MatMulfc1/bias/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
O
SoftmaxSoftmax	fc1_1/Add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
R
ArgMax/dimensionConst*
dtype0*
value	B :*
_output_shapes
: 
x
ArgMaxArgMaxSoftmaxArgMax/dimension*
output_type0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*
T0
[
ToInt64CastPlaceholder_2*

DstT0	*

SrcT0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
M
EqualEqualArgMaxToInt64*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
P
CastCastEqual*

DstT0*

SrcT0
*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Q
Const_1Const*
dtype0*
valueB: *
_output_shapes
:
[
Mean_1MeanCastConst_1*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
P

save/ConstConst*
dtype0*
valueB Bmodel*
_output_shapes
: 
¸
save/SaveV2/tensor_namesConst*
dtype0*ë
valueáBŢBbeta1_powerBbeta2_powerB
conv1/biasBconv1/bias/AdamBconv1/bias/Adam_1Bconv1/weightsBconv1/weights/AdamBconv1/weights/Adam_1B
conv2/biasBconv2/bias/AdamBconv2/bias/Adam_1Bconv2/weightsBconv2/weights/AdamBconv2/weights/Adam_1Bfc1/biasBfc1/bias/AdamBfc1/bias/Adam_1Bfc1/weightsBfc1/weights/AdamBfc1/weights/Adam_1Bglobal_step*
_output_shapes
:

save/SaveV2/shape_and_slicesConst*
dtype0*=
value4B2B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:
Ô
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbeta1_powerbeta2_power
conv1/biasconv1/bias/Adamconv1/bias/Adam_1conv1/weightsconv1/weights/Adamconv1/weights/Adam_1
conv2/biasconv2/bias/Adamconv2/bias/Adam_1conv2/weightsconv2/weights/Adamconv2/weights/Adam_1fc1/biasfc1/bias/Adamfc1/bias/Adam_1fc1/weightsfc1/weights/Adamfc1/weights/Adam_1global_step*#
dtypes
2
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
_class
loc:@save/Const*
T0*
_output_shapes
: 
o
save/RestoreV2/tensor_namesConst*
dtype0* 
valueBBbeta1_power*
_output_shapes
:
h
save/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:

save/AssignAssignbeta1_powersave/RestoreV2*
validate_shape(*
_class
loc:@conv1/bias*
use_locking(*
T0*
_output_shapes
: 
q
save/RestoreV2_1/tensor_namesConst*
dtype0* 
valueBBbeta2_power*
_output_shapes
:
j
!save/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:

save/Assign_1Assignbeta2_powersave/RestoreV2_1*
validate_shape(*
_class
loc:@conv1/bias*
use_locking(*
T0*
_output_shapes
: 
p
save/RestoreV2_2/tensor_namesConst*
dtype0*
valueBB
conv1/bias*
_output_shapes
:
j
!save/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
˘
save/Assign_2Assign
conv1/biassave/RestoreV2_2*
validate_shape(*
_class
loc:@conv1/bias*
use_locking(*
T0*
_output_shapes
: 
u
save/RestoreV2_3/tensor_namesConst*
dtype0*$
valueBBconv1/bias/Adam*
_output_shapes
:
j
!save/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
§
save/Assign_3Assignconv1/bias/Adamsave/RestoreV2_3*
validate_shape(*
_class
loc:@conv1/bias*
use_locking(*
T0*
_output_shapes
: 
w
save/RestoreV2_4/tensor_namesConst*
dtype0*&
valueBBconv1/bias/Adam_1*
_output_shapes
:
j
!save/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
Š
save/Assign_4Assignconv1/bias/Adam_1save/RestoreV2_4*
validate_shape(*
_class
loc:@conv1/bias*
use_locking(*
T0*
_output_shapes
: 
s
save/RestoreV2_5/tensor_namesConst*
dtype0*"
valueBBconv1/weights*
_output_shapes
:
j
!save/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
´
save/Assign_5Assignconv1/weightssave/RestoreV2_5*
validate_shape(* 
_class
loc:@conv1/weights*
use_locking(*
T0*&
_output_shapes
: 
x
save/RestoreV2_6/tensor_namesConst*
dtype0*'
valueBBconv1/weights/Adam*
_output_shapes
:
j
!save/RestoreV2_6/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
š
save/Assign_6Assignconv1/weights/Adamsave/RestoreV2_6*
validate_shape(* 
_class
loc:@conv1/weights*
use_locking(*
T0*&
_output_shapes
: 
z
save/RestoreV2_7/tensor_namesConst*
dtype0*)
value BBconv1/weights/Adam_1*
_output_shapes
:
j
!save/RestoreV2_7/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes
:
ť
save/Assign_7Assignconv1/weights/Adam_1save/RestoreV2_7*
validate_shape(* 
_class
loc:@conv1/weights*
use_locking(*
T0*&
_output_shapes
: 
p
save/RestoreV2_8/tensor_namesConst*
dtype0*
valueBB
conv2/bias*
_output_shapes
:
j
!save/RestoreV2_8/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
dtypes
2*
_output_shapes
:
˘
save/Assign_8Assign
conv2/biassave/RestoreV2_8*
validate_shape(*
_class
loc:@conv2/bias*
use_locking(*
T0*
_output_shapes
:@
u
save/RestoreV2_9/tensor_namesConst*
dtype0*$
valueBBconv2/bias/Adam*
_output_shapes
:
j
!save/RestoreV2_9/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_9	RestoreV2
save/Constsave/RestoreV2_9/tensor_names!save/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes
:
§
save/Assign_9Assignconv2/bias/Adamsave/RestoreV2_9*
validate_shape(*
_class
loc:@conv2/bias*
use_locking(*
T0*
_output_shapes
:@
x
save/RestoreV2_10/tensor_namesConst*
dtype0*&
valueBBconv2/bias/Adam_1*
_output_shapes
:
k
"save/RestoreV2_10/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_10	RestoreV2
save/Constsave/RestoreV2_10/tensor_names"save/RestoreV2_10/shape_and_slices*
dtypes
2*
_output_shapes
:
Ť
save/Assign_10Assignconv2/bias/Adam_1save/RestoreV2_10*
validate_shape(*
_class
loc:@conv2/bias*
use_locking(*
T0*
_output_shapes
:@
t
save/RestoreV2_11/tensor_namesConst*
dtype0*"
valueBBconv2/weights*
_output_shapes
:
k
"save/RestoreV2_11/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_11	RestoreV2
save/Constsave/RestoreV2_11/tensor_names"save/RestoreV2_11/shape_and_slices*
dtypes
2*
_output_shapes
:
ś
save/Assign_11Assignconv2/weightssave/RestoreV2_11*
validate_shape(* 
_class
loc:@conv2/weights*
use_locking(*
T0*&
_output_shapes
: @
y
save/RestoreV2_12/tensor_namesConst*
dtype0*'
valueBBconv2/weights/Adam*
_output_shapes
:
k
"save/RestoreV2_12/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_12	RestoreV2
save/Constsave/RestoreV2_12/tensor_names"save/RestoreV2_12/shape_and_slices*
dtypes
2*
_output_shapes
:
ť
save/Assign_12Assignconv2/weights/Adamsave/RestoreV2_12*
validate_shape(* 
_class
loc:@conv2/weights*
use_locking(*
T0*&
_output_shapes
: @
{
save/RestoreV2_13/tensor_namesConst*
dtype0*)
value BBconv2/weights/Adam_1*
_output_shapes
:
k
"save/RestoreV2_13/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_13	RestoreV2
save/Constsave/RestoreV2_13/tensor_names"save/RestoreV2_13/shape_and_slices*
dtypes
2*
_output_shapes
:
˝
save/Assign_13Assignconv2/weights/Adam_1save/RestoreV2_13*
validate_shape(* 
_class
loc:@conv2/weights*
use_locking(*
T0*&
_output_shapes
: @
o
save/RestoreV2_14/tensor_namesConst*
dtype0*
valueBBfc1/bias*
_output_shapes
:
k
"save/RestoreV2_14/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_14	RestoreV2
save/Constsave/RestoreV2_14/tensor_names"save/RestoreV2_14/shape_and_slices*
dtypes
2*
_output_shapes
:
 
save/Assign_14Assignfc1/biassave/RestoreV2_14*
validate_shape(*
_class
loc:@fc1/bias*
use_locking(*
T0*
_output_shapes
:
t
save/RestoreV2_15/tensor_namesConst*
dtype0*"
valueBBfc1/bias/Adam*
_output_shapes
:
k
"save/RestoreV2_15/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_15	RestoreV2
save/Constsave/RestoreV2_15/tensor_names"save/RestoreV2_15/shape_and_slices*
dtypes
2*
_output_shapes
:
Ľ
save/Assign_15Assignfc1/bias/Adamsave/RestoreV2_15*
validate_shape(*
_class
loc:@fc1/bias*
use_locking(*
T0*
_output_shapes
:
v
save/RestoreV2_16/tensor_namesConst*
dtype0*$
valueBBfc1/bias/Adam_1*
_output_shapes
:
k
"save/RestoreV2_16/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_16	RestoreV2
save/Constsave/RestoreV2_16/tensor_names"save/RestoreV2_16/shape_and_slices*
dtypes
2*
_output_shapes
:
§
save/Assign_16Assignfc1/bias/Adam_1save/RestoreV2_16*
validate_shape(*
_class
loc:@fc1/bias*
use_locking(*
T0*
_output_shapes
:
r
save/RestoreV2_17/tensor_namesConst*
dtype0* 
valueBBfc1/weights*
_output_shapes
:
k
"save/RestoreV2_17/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_17	RestoreV2
save/Constsave/RestoreV2_17/tensor_names"save/RestoreV2_17/shape_and_slices*
dtypes
2*
_output_shapes
:
Ť
save/Assign_17Assignfc1/weightssave/RestoreV2_17*
validate_shape(*
_class
loc:@fc1/weights*
use_locking(*
T0*
_output_shapes
:	 
w
save/RestoreV2_18/tensor_namesConst*
dtype0*%
valueBBfc1/weights/Adam*
_output_shapes
:
k
"save/RestoreV2_18/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_18	RestoreV2
save/Constsave/RestoreV2_18/tensor_names"save/RestoreV2_18/shape_and_slices*
dtypes
2*
_output_shapes
:
°
save/Assign_18Assignfc1/weights/Adamsave/RestoreV2_18*
validate_shape(*
_class
loc:@fc1/weights*
use_locking(*
T0*
_output_shapes
:	 
y
save/RestoreV2_19/tensor_namesConst*
dtype0*'
valueBBfc1/weights/Adam_1*
_output_shapes
:
k
"save/RestoreV2_19/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_19	RestoreV2
save/Constsave/RestoreV2_19/tensor_names"save/RestoreV2_19/shape_and_slices*
dtypes
2*
_output_shapes
:
˛
save/Assign_19Assignfc1/weights/Adam_1save/RestoreV2_19*
validate_shape(*
_class
loc:@fc1/weights*
use_locking(*
T0*
_output_shapes
:	 
r
save/RestoreV2_20/tensor_namesConst*
dtype0* 
valueBBglobal_step*
_output_shapes
:
k
"save/RestoreV2_20/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_20	RestoreV2
save/Constsave/RestoreV2_20/tensor_names"save/RestoreV2_20/shape_and_slices*
dtypes
2*
_output_shapes
:
˘
save/Assign_20Assignglobal_stepsave/RestoreV2_20*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0*
_output_shapes
: 
ń
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_20
N
	loss/tagsConst*
dtype0*
valueB
 Bloss*
_output_shapes
: 
G
lossScalarSummary	loss/tagsMean*
T0*
_output_shapes
: 

initNoOp^conv1/weights/Assign^conv1/bias/Assign^conv2/weights/Assign^conv2/bias/Assign^fc1/weights/Assign^fc1/bias/Assign^global_step/Assign^beta1_power/Assign^beta2_power/Assign^conv1/weights/Adam/Assign^conv1/weights/Adam_1/Assign^conv1/bias/Adam/Assign^conv1/bias/Adam_1/Assign^conv2/weights/Adam/Assign^conv2/weights/Adam_1/Assign^conv2/bias/Adam/Assign^conv2/bias/Adam_1/Assign^fc1/weights/Adam/Assign^fc1/weights/Adam_1/Assign^fc1/bias/Adam/Assign^fc1/bias/Adam_1/Assign
I
Merge/MergeSummaryMergeSummaryloss*
_output_shapes
: *
N

init_all_tablesNoOp
(
legacy_init_opNoOp^init_all_tables
R
save_1/ConstConst*
dtype0*
valueB Bmodel*
_output_shapes
: 

save_1/StringJoin/inputs_1Const*
dtype0*<
value3B1 B+_temp_091fee57eb654b83b2bcb53c68596012/part*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
_output_shapes
: *
	separator *
N
S
save_1/num_shardsConst*
dtype0*
value	B :*
_output_shapes
: 
^
save_1/ShardedFilename/shardConst*
dtype0*
value	B : *
_output_shapes
: 

save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
ş
save_1/SaveV2/tensor_namesConst*
dtype0*ë
valueáBŢBbeta1_powerBbeta2_powerB
conv1/biasBconv1/bias/AdamBconv1/bias/Adam_1Bconv1/weightsBconv1/weights/AdamBconv1/weights/Adam_1B
conv2/biasBconv2/bias/AdamBconv2/bias/Adam_1Bconv2/weightsBconv2/weights/AdamBconv2/weights/Adam_1Bfc1/biasBfc1/bias/AdamBfc1/bias/Adam_1Bfc1/weightsBfc1/weights/AdamBfc1/weights/Adam_1Bglobal_step*
_output_shapes
:

save_1/SaveV2/shape_and_slicesConst*
dtype0*=
value4B2B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:
ć
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesbeta1_powerbeta2_power
conv1/biasconv1/bias/Adamconv1/bias/Adam_1conv1/weightsconv1/weights/Adamconv1/weights/Adam_1
conv2/biasconv2/bias/Adamconv2/bias/Adam_1conv2/weightsconv2/weights/Adamconv2/weights/Adam_1fc1/biasfc1/bias/Adamfc1/bias/Adam_1fc1/weightsfc1/weights/Adamfc1/weights/Adam_1global_step*#
dtypes
2

save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*)
_class
loc:@save_1/ShardedFilename*
T0*
_output_shapes
: 
Ł
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*
N*
_output_shapes
:*
T0*

axis 

save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(

save_1/IdentityIdentitysave_1/Const^save_1/control_dependency^save_1/MergeV2Checkpoints*
T0*
_output_shapes
: 
q
save_1/RestoreV2/tensor_namesConst*
dtype0* 
valueBBbeta1_power*
_output_shapes
:
j
!save_1/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:

save_1/AssignAssignbeta1_powersave_1/RestoreV2*
validate_shape(*
_class
loc:@conv1/bias*
use_locking(*
T0*
_output_shapes
: 
s
save_1/RestoreV2_1/tensor_namesConst*
dtype0* 
valueBBbeta2_power*
_output_shapes
:
l
#save_1/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save_1/RestoreV2_1	RestoreV2save_1/Constsave_1/RestoreV2_1/tensor_names#save_1/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
Ł
save_1/Assign_1Assignbeta2_powersave_1/RestoreV2_1*
validate_shape(*
_class
loc:@conv1/bias*
use_locking(*
T0*
_output_shapes
: 
r
save_1/RestoreV2_2/tensor_namesConst*
dtype0*
valueBB
conv1/bias*
_output_shapes
:
l
#save_1/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save_1/RestoreV2_2	RestoreV2save_1/Constsave_1/RestoreV2_2/tensor_names#save_1/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
Ś
save_1/Assign_2Assign
conv1/biassave_1/RestoreV2_2*
validate_shape(*
_class
loc:@conv1/bias*
use_locking(*
T0*
_output_shapes
: 
w
save_1/RestoreV2_3/tensor_namesConst*
dtype0*$
valueBBconv1/bias/Adam*
_output_shapes
:
l
#save_1/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save_1/RestoreV2_3	RestoreV2save_1/Constsave_1/RestoreV2_3/tensor_names#save_1/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
Ť
save_1/Assign_3Assignconv1/bias/Adamsave_1/RestoreV2_3*
validate_shape(*
_class
loc:@conv1/bias*
use_locking(*
T0*
_output_shapes
: 
y
save_1/RestoreV2_4/tensor_namesConst*
dtype0*&
valueBBconv1/bias/Adam_1*
_output_shapes
:
l
#save_1/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save_1/RestoreV2_4	RestoreV2save_1/Constsave_1/RestoreV2_4/tensor_names#save_1/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
­
save_1/Assign_4Assignconv1/bias/Adam_1save_1/RestoreV2_4*
validate_shape(*
_class
loc:@conv1/bias*
use_locking(*
T0*
_output_shapes
: 
u
save_1/RestoreV2_5/tensor_namesConst*
dtype0*"
valueBBconv1/weights*
_output_shapes
:
l
#save_1/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save_1/RestoreV2_5	RestoreV2save_1/Constsave_1/RestoreV2_5/tensor_names#save_1/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
¸
save_1/Assign_5Assignconv1/weightssave_1/RestoreV2_5*
validate_shape(* 
_class
loc:@conv1/weights*
use_locking(*
T0*&
_output_shapes
: 
z
save_1/RestoreV2_6/tensor_namesConst*
dtype0*'
valueBBconv1/weights/Adam*
_output_shapes
:
l
#save_1/RestoreV2_6/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save_1/RestoreV2_6	RestoreV2save_1/Constsave_1/RestoreV2_6/tensor_names#save_1/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
˝
save_1/Assign_6Assignconv1/weights/Adamsave_1/RestoreV2_6*
validate_shape(* 
_class
loc:@conv1/weights*
use_locking(*
T0*&
_output_shapes
: 
|
save_1/RestoreV2_7/tensor_namesConst*
dtype0*)
value BBconv1/weights/Adam_1*
_output_shapes
:
l
#save_1/RestoreV2_7/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save_1/RestoreV2_7	RestoreV2save_1/Constsave_1/RestoreV2_7/tensor_names#save_1/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes
:
ż
save_1/Assign_7Assignconv1/weights/Adam_1save_1/RestoreV2_7*
validate_shape(* 
_class
loc:@conv1/weights*
use_locking(*
T0*&
_output_shapes
: 
r
save_1/RestoreV2_8/tensor_namesConst*
dtype0*
valueBB
conv2/bias*
_output_shapes
:
l
#save_1/RestoreV2_8/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save_1/RestoreV2_8	RestoreV2save_1/Constsave_1/RestoreV2_8/tensor_names#save_1/RestoreV2_8/shape_and_slices*
dtypes
2*
_output_shapes
:
Ś
save_1/Assign_8Assign
conv2/biassave_1/RestoreV2_8*
validate_shape(*
_class
loc:@conv2/bias*
use_locking(*
T0*
_output_shapes
:@
w
save_1/RestoreV2_9/tensor_namesConst*
dtype0*$
valueBBconv2/bias/Adam*
_output_shapes
:
l
#save_1/RestoreV2_9/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save_1/RestoreV2_9	RestoreV2save_1/Constsave_1/RestoreV2_9/tensor_names#save_1/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes
:
Ť
save_1/Assign_9Assignconv2/bias/Adamsave_1/RestoreV2_9*
validate_shape(*
_class
loc:@conv2/bias*
use_locking(*
T0*
_output_shapes
:@
z
 save_1/RestoreV2_10/tensor_namesConst*
dtype0*&
valueBBconv2/bias/Adam_1*
_output_shapes
:
m
$save_1/RestoreV2_10/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ą
save_1/RestoreV2_10	RestoreV2save_1/Const save_1/RestoreV2_10/tensor_names$save_1/RestoreV2_10/shape_and_slices*
dtypes
2*
_output_shapes
:
Ż
save_1/Assign_10Assignconv2/bias/Adam_1save_1/RestoreV2_10*
validate_shape(*
_class
loc:@conv2/bias*
use_locking(*
T0*
_output_shapes
:@
v
 save_1/RestoreV2_11/tensor_namesConst*
dtype0*"
valueBBconv2/weights*
_output_shapes
:
m
$save_1/RestoreV2_11/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ą
save_1/RestoreV2_11	RestoreV2save_1/Const save_1/RestoreV2_11/tensor_names$save_1/RestoreV2_11/shape_and_slices*
dtypes
2*
_output_shapes
:
ş
save_1/Assign_11Assignconv2/weightssave_1/RestoreV2_11*
validate_shape(* 
_class
loc:@conv2/weights*
use_locking(*
T0*&
_output_shapes
: @
{
 save_1/RestoreV2_12/tensor_namesConst*
dtype0*'
valueBBconv2/weights/Adam*
_output_shapes
:
m
$save_1/RestoreV2_12/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ą
save_1/RestoreV2_12	RestoreV2save_1/Const save_1/RestoreV2_12/tensor_names$save_1/RestoreV2_12/shape_and_slices*
dtypes
2*
_output_shapes
:
ż
save_1/Assign_12Assignconv2/weights/Adamsave_1/RestoreV2_12*
validate_shape(* 
_class
loc:@conv2/weights*
use_locking(*
T0*&
_output_shapes
: @
}
 save_1/RestoreV2_13/tensor_namesConst*
dtype0*)
value BBconv2/weights/Adam_1*
_output_shapes
:
m
$save_1/RestoreV2_13/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ą
save_1/RestoreV2_13	RestoreV2save_1/Const save_1/RestoreV2_13/tensor_names$save_1/RestoreV2_13/shape_and_slices*
dtypes
2*
_output_shapes
:
Á
save_1/Assign_13Assignconv2/weights/Adam_1save_1/RestoreV2_13*
validate_shape(* 
_class
loc:@conv2/weights*
use_locking(*
T0*&
_output_shapes
: @
q
 save_1/RestoreV2_14/tensor_namesConst*
dtype0*
valueBBfc1/bias*
_output_shapes
:
m
$save_1/RestoreV2_14/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ą
save_1/RestoreV2_14	RestoreV2save_1/Const save_1/RestoreV2_14/tensor_names$save_1/RestoreV2_14/shape_and_slices*
dtypes
2*
_output_shapes
:
¤
save_1/Assign_14Assignfc1/biassave_1/RestoreV2_14*
validate_shape(*
_class
loc:@fc1/bias*
use_locking(*
T0*
_output_shapes
:
v
 save_1/RestoreV2_15/tensor_namesConst*
dtype0*"
valueBBfc1/bias/Adam*
_output_shapes
:
m
$save_1/RestoreV2_15/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ą
save_1/RestoreV2_15	RestoreV2save_1/Const save_1/RestoreV2_15/tensor_names$save_1/RestoreV2_15/shape_and_slices*
dtypes
2*
_output_shapes
:
Š
save_1/Assign_15Assignfc1/bias/Adamsave_1/RestoreV2_15*
validate_shape(*
_class
loc:@fc1/bias*
use_locking(*
T0*
_output_shapes
:
x
 save_1/RestoreV2_16/tensor_namesConst*
dtype0*$
valueBBfc1/bias/Adam_1*
_output_shapes
:
m
$save_1/RestoreV2_16/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ą
save_1/RestoreV2_16	RestoreV2save_1/Const save_1/RestoreV2_16/tensor_names$save_1/RestoreV2_16/shape_and_slices*
dtypes
2*
_output_shapes
:
Ť
save_1/Assign_16Assignfc1/bias/Adam_1save_1/RestoreV2_16*
validate_shape(*
_class
loc:@fc1/bias*
use_locking(*
T0*
_output_shapes
:
t
 save_1/RestoreV2_17/tensor_namesConst*
dtype0* 
valueBBfc1/weights*
_output_shapes
:
m
$save_1/RestoreV2_17/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ą
save_1/RestoreV2_17	RestoreV2save_1/Const save_1/RestoreV2_17/tensor_names$save_1/RestoreV2_17/shape_and_slices*
dtypes
2*
_output_shapes
:
Ż
save_1/Assign_17Assignfc1/weightssave_1/RestoreV2_17*
validate_shape(*
_class
loc:@fc1/weights*
use_locking(*
T0*
_output_shapes
:	 
y
 save_1/RestoreV2_18/tensor_namesConst*
dtype0*%
valueBBfc1/weights/Adam*
_output_shapes
:
m
$save_1/RestoreV2_18/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ą
save_1/RestoreV2_18	RestoreV2save_1/Const save_1/RestoreV2_18/tensor_names$save_1/RestoreV2_18/shape_and_slices*
dtypes
2*
_output_shapes
:
´
save_1/Assign_18Assignfc1/weights/Adamsave_1/RestoreV2_18*
validate_shape(*
_class
loc:@fc1/weights*
use_locking(*
T0*
_output_shapes
:	 
{
 save_1/RestoreV2_19/tensor_namesConst*
dtype0*'
valueBBfc1/weights/Adam_1*
_output_shapes
:
m
$save_1/RestoreV2_19/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ą
save_1/RestoreV2_19	RestoreV2save_1/Const save_1/RestoreV2_19/tensor_names$save_1/RestoreV2_19/shape_and_slices*
dtypes
2*
_output_shapes
:
ś
save_1/Assign_19Assignfc1/weights/Adam_1save_1/RestoreV2_19*
validate_shape(*
_class
loc:@fc1/weights*
use_locking(*
T0*
_output_shapes
:	 
t
 save_1/RestoreV2_20/tensor_namesConst*
dtype0* 
valueBBglobal_step*
_output_shapes
:
m
$save_1/RestoreV2_20/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ą
save_1/RestoreV2_20	RestoreV2save_1/Const save_1/RestoreV2_20/tensor_names$save_1/RestoreV2_20/shape_and_slices*
dtypes
2*
_output_shapes
:
Ś
save_1/Assign_20Assignglobal_stepsave_1/RestoreV2_20*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0*
_output_shapes
: 

save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_20
1
save_1/restore_allNoOp^save_1/restore_shard "B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"
train_op

Adam"Ť
	variables
h
conv1/weights:0conv1/weights/Assignconv1/weights/read:02)conv1/weights/Initializer/random_normal:0
\
conv1/bias:0conv1/bias/Assignconv1/bias/read:02&conv1/bias/Initializer/random_normal:0
h
conv2/weights:0conv2/weights/Assignconv2/weights/read:02)conv2/weights/Initializer/random_normal:0
\
conv2/bias:0conv2/bias/Assignconv2/bias/read:02&conv2/bias/Initializer/random_normal:0
`
fc1/weights:0fc1/weights/Assignfc1/weights/read:02'fc1/weights/Initializer/random_normal:0
T

fc1/bias:0fc1/bias/Assignfc1/bias/read:02$fc1/bias/Initializer/random_normal:0
T
global_step:0global_step/Assignglobal_step/read:02global_step/initial_value:0
T
beta1_power:0beta1_power/Assignbeta1_power/read:02beta1_power/initial_value:0
T
beta2_power:0beta2_power/Assignbeta2_power/read:02beta2_power/initial_value:0
t
conv1/weights/Adam:0conv1/weights/Adam/Assignconv1/weights/Adam/read:02&conv1/weights/Adam/Initializer/zeros:0
|
conv1/weights/Adam_1:0conv1/weights/Adam_1/Assignconv1/weights/Adam_1/read:02(conv1/weights/Adam_1/Initializer/zeros:0
h
conv1/bias/Adam:0conv1/bias/Adam/Assignconv1/bias/Adam/read:02#conv1/bias/Adam/Initializer/zeros:0
p
conv1/bias/Adam_1:0conv1/bias/Adam_1/Assignconv1/bias/Adam_1/read:02%conv1/bias/Adam_1/Initializer/zeros:0
t
conv2/weights/Adam:0conv2/weights/Adam/Assignconv2/weights/Adam/read:02&conv2/weights/Adam/Initializer/zeros:0
|
conv2/weights/Adam_1:0conv2/weights/Adam_1/Assignconv2/weights/Adam_1/read:02(conv2/weights/Adam_1/Initializer/zeros:0
h
conv2/bias/Adam:0conv2/bias/Adam/Assignconv2/bias/Adam/read:02#conv2/bias/Adam/Initializer/zeros:0
p
conv2/bias/Adam_1:0conv2/bias/Adam_1/Assignconv2/bias/Adam_1/read:02%conv2/bias/Adam_1/Initializer/zeros:0
l
fc1/weights/Adam:0fc1/weights/Adam/Assignfc1/weights/Adam/read:02$fc1/weights/Adam/Initializer/zeros:0
t
fc1/weights/Adam_1:0fc1/weights/Adam_1/Assignfc1/weights/Adam_1/read:02&fc1/weights/Adam_1/Initializer/zeros:0
`
fc1/bias/Adam:0fc1/bias/Adam/Assignfc1/bias/Adam/read:02!fc1/bias/Adam/Initializer/zeros:0
h
fc1/bias/Adam_1:0fc1/bias/Adam_1/Assignfc1/bias/Adam_1/read:02#fc1/bias/Adam_1/Initializer/zeros:0"
	summaries


loss:0"$
legacy_init_op

legacy_init_op"ă
trainable_variablesËČ
h
conv1/weights:0conv1/weights/Assignconv1/weights/read:02)conv1/weights/Initializer/random_normal:0
\
conv1/bias:0conv1/bias/Assignconv1/bias/read:02&conv1/bias/Initializer/random_normal:0
h
conv2/weights:0conv2/weights/Assignconv2/weights/read:02)conv2/weights/Initializer/random_normal:0
\
conv2/bias:0conv2/bias/Assignconv2/bias/read:02&conv2/bias/Initializer/random_normal:0
`
fc1/weights:0fc1/weights/Assignfc1/weights/read:02'fc1/weights/Initializer/random_normal:0
T

fc1/bias:0fc1/bias/Assignfc1/bias/read:02$fc1/bias/Initializer/random_normal:0*Á
serving_default­
7
image.
Placeholder_1:0˙˙˙˙˙˙˙˙˙  +
softmax 
	Softmax:0˙˙˙˙˙˙˙˙˙)

prediction
ArgMax:0	˙˙˙˙˙˙˙˙˙tensorflow/serving/predict