// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_task_comment_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddTaskCommentState {
  String get taskId => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isAdded => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddTaskCommentStateCopyWith<AddTaskCommentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddTaskCommentStateCopyWith<$Res> {
  factory $AddTaskCommentStateCopyWith(
          AddTaskCommentState value, $Res Function(AddTaskCommentState) then) =
      _$AddTaskCommentStateCopyWithImpl<$Res, AddTaskCommentState>;
  @useResult
  $Res call(
      {String taskId,
      String comment,
      bool isSubmitting,
      bool isAdded,
      String? errorMessage});
}

/// @nodoc
class _$AddTaskCommentStateCopyWithImpl<$Res, $Val extends AddTaskCommentState>
    implements $AddTaskCommentStateCopyWith<$Res> {
  _$AddTaskCommentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? comment = null,
    Object? isSubmitting = null,
    Object? isAdded = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isAdded: null == isAdded
          ? _value.isAdded
          : isAdded // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddTaskCommentStateImplCopyWith<$Res>
    implements $AddTaskCommentStateCopyWith<$Res> {
  factory _$$AddTaskCommentStateImplCopyWith(_$AddTaskCommentStateImpl value,
          $Res Function(_$AddTaskCommentStateImpl) then) =
      __$$AddTaskCommentStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String taskId,
      String comment,
      bool isSubmitting,
      bool isAdded,
      String? errorMessage});
}

/// @nodoc
class __$$AddTaskCommentStateImplCopyWithImpl<$Res>
    extends _$AddTaskCommentStateCopyWithImpl<$Res, _$AddTaskCommentStateImpl>
    implements _$$AddTaskCommentStateImplCopyWith<$Res> {
  __$$AddTaskCommentStateImplCopyWithImpl(_$AddTaskCommentStateImpl _value,
      $Res Function(_$AddTaskCommentStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? comment = null,
    Object? isSubmitting = null,
    Object? isAdded = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$AddTaskCommentStateImpl(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isAdded: null == isAdded
          ? _value.isAdded
          : isAdded // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AddTaskCommentStateImpl implements _AddTaskCommentState {
  const _$AddTaskCommentStateImpl(
      {this.taskId = '',
      this.comment = '',
      this.isSubmitting = false,
      this.isAdded = false,
      this.errorMessage});

  @override
  @JsonKey()
  final String taskId;
  @override
  @JsonKey()
  final String comment;
  @override
  @JsonKey()
  final bool isSubmitting;
  @override
  @JsonKey()
  final bool isAdded;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'AddTaskCommentState(taskId: $taskId, comment: $comment, isSubmitting: $isSubmitting, isAdded: $isAdded, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTaskCommentStateImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.isAdded, isAdded) || other.isAdded == isAdded) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, taskId, comment, isSubmitting, isAdded, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTaskCommentStateImplCopyWith<_$AddTaskCommentStateImpl> get copyWith =>
      __$$AddTaskCommentStateImplCopyWithImpl<_$AddTaskCommentStateImpl>(
          this, _$identity);
}

abstract class _AddTaskCommentState implements AddTaskCommentState {
  const factory _AddTaskCommentState(
      {final String taskId,
      final String comment,
      final bool isSubmitting,
      final bool isAdded,
      final String? errorMessage}) = _$AddTaskCommentStateImpl;

  @override
  String get taskId;
  @override
  String get comment;
  @override
  bool get isSubmitting;
  @override
  bool get isAdded;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$AddTaskCommentStateImplCopyWith<_$AddTaskCommentStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
