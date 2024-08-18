// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TaskFormState {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int? get priority => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  DateTime? get dueDate => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isCreated => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskFormStateCopyWith<TaskFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskFormStateCopyWith<$Res> {
  factory $TaskFormStateCopyWith(
          TaskFormState value, $Res Function(TaskFormState) then) =
      _$TaskFormStateCopyWithImpl<$Res, TaskFormState>;
  @useResult
  $Res call(
      {String title,
      String description,
      int? priority,
      String label,
      DateTime? dueDate,
      bool isValid,
      bool isSubmitting,
      bool isCreated});
}

/// @nodoc
class _$TaskFormStateCopyWithImpl<$Res, $Val extends TaskFormState>
    implements $TaskFormStateCopyWith<$Res> {
  _$TaskFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? priority = freezed,
    Object? label = null,
    Object? dueDate = freezed,
    Object? isValid = null,
    Object? isSubmitting = null,
    Object? isCreated = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isCreated: null == isCreated
          ? _value.isCreated
          : isCreated // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskFormStateImplCopyWith<$Res>
    implements $TaskFormStateCopyWith<$Res> {
  factory _$$TaskFormStateImplCopyWith(
          _$TaskFormStateImpl value, $Res Function(_$TaskFormStateImpl) then) =
      __$$TaskFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      int? priority,
      String label,
      DateTime? dueDate,
      bool isValid,
      bool isSubmitting,
      bool isCreated});
}

/// @nodoc
class __$$TaskFormStateImplCopyWithImpl<$Res>
    extends _$TaskFormStateCopyWithImpl<$Res, _$TaskFormStateImpl>
    implements _$$TaskFormStateImplCopyWith<$Res> {
  __$$TaskFormStateImplCopyWithImpl(
      _$TaskFormStateImpl _value, $Res Function(_$TaskFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? priority = freezed,
    Object? label = null,
    Object? dueDate = freezed,
    Object? isValid = null,
    Object? isSubmitting = null,
    Object? isCreated = null,
  }) {
    return _then(_$TaskFormStateImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isCreated: null == isCreated
          ? _value.isCreated
          : isCreated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TaskFormStateImpl implements _TaskFormState {
  const _$TaskFormStateImpl(
      {this.title = '',
      this.description = '',
      this.priority,
      this.label = LocaleKeys.back_log,
      this.dueDate,
      this.isValid = false,
      this.isSubmitting = false,
      this.isCreated = false});

  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String description;
  @override
  final int? priority;
  @override
  @JsonKey()
  final String label;
  @override
  final DateTime? dueDate;
  @override
  @JsonKey()
  final bool isValid;
  @override
  @JsonKey()
  final bool isSubmitting;
  @override
  @JsonKey()
  final bool isCreated;

  @override
  String toString() {
    return 'TaskFormState(title: $title, description: $description, priority: $priority, label: $label, dueDate: $dueDate, isValid: $isValid, isSubmitting: $isSubmitting, isCreated: $isCreated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskFormStateImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.isCreated, isCreated) ||
                other.isCreated == isCreated));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, description, priority,
      label, dueDate, isValid, isSubmitting, isCreated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskFormStateImplCopyWith<_$TaskFormStateImpl> get copyWith =>
      __$$TaskFormStateImplCopyWithImpl<_$TaskFormStateImpl>(this, _$identity);
}

abstract class _TaskFormState implements TaskFormState {
  const factory _TaskFormState(
      {final String title,
      final String description,
      final int? priority,
      final String label,
      final DateTime? dueDate,
      final bool isValid,
      final bool isSubmitting,
      final bool isCreated}) = _$TaskFormStateImpl;

  @override
  String get title;
  @override
  String get description;
  @override
  int? get priority;
  @override
  String get label;
  @override
  DateTime? get dueDate;
  @override
  bool get isValid;
  @override
  bool get isSubmitting;
  @override
  bool get isCreated;
  @override
  @JsonKey(ignore: true)
  _$$TaskFormStateImplCopyWith<_$TaskFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
