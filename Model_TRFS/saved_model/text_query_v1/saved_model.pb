??
??
:
Add
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
p
GatherNd
params"Tparams
indices"Tindices
output"Tparams"
Tparamstype"
Tindicestype:
2	
?
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?
.
Identity

input"T
output"T"	
Ttype
?
InitializeTableFromTextFileV2
table_handle
filename"
	key_indexint(0?????????"
value_indexint(0?????????"+

vocab_sizeint?????????(0?????????"
	delimiterstring	"
offsetint ?
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype?
2
LookupTableSizeV2
table_handle
size	?
?
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
U
NotEqual
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(?
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
dtypetype?
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
?
SparseFillEmptyRows
indices	
values"T
dense_shape	
default_value"T
output_indices	
output_values"T
empty_row_indicator

reverse_index_map	"	
Ttype
?
SparseSegmentSqrtN	
data"T
indices"Tidx
segment_ids"Tsegmentids
output"T"
Ttype:
2"
Tidxtype0:
2	"
Tsegmentidstype0:
2	
?
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
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
m
StaticRegexReplace	
input

output"
patternstring"
rewritestring"
replace_globalbool(
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
c
StringSplit	
input
	delimiter
indices	

values	
shape	"

skip_emptybool(
G
StringToHashBucketFast	
input

output	"
num_bucketsint(0
P
Unique
x"T
y"T
idx"out_idx"	
Ttype"
out_idxtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
9
VarIsInitializedOp
resource
is_initialized
?
E
Where

input"T	
index	"%
Ttype0
:
2	
"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68??
n
VariableVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??52*
shared_name
Variable
g
Variable/Read/ReadVariableOpReadVariableOpVariable* 
_output_shapes
:
??52*
dtype0
W
asset_path_initializerPlaceholder*
_output_shapes
: *
dtype0*
shape: 
?

Variable_1VarHandleOp*
_class
loc:@Variable_1*
_output_shapes
: *
dtype0*
shape: *
shared_name
Variable_1
e
+Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_1*
_output_shapes
: 
V
Variable_1/AssignAssignVariableOp
Variable_1asset_path_initializer*
dtype0
a
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes
: *
dtype0
?
StatefulPartitionedCallStatefulPartitionedCall*	
Tin
 *
Tout
2*
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
GPU2*0J 8? */
f*R(
&__inference_restored_function_body_480
P
ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
e
ReadVariableOpReadVariableOp
Variable_1^Variable_1/Assign*
_output_shapes
: *
dtype0
?
StatefulPartitionedCall_1StatefulPartitionedCallReadVariableOpStatefulPartitionedCall*
Tin
2*
Tout
2*
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
GPU2*0J 8? *!
fR
__inference_<lambda>_469
<
NoOpNoOp^StatefulPartitionedCall_1^Variable_1/Assign
?
Const_1Const"/device:CPU:0*
_output_shapes
: *
dtype0*?
value?B? B?
?
layer_with_weights-0
layer-0
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	
signatures*
?
	
_func

	_callable

Variable:0
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*

0*
* 
* 
?
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

serving_default* 
?
_vocabulary_file

_table

embeddings
	variables
trainable_variables

signatures
#_self_saveable_object_factories
__call__
_preprocess*
\V
VARIABLE_VALUEVariable:layer_with_weights-0/Variable:0/.ATTRIBUTES/VARIABLE_VALUE*

0*
* 
* 
?
non_trainable_variables

 layers
!metrics
"layer_regularization_losses
#layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 

0*

0*
* 
* 
* 
* 
* 
@
$_create_resource
%_initialize
&_destroy_resource* 

0*
* 
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
|
!serving_default_keras_layer_inputPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCall_2StatefulPartitionedCall!serving_default_keras_layer_inputStatefulPartitionedCallConstVariable*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference_signature_wrapper_407
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameVariable/Read/ReadVariableOpConst_1*
Tin
2*
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
GPU2*0J 8? *%
f R
__inference__traced_save_507
?
StatefulPartitionedCall_4StatefulPartitionedCallsaver_filenameVariable*
Tin
2*
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
GPU2*0J 8? *(
f#R!
__inference__traced_restore_520??
?
?
C__inference_sequential_layer_call_and_return_conditional_losses_394

inputs
keras_layer_386
keras_layer_388	#
keras_layer_390:
??52
identity??#keras_layer/StatefulPartitionedCall?
#keras_layer/StatefulPartitionedCallStatefulPartitionedCallinputskeras_layer_386keras_layer_388keras_layer_390*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? */
f*R(
&__inference_restored_function_body_205{
IdentityIdentity,keras_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2l
NoOpNoOp$^keras_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2J
#keras_layer/StatefulPartitionedCall#keras_layer/StatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
&__inference_restored_function_body_205
	sentences
unknown
	unknown_0	
	unknown_1:
??52
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCall	sentencesunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*'
_output_shapes
:?????????2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *!
fR
__inference___call___119o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:N J
#
_output_shapes
:?????????
#
_user_specified_name	sentences:

_output_shapes
: 
?
?
)__inference_keras_layer_layer_call_fn_418

inputs
unknown
	unknown_0	
	unknown_1:
??52
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_keras_layer_layer_call_and_return_conditional_losses_232o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
)__inference_keras_layer_layer_call_fn_429

inputs
unknown
	unknown_0	
	unknown_1:
??52
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_keras_layer_layer_call_and_return_conditional_losses_275o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
C__inference_sequential_layer_call_and_return_conditional_losses_241

inputs
keras_layer_233
keras_layer_235	#
keras_layer_237:
??52
identity??#keras_layer/StatefulPartitionedCall?
#keras_layer/StatefulPartitionedCallStatefulPartitionedCallinputskeras_layer_233keras_layer_235keras_layer_237*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_keras_layer_layer_call_and_return_conditional_losses_232{
IdentityIdentity,keras_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2l
NoOpNoOp$^keras_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2J
#keras_layer/StatefulPartitionedCall#keras_layer/StatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
__inference___call___119
	sentences"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2	Y
Eembedding_lookup_sparse_embedding_lookup_read_readvariableop_resource:
??52
identity??StatefulPartitionedCall?(embedding_lookup_sparse/embedding_lookup?<embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp?
StatefulPartitionedCallStatefulPartitionedCall	sentencesstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*
Tin
2	*
Tout
2			*)
_gradient_op_typePartitionedCall-90*<
_output_shapes*
(:?????????:?????????:**
config_proto

GPU 

CPU2J 8*#
fR
__inference__preprocess_96|
+embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ~
-embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ~
-embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
%embedding_lookup_sparse/strided_sliceStridedSlice StatefulPartitionedCall:output:04embedding_lookup_sparse/strided_slice/stack:output:06embedding_lookup_sparse/strided_slice/stack_1:output:06embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
embedding_lookup_sparse/CastCast.embedding_lookup_sparse/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
embedding_lookup_sparse/UniqueUnique StatefulPartitionedCall:output:1*
T0	*2
_output_shapes 
:?????????:??????????
<embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOpReadVariableOpEembedding_lookup_sparse_embedding_lookup_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0* 
_output_shapes
:
??52*
dtype0?
1embedding_lookup_sparse/embedding_lookup/IdentityIdentityDembedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??52?
(embedding_lookup_sparse/embedding_lookupResourceGatherEembedding_lookup_sparse_embedding_lookup_read_readvariableop_resource"embedding_lookup_sparse/Unique:y:0=^embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*O
_classE
CAloc:@embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp*'
_output_shapes
:?????????2*
dtype0?
3embedding_lookup_sparse/embedding_lookup/Identity_1Identity1embedding_lookup_sparse/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*O
_classE
CAloc:@embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp*'
_output_shapes
:?????????2?
3embedding_lookup_sparse/embedding_lookup/Identity_2Identity<embedding_lookup_sparse/embedding_lookup/Identity_1:output:0*
T0*'
_output_shapes
:?????????2?
embedding_lookup_sparseSparseSegmentSqrtN<embedding_lookup_sparse/embedding_lookup/Identity_2:output:0$embedding_lookup_sparse/Unique:idx:0 embedding_lookup_sparse/Cast:y:0*
T0*'
_output_shapes
:?????????2?
IdentityIdentity embedding_lookup_sparse:output:0^StatefulPartitionedCall)^embedding_lookup_sparse/embedding_lookup=^embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp*
T0*'
_output_shapes
:?????????2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????:: :22
StatefulPartitionedCallStatefulPartitionedCall2T
(embedding_lookup_sparse/embedding_lookup(embedding_lookup_sparse/embedding_lookup2|
<embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp<embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp:N J
#
_output_shapes
:?????????
#
_user_specified_name	sentences:

_output_shapes
: 
?
S
&__inference_restored_function_body_480
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCall*	
Tin
 *
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *
fR
__inference__creator_6^
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*
_input_shapes 22
StatefulPartitionedCallStatefulPartitionedCall
?

?
__inference__traced_restore_520
file_prefix-
assignvariableop_variable:
??52

identity_2??AssignVariableOp?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*m
valuedBbB:layer_with_weights-0/Variable:0/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHt
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes

::*
dtypes
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOpassignvariableop_variableIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 m

Identity_1Identityfile_prefix^AssignVariableOp^NoOp"/device:CPU:0*
T0*
_output_shapes
: U

Identity_2IdentityIdentity_1:output:0^NoOp_1*
T0*
_output_shapes
: [
NoOp_1NoOp^AssignVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_2Identity_2:output:0*
_input_shapes
: : 2$
AssignVariableOpAssignVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?5
?
__inference__preprocess_96
	sentences:
6none_lookup_none_lookup_lookuptablefindv2_table_handle;
7none_lookup_none_lookup_lookuptablefindv2_default_value	

identity_3	

identity_4	

identity_5	??)None_Lookup/None_Lookup/LookupTableFindV2?'None_Lookup/None_Size/LookupTableSizeV2?+None_Lookup_1/None_Lookup/LookupTableFindV2?)None_Lookup_1/None_Size/LookupTableSizeV2?
normalize/StaticRegexReplaceStaticRegexReplace	sentences*#
_output_shapes
:?????????*
pattern	[\p{P}]*
rewrite Y
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????

ExpandDims
ExpandDims%normalize/StaticRegexReplace:output:0ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????c
"DenseToSparseTensor/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
DenseToSparseTensor/NotEqualNotEqualExpandDims:output:0+DenseToSparseTensor/ignore_value/x:output:0*
T0*'
_output_shapes
:?????????o
DenseToSparseTensor/indicesWhere DenseToSparseTensor/NotEqual:z:0*'
_output_shapes
:??????????
DenseToSparseTensor/valuesGatherNdExpandDims:output:0#DenseToSparseTensor/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:?????????r
DenseToSparseTensor/dense_shapeShapeExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	\
tokenize/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
value	B B ?
 tokenize/StringSplit/StringSplitStringSplit%normalize/StaticRegexReplace:output:0#tokenize/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
None_Lookup/hash_bucketStringToHashBucketFast)tokenize/StringSplit/StringSplit:values:0*#
_output_shapes
:?????????*
num_buckets??
)None_Lookup/None_Lookup/LookupTableFindV2LookupTableFindV26none_lookup_none_lookup_lookuptablefindv2_table_handle)tokenize/StringSplit/StringSplit:values:07none_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
'None_Lookup/None_Size/LookupTableSizeV2LookupTableSizeV26none_lookup_none_lookup_lookuptablefindv2_table_handle*^None_Lookup/None_Lookup/LookupTableFindV2*
_output_shapes
: ?
None_Lookup/AddAdd None_Lookup/hash_bucket:output:0.None_Lookup/None_Size/LookupTableSizeV2:size:0*
T0	*#
_output_shapes
:??????????
None_Lookup/NotEqualNotEqual2None_Lookup/None_Lookup/LookupTableFindV2:values:07none_lookup_none_lookup_lookuptablefindv2_default_value*
T0	*#
_output_shapes
:??????????
None_Lookup/SelectSelectNone_Lookup/NotEqual:z:02None_Lookup/None_Lookup/LookupTableFindV2:values:0None_Lookup/Add:z:0*
T0	*#
_output_shapes
:?????????F
ConstConst*
_output_shapes
: *
dtype0*
valueB B o
None_Lookup_1/hash_bucketStringToHashBucketFastConst:output:0*
_output_shapes
: *
num_buckets??
+None_Lookup_1/None_Lookup/LookupTableFindV2LookupTableFindV26none_lookup_none_lookup_lookuptablefindv2_table_handleConst:output:07none_lookup_none_lookup_lookuptablefindv2_default_value(^None_Lookup/None_Size/LookupTableSizeV2*	
Tin0*

Tout0	*
_output_shapes
: ?
)None_Lookup_1/None_Size/LookupTableSizeV2LookupTableSizeV26none_lookup_none_lookup_lookuptablefindv2_table_handle,^None_Lookup_1/None_Lookup/LookupTableFindV2*
_output_shapes
: ?
None_Lookup_1/AddAdd"None_Lookup_1/hash_bucket:output:00None_Lookup_1/None_Size/LookupTableSizeV2:size:0*
T0	*
_output_shapes
: ?
None_Lookup_1/NotEqualNotEqual4None_Lookup_1/None_Lookup/LookupTableFindV2:values:07none_lookup_none_lookup_lookuptablefindv2_default_value*
T0	*
_output_shapes
: ?
None_Lookup_1/SelectSelectNone_Lookup_1/NotEqual:z:04None_Lookup_1/None_Lookup/LookupTableFindV2:values:0None_Lookup_1/Add:z:0*
T0	*
_output_shapes
: ?
'SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows*tokenize/StringSplit/StringSplit:indices:0None_Lookup/Select:output:0(tokenize/StringSplit/StringSplit:shape:0None_Lookup_1/Select:output:0*
T0	*T
_output_shapesB
@:?????????:?????????:?????????:??????????
IdentityIdentity8SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0*
T0	*'
_output_shapes
:?????????}

Identity_1Identity7SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*#
_output_shapes
:?????????e

Identity_2Identity(tokenize/StringSplit/StringSplit:shape:0*
T0	*
_output_shapes
:W
Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B : b
MaxMaxIdentity:output:0Max/reduction_indices:output:0*
T0	*
_output_shapes
:I
Const_1Const*
_output_shapes
: *
dtype0	*
value	B	 R Y
ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Q
ones_like/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 Rj
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0	*
_output_shapes
:Q
AddAddMax:output:0ones_like:output:0*
T0	*
_output_shapes
:R
MaximumMaximumConst_1:output:0Add:z:0*
T0	*
_output_shapes
:?

Identity_3IdentityIdentity:output:0*^None_Lookup/None_Lookup/LookupTableFindV2(^None_Lookup/None_Size/LookupTableSizeV2,^None_Lookup_1/None_Lookup/LookupTableFindV2*^None_Lookup_1/None_Size/LookupTableSizeV2*
T0	*'
_output_shapes
:??????????

Identity_4IdentityIdentity_1:output:0*^None_Lookup/None_Lookup/LookupTableFindV2(^None_Lookup/None_Size/LookupTableSizeV2,^None_Lookup_1/None_Lookup/LookupTableFindV2*^None_Lookup_1/None_Size/LookupTableSizeV2*
T0	*#
_output_shapes
:??????????

Identity_5IdentityMaximum:z:0*^None_Lookup/None_Lookup/LookupTableFindV2(^None_Lookup/None_Size/LookupTableSizeV2,^None_Lookup_1/None_Lookup/LookupTableFindV2*^None_Lookup_1/None_Size/LookupTableSizeV2*
T0	*
_output_shapes
:"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????:: 2V
)None_Lookup/None_Lookup/LookupTableFindV2)None_Lookup/None_Lookup/LookupTableFindV22R
'None_Lookup/None_Size/LookupTableSizeV2'None_Lookup/None_Size/LookupTableSizeV22Z
+None_Lookup_1/None_Lookup/LookupTableFindV2+None_Lookup_1/None_Lookup/LookupTableFindV22V
)None_Lookup_1/None_Size/LookupTableSizeV2)None_Lookup_1/None_Size/LookupTableSizeV2:N J
#
_output_shapes
:?????????
#
_user_specified_name	sentences:

_output_shapes
: 
?
?
(__inference_sequential_layer_call_fn_361

inputs
unknown
	unknown_0	
	unknown_1:
??52
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_sequential_layer_call_and_return_conditional_losses_241o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?	
?
C__inference_sequential_layer_call_and_return_conditional_losses_339
keras_layer_input
keras_layer_331
keras_layer_333	#
keras_layer_335:
??52
identity??#keras_layer/StatefulPartitionedCall?
#keras_layer/StatefulPartitionedCallStatefulPartitionedCallkeras_layer_inputkeras_layer_331keras_layer_333keras_layer_335*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_keras_layer_layer_call_and_return_conditional_losses_232{
IdentityIdentity,keras_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2l
NoOpNoOp$^keras_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2J
#keras_layer/StatefulPartitionedCall#keras_layer/StatefulPartitionedCall:V R
#
_output_shapes
:?????????
+
_user_specified_namekeras_layer_input:

_output_shapes
: 
?
6
__inference__creator_6
identity??
hash_table?

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*?
shared_name??hash_table_<google3.third_party.tensorflow.python.training.tracking.tracking.TrackableAsset object at 0x71db83132250>_-2_-1_load_1_2*
use_node_name_sharing(*
value_dtype0	]
IdentityIdentityhash_table:table_handle:0^hash_table*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
?
?
D__inference_keras_layer_layer_call_and_return_conditional_losses_440

inputs
unknown
	unknown_0	
	unknown_1:
??52
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? */
f*R(
&__inference_restored_function_body_205o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
!__inference_signature_wrapper_407
keras_layer_input
unknown
	unknown_0	
	unknown_1:
??52
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallkeras_layer_inputunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *'
f"R 
__inference__wrapped_model_214o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
#
_output_shapes
:?????????
+
_user_specified_namekeras_layer_input:

_output_shapes
: 
?
?
D__inference_keras_layer_layer_call_and_return_conditional_losses_275

inputs
unknown
	unknown_0	
	unknown_1:
??52
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? */
f*R(
&__inference_restored_function_body_205o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?	
?
C__inference_sequential_layer_call_and_return_conditional_losses_350
keras_layer_input
keras_layer_342
keras_layer_344	#
keras_layer_346:
??52
identity??#keras_layer/StatefulPartitionedCall?
#keras_layer/StatefulPartitionedCallStatefulPartitionedCallkeras_layer_inputkeras_layer_342keras_layer_344keras_layer_346*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_keras_layer_layer_call_and_return_conditional_losses_275{
IdentityIdentity,keras_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2l
NoOpNoOp$^keras_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2J
#keras_layer/StatefulPartitionedCall#keras_layer/StatefulPartitionedCall:V R
#
_output_shapes
:?????????
+
_user_specified_namekeras_layer_input:

_output_shapes
: 
?
?
C__inference_sequential_layer_call_and_return_conditional_losses_308

inputs
keras_layer_300
keras_layer_302	#
keras_layer_304:
??52
identity??#keras_layer/StatefulPartitionedCall?
#keras_layer/StatefulPartitionedCallStatefulPartitionedCallinputskeras_layer_300keras_layer_302keras_layer_304*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_keras_layer_layer_call_and_return_conditional_losses_275{
IdentityIdentity,keras_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2l
NoOpNoOp$^keras_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2J
#keras_layer/StatefulPartitionedCall#keras_layer/StatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
__inference__traced_save_507
file_prefix'
#savev2_variable_read_readvariableop
savev2_const_1

identity_1??MergeV2Checkpointsw
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
_temp/part?
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
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*m
valuedBbB:layer_with_weights-0/Variable:0/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHq
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0#savev2_variable_read_readvariableopsavev2_const_1"/device:CPU:0*
_output_shapes
 *
dtypes
2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
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

identity_1Identity_1:output:0*#
_input_shapes
: :
??52: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
??52:

_output_shapes
: 
?
?
(__inference_sequential_layer_call_fn_328
keras_layer_input
unknown
	unknown_0	
	unknown_1:
??52
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallkeras_layer_inputunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_sequential_layer_call_and_return_conditional_losses_308o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
#
_output_shapes
:?????????
+
_user_specified_namekeras_layer_input:

_output_shapes
: 
?
o
&__inference_restored_function_body_461
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallunknown	unknown_0*
Tin
2*
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *$
fR
__inference__initializer_12^
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 22
StatefulPartitionedCallStatefulPartitionedCall: 

_output_shapes
: 
?
?
__inference__initializer_12
table_init_asset_filepath9
5table_init_initializetablefromtextfilev2_table_handle
identity??(table_init/InitializeTableFromTextFileV2?
(table_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV25table_init_initializetablefromtextfilev2_table_handletable_init_asset_filepath*
_output_shapes
 *
	key_index?????????*
value_index?????????G
ConstConst*
_output_shapes
: *
dtype0*
value	B :p
IdentityIdentityConst:output:0)^table_init/InitializeTableFromTextFileV2*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: :2T
(table_init/InitializeTableFromTextFileV2(table_init/InitializeTableFromTextFileV2: 

_output_shapes
: 
?
?
C__inference_sequential_layer_call_and_return_conditional_losses_383

inputs
keras_layer_375
keras_layer_377	#
keras_layer_379:
??52
identity??#keras_layer/StatefulPartitionedCall?
#keras_layer/StatefulPartitionedCallStatefulPartitionedCallinputskeras_layer_375keras_layer_377keras_layer_379*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? */
f*R(
&__inference_restored_function_body_205{
IdentityIdentity,keras_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2l
NoOpNoOp$^keras_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2J
#keras_layer/StatefulPartitionedCall#keras_layer/StatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?	
?
__inference__wrapped_model_214
keras_layer_input
sequential_keras_layer_206
sequential_keras_layer_208	.
sequential_keras_layer_210:
??52
identity??.sequential/keras_layer/StatefulPartitionedCall?
.sequential/keras_layer/StatefulPartitionedCallStatefulPartitionedCallkeras_layer_inputsequential_keras_layer_206sequential_keras_layer_208sequential_keras_layer_210*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? */
f*R(
&__inference_restored_function_body_205?
IdentityIdentity7sequential/keras_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2w
NoOpNoOp/^sequential/keras_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2`
.sequential/keras_layer/StatefulPartitionedCall.sequential/keras_layer/StatefulPartitionedCall:V R
#
_output_shapes
:?????????
+
_user_specified_namekeras_layer_input:

_output_shapes
: 
?
?
D__inference_keras_layer_layer_call_and_return_conditional_losses_451

inputs
unknown
	unknown_0	
	unknown_1:
??52
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? */
f*R(
&__inference_restored_function_body_205o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
)
__inference__destroyer_16
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
(__inference_sequential_layer_call_fn_372

inputs
unknown
	unknown_0	
	unknown_1:
??52
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_sequential_layer_call_and_return_conditional_losses_308o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
a
__inference_<lambda>_469
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallunknown	unknown_0*
Tin
2*
Tout
2*
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
GPU2*0J 8? */
f*R(
&__inference_restored_function_body_461J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 22
StatefulPartitionedCallStatefulPartitionedCall: 

_output_shapes
: 
?
?
D__inference_keras_layer_layer_call_and_return_conditional_losses_232

inputs
unknown
	unknown_0	
	unknown_1:
??52
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? */
f*R(
&__inference_restored_function_body_205o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
(__inference_sequential_layer_call_fn_250
keras_layer_input
unknown
	unknown_0	
	unknown_1:
??52
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallkeras_layer_inputunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_sequential_layer_call_and_return_conditional_losses_241o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
#
_output_shapes
:?????????
+
_user_specified_namekeras_layer_input:

_output_shapes
: "?L
saver_filename:0StatefulPartitionedCall_3:0StatefulPartitionedCall_48"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
K
keras_layer_input6
#serving_default_keras_layer_input:0?????????A
keras_layer2
StatefulPartitionedCall_2:0?????????2tensorflow/serving/predict2(

asset_path_initializer:0
tokens.txt:?;
?
layer_with_weights-0
layer-0
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	
signatures"
_tf_keras_sequential
?
	
_func

	_callable

Variable:0
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
(__inference_sequential_layer_call_fn_250
(__inference_sequential_layer_call_fn_361
(__inference_sequential_layer_call_fn_372
(__inference_sequential_layer_call_fn_328?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
C__inference_sequential_layer_call_and_return_conditional_losses_383
C__inference_sequential_layer_call_and_return_conditional_losses_394
C__inference_sequential_layer_call_and_return_conditional_losses_339
C__inference_sequential_layer_call_and_return_conditional_losses_350?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
__inference__wrapped_model_214keras_layer_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
,
serving_default"
signature_map
?
_vocabulary_file

_table

embeddings
	variables
trainable_variables

signatures
#_self_saveable_object_factories
__call__
_preprocess"
_generic_user_object
:
??522Variable
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
non_trainable_variables

 layers
!metrics
"layer_regularization_losses
#layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_keras_layer_layer_call_fn_418
)__inference_keras_layer_layer_call_fn_429?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_keras_layer_layer_call_and_return_conditional_losses_440
D__inference_keras_layer_layer_call_and_return_conditional_losses_451?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
!__inference_signature_wrapper_407keras_layer_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
* 
@
$_create_resource
%_initialize
&_destroy_resourceR 
'
0"
trackable_list_wrapper
"
signature_map
 "
trackable_dict_wrapper
?2?
__inference___call___119?
???
FullArgSpec
args?
j	sentences
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
??????????
?2?
__inference__preprocess_96?
???
FullArgSpec
args?
j	sentences
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
??????????
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?2?
__inference__creator_6?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_12?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_16?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
	J
Constk
__inference___call___119O'.?+
$?!
?
	sentences?????????
? "??????????22
__inference__creator_6?

? 
? "? 5
__inference__destroyer_16?

? 
? "? ;
__inference__initializer_12?

? 
? "? ?
__inference__preprocess_96'.?+
$?!
?
	sentences?????????
? "I?F
?
0?????????	
?
1?????????	
?
2	?
__inference__wrapped_model_214x'6?3
,?)
'?$
keras_layer_input?????????
? "9?6
4
keras_layer%?"
keras_layer?????????2?
D__inference_keras_layer_layer_call_and_return_conditional_losses_440]'/?,
%?"
?
inputs?????????
p 
? "%?"
?
0?????????2
? ?
D__inference_keras_layer_layer_call_and_return_conditional_losses_451]'/?,
%?"
?
inputs?????????
p
? "%?"
?
0?????????2
? }
)__inference_keras_layer_layer_call_fn_418P'/?,
%?"
?
inputs?????????
p 
? "??????????2}
)__inference_keras_layer_layer_call_fn_429P'/?,
%?"
?
inputs?????????
p
? "??????????2?
C__inference_sequential_layer_call_and_return_conditional_losses_339l'>?;
4?1
'?$
keras_layer_input?????????
p 

 
? "%?"
?
0?????????2
? ?
C__inference_sequential_layer_call_and_return_conditional_losses_350l'>?;
4?1
'?$
keras_layer_input?????????
p

 
? "%?"
?
0?????????2
? ?
C__inference_sequential_layer_call_and_return_conditional_losses_383a'3?0
)?&
?
inputs?????????
p 

 
? "%?"
?
0?????????2
? ?
C__inference_sequential_layer_call_and_return_conditional_losses_394a'3?0
)?&
?
inputs?????????
p

 
? "%?"
?
0?????????2
? ?
(__inference_sequential_layer_call_fn_250_'>?;
4?1
'?$
keras_layer_input?????????
p 

 
? "??????????2?
(__inference_sequential_layer_call_fn_328_'>?;
4?1
'?$
keras_layer_input?????????
p

 
? "??????????2?
(__inference_sequential_layer_call_fn_361T'3?0
)?&
?
inputs?????????
p 

 
? "??????????2?
(__inference_sequential_layer_call_fn_372T'3?0
)?&
?
inputs?????????
p

 
? "??????????2?
!__inference_signature_wrapper_407?'K?H
? 
A?>
<
keras_layer_input'?$
keras_layer_input?????????"9?6
4
keras_layer%?"
keras_layer?????????2