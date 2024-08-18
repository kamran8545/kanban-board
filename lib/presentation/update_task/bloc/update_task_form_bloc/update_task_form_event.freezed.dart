// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_task_form_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateTaskFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskEntity taskEntity) initial,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(int priority) priorityChanged,
    required TResult Function(String label) labelChanged,
    required TResult Function(DateTime dueDate) dueDateChanged,
    required TResult Function() submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskEntity taskEntity)? initial,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String description)? descriptionChanged,
    TResult? Function(int priority)? priorityChanged,
    TResult? Function(String label)? labelChanged,
    TResult? Function(DateTime dueDate)? dueDateChanged,
    TResult? Function()? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskEntity taskEntity)? initial,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(int priority)? priorityChanged,
    TResult Function(String label)? labelChanged,
    TResult Function(DateTime dueDate)? dueDateChanged,
    TResult Function()? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateTaskFormInitialEvent value) initial,
    required TResult Function(TitleChanged value) titleChanged,
    required TResult Function(DescriptionChanged value) descriptionChanged,
    required TResult Function(PriorityChanged value) priorityChanged,
    required TResult Function(LabelChanged value) labelChanged,
    required TResult Function(DueDateChanged value) dueDateChanged,
    required TResult Function(SubmitTaskForm value) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateTaskFormInitialEvent value)? initial,
    TResult? Function(TitleChanged value)? titleChanged,
    TResult? Function(DescriptionChanged value)? descriptionChanged,
    TResult? Function(PriorityChanged value)? priorityChanged,
    TResult? Function(LabelChanged value)? labelChanged,
    TResult? Function(DueDateChanged value)? dueDateChanged,
    TResult? Function(SubmitTaskForm value)? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateTaskFormInitialEvent value)? initial,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(PriorityChanged value)? priorityChanged,
    TResult Function(LabelChanged value)? labelChanged,
    TResult Function(DueDateChanged value)? dueDateChanged,
    TResult Function(SubmitTaskForm value)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTaskFormEventCopyWith<$Res> {
  factory $UpdateTaskFormEventCopyWith(
          UpdateTaskFormEvent value, $Res Function(UpdateTaskFormEvent) then) =
      _$UpdateTaskFormEventCopyWithImpl<$Res, UpdateTaskFormEvent>;
}

/// @nodoc
class _$UpdateTaskFormEventCopyWithImpl<$Res, $Val extends UpdateTaskFormEvent>
    implements $UpdateTaskFormEventCopyWith<$Res> {
  _$UpdateTaskFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateTaskFormInitialEventImplCopyWith<$Res> {
  factory _$$UpdateTaskFormInitialEventImplCopyWith(
          _$UpdateTaskFormInitialEventImpl value,
          $Res Function(_$UpdateTaskFormInitialEventImpl) then) =
      __$$UpdateTaskFormInitialEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskEntity taskEntity});

  $TaskEntityCopyWith<$Res> get taskEntity;
}

/// @nodoc
class __$$UpdateTaskFormInitialEventImplCopyWithImpl<$Res>
    extends _$UpdateTaskFormEventCopyWithImpl<$Res,
        _$UpdateTaskFormInitialEventImpl>
    implements _$$UpdateTaskFormInitialEventImplCopyWith<$Res> {
  __$$UpdateTaskFormInitialEventImplCopyWithImpl(
      _$UpdateTaskFormInitialEventImpl _value,
      $Res Function(_$UpdateTaskFormInitialEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskEntity = null,
  }) {
    return _then(_$UpdateTaskFormInitialEventImpl(
      taskEntity: null == taskEntity
          ? _value.taskEntity
          : taskEntity // ignore: cast_nullable_to_non_nullable
              as TaskEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskEntityCopyWith<$Res> get taskEntity {
    return $TaskEntityCopyWith<$Res>(_value.taskEntity, (value) {
      return _then(_value.copyWith(taskEntity: value));
    });
  }
}

/// @nodoc

class _$UpdateTaskFormInitialEventImpl implements UpdateTaskFormInitialEvent {
  const _$UpdateTaskFormInitialEventImpl({required this.taskEntity});

  @override
  final TaskEntity taskEntity;

  @override
  String toString() {
    return 'UpdateTaskFormEvent.initial(taskEntity: $taskEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTaskFormInitialEventImpl &&
            (identical(other.taskEntity, taskEntity) ||
                other.taskEntity == taskEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTaskFormInitialEventImplCopyWith<_$UpdateTaskFormInitialEventImpl>
      get copyWith => __$$UpdateTaskFormInitialEventImplCopyWithImpl<
          _$UpdateTaskFormInitialEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskEntity taskEntity) initial,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(int priority) priorityChanged,
    required TResult Function(String label) labelChanged,
    required TResult Function(DateTime dueDate) dueDateChanged,
    required TResult Function() submit,
  }) {
    return initial(taskEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskEntity taskEntity)? initial,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String description)? descriptionChanged,
    TResult? Function(int priority)? priorityChanged,
    TResult? Function(String label)? labelChanged,
    TResult? Function(DateTime dueDate)? dueDateChanged,
    TResult? Function()? submit,
  }) {
    return initial?.call(taskEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskEntity taskEntity)? initial,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(int priority)? priorityChanged,
    TResult Function(String label)? labelChanged,
    TResult Function(DateTime dueDate)? dueDateChanged,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(taskEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateTaskFormInitialEvent value) initial,
    required TResult Function(TitleChanged value) titleChanged,
    required TResult Function(DescriptionChanged value) descriptionChanged,
    required TResult Function(PriorityChanged value) priorityChanged,
    required TResult Function(LabelChanged value) labelChanged,
    required TResult Function(DueDateChanged value) dueDateChanged,
    required TResult Function(SubmitTaskForm value) submit,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateTaskFormInitialEvent value)? initial,
    TResult? Function(TitleChanged value)? titleChanged,
    TResult? Function(DescriptionChanged value)? descriptionChanged,
    TResult? Function(PriorityChanged value)? priorityChanged,
    TResult? Function(LabelChanged value)? labelChanged,
    TResult? Function(DueDateChanged value)? dueDateChanged,
    TResult? Function(SubmitTaskForm value)? submit,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateTaskFormInitialEvent value)? initial,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(PriorityChanged value)? priorityChanged,
    TResult Function(LabelChanged value)? labelChanged,
    TResult Function(DueDateChanged value)? dueDateChanged,
    TResult Function(SubmitTaskForm value)? submit,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class UpdateTaskFormInitialEvent implements UpdateTaskFormEvent {
  const factory UpdateTaskFormInitialEvent(
          {required final TaskEntity taskEntity}) =
      _$UpdateTaskFormInitialEventImpl;

  TaskEntity get taskEntity;
  @JsonKey(ignore: true)
  _$$UpdateTaskFormInitialEventImplCopyWith<_$UpdateTaskFormInitialEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TitleChangedImplCopyWith<$Res> {
  factory _$$TitleChangedImplCopyWith(
          _$TitleChangedImpl value, $Res Function(_$TitleChangedImpl) then) =
      __$$TitleChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$TitleChangedImplCopyWithImpl<$Res>
    extends _$UpdateTaskFormEventCopyWithImpl<$Res, _$TitleChangedImpl>
    implements _$$TitleChangedImplCopyWith<$Res> {
  __$$TitleChangedImplCopyWithImpl(
      _$TitleChangedImpl _value, $Res Function(_$TitleChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$TitleChangedImpl(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TitleChangedImpl implements TitleChanged {
  const _$TitleChangedImpl(this.title);

  @override
  final String title;

  @override
  String toString() {
    return 'UpdateTaskFormEvent.titleChanged(title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TitleChangedImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TitleChangedImplCopyWith<_$TitleChangedImpl> get copyWith =>
      __$$TitleChangedImplCopyWithImpl<_$TitleChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskEntity taskEntity) initial,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(int priority) priorityChanged,
    required TResult Function(String label) labelChanged,
    required TResult Function(DateTime dueDate) dueDateChanged,
    required TResult Function() submit,
  }) {
    return titleChanged(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskEntity taskEntity)? initial,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String description)? descriptionChanged,
    TResult? Function(int priority)? priorityChanged,
    TResult? Function(String label)? labelChanged,
    TResult? Function(DateTime dueDate)? dueDateChanged,
    TResult? Function()? submit,
  }) {
    return titleChanged?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskEntity taskEntity)? initial,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(int priority)? priorityChanged,
    TResult Function(String label)? labelChanged,
    TResult Function(DateTime dueDate)? dueDateChanged,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateTaskFormInitialEvent value) initial,
    required TResult Function(TitleChanged value) titleChanged,
    required TResult Function(DescriptionChanged value) descriptionChanged,
    required TResult Function(PriorityChanged value) priorityChanged,
    required TResult Function(LabelChanged value) labelChanged,
    required TResult Function(DueDateChanged value) dueDateChanged,
    required TResult Function(SubmitTaskForm value) submit,
  }) {
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateTaskFormInitialEvent value)? initial,
    TResult? Function(TitleChanged value)? titleChanged,
    TResult? Function(DescriptionChanged value)? descriptionChanged,
    TResult? Function(PriorityChanged value)? priorityChanged,
    TResult? Function(LabelChanged value)? labelChanged,
    TResult? Function(DueDateChanged value)? dueDateChanged,
    TResult? Function(SubmitTaskForm value)? submit,
  }) {
    return titleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateTaskFormInitialEvent value)? initial,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(PriorityChanged value)? priorityChanged,
    TResult Function(LabelChanged value)? labelChanged,
    TResult Function(DueDateChanged value)? dueDateChanged,
    TResult Function(SubmitTaskForm value)? submit,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class TitleChanged implements UpdateTaskFormEvent {
  const factory TitleChanged(final String title) = _$TitleChangedImpl;

  String get title;
  @JsonKey(ignore: true)
  _$$TitleChangedImplCopyWith<_$TitleChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DescriptionChangedImplCopyWith<$Res> {
  factory _$$DescriptionChangedImplCopyWith(_$DescriptionChangedImpl value,
          $Res Function(_$DescriptionChangedImpl) then) =
      __$$DescriptionChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String description});
}

/// @nodoc
class __$$DescriptionChangedImplCopyWithImpl<$Res>
    extends _$UpdateTaskFormEventCopyWithImpl<$Res, _$DescriptionChangedImpl>
    implements _$$DescriptionChangedImplCopyWith<$Res> {
  __$$DescriptionChangedImplCopyWithImpl(_$DescriptionChangedImpl _value,
      $Res Function(_$DescriptionChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
  }) {
    return _then(_$DescriptionChangedImpl(
      null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DescriptionChangedImpl implements DescriptionChanged {
  const _$DescriptionChangedImpl(this.description);

  @override
  final String description;

  @override
  String toString() {
    return 'UpdateTaskFormEvent.descriptionChanged(description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DescriptionChangedImpl &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DescriptionChangedImplCopyWith<_$DescriptionChangedImpl> get copyWith =>
      __$$DescriptionChangedImplCopyWithImpl<_$DescriptionChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskEntity taskEntity) initial,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(int priority) priorityChanged,
    required TResult Function(String label) labelChanged,
    required TResult Function(DateTime dueDate) dueDateChanged,
    required TResult Function() submit,
  }) {
    return descriptionChanged(description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskEntity taskEntity)? initial,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String description)? descriptionChanged,
    TResult? Function(int priority)? priorityChanged,
    TResult? Function(String label)? labelChanged,
    TResult? Function(DateTime dueDate)? dueDateChanged,
    TResult? Function()? submit,
  }) {
    return descriptionChanged?.call(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskEntity taskEntity)? initial,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(int priority)? priorityChanged,
    TResult Function(String label)? labelChanged,
    TResult Function(DateTime dueDate)? dueDateChanged,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (descriptionChanged != null) {
      return descriptionChanged(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateTaskFormInitialEvent value) initial,
    required TResult Function(TitleChanged value) titleChanged,
    required TResult Function(DescriptionChanged value) descriptionChanged,
    required TResult Function(PriorityChanged value) priorityChanged,
    required TResult Function(LabelChanged value) labelChanged,
    required TResult Function(DueDateChanged value) dueDateChanged,
    required TResult Function(SubmitTaskForm value) submit,
  }) {
    return descriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateTaskFormInitialEvent value)? initial,
    TResult? Function(TitleChanged value)? titleChanged,
    TResult? Function(DescriptionChanged value)? descriptionChanged,
    TResult? Function(PriorityChanged value)? priorityChanged,
    TResult? Function(LabelChanged value)? labelChanged,
    TResult? Function(DueDateChanged value)? dueDateChanged,
    TResult? Function(SubmitTaskForm value)? submit,
  }) {
    return descriptionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateTaskFormInitialEvent value)? initial,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(PriorityChanged value)? priorityChanged,
    TResult Function(LabelChanged value)? labelChanged,
    TResult Function(DueDateChanged value)? dueDateChanged,
    TResult Function(SubmitTaskForm value)? submit,
    required TResult orElse(),
  }) {
    if (descriptionChanged != null) {
      return descriptionChanged(this);
    }
    return orElse();
  }
}

abstract class DescriptionChanged implements UpdateTaskFormEvent {
  const factory DescriptionChanged(final String description) =
      _$DescriptionChangedImpl;

  String get description;
  @JsonKey(ignore: true)
  _$$DescriptionChangedImplCopyWith<_$DescriptionChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PriorityChangedImplCopyWith<$Res> {
  factory _$$PriorityChangedImplCopyWith(_$PriorityChangedImpl value,
          $Res Function(_$PriorityChangedImpl) then) =
      __$$PriorityChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int priority});
}

/// @nodoc
class __$$PriorityChangedImplCopyWithImpl<$Res>
    extends _$UpdateTaskFormEventCopyWithImpl<$Res, _$PriorityChangedImpl>
    implements _$$PriorityChangedImplCopyWith<$Res> {
  __$$PriorityChangedImplCopyWithImpl(
      _$PriorityChangedImpl _value, $Res Function(_$PriorityChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? priority = null,
  }) {
    return _then(_$PriorityChangedImpl(
      null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PriorityChangedImpl implements PriorityChanged {
  const _$PriorityChangedImpl(this.priority);

  @override
  final int priority;

  @override
  String toString() {
    return 'UpdateTaskFormEvent.priorityChanged(priority: $priority)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriorityChangedImpl &&
            (identical(other.priority, priority) ||
                other.priority == priority));
  }

  @override
  int get hashCode => Object.hash(runtimeType, priority);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PriorityChangedImplCopyWith<_$PriorityChangedImpl> get copyWith =>
      __$$PriorityChangedImplCopyWithImpl<_$PriorityChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskEntity taskEntity) initial,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(int priority) priorityChanged,
    required TResult Function(String label) labelChanged,
    required TResult Function(DateTime dueDate) dueDateChanged,
    required TResult Function() submit,
  }) {
    return priorityChanged(priority);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskEntity taskEntity)? initial,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String description)? descriptionChanged,
    TResult? Function(int priority)? priorityChanged,
    TResult? Function(String label)? labelChanged,
    TResult? Function(DateTime dueDate)? dueDateChanged,
    TResult? Function()? submit,
  }) {
    return priorityChanged?.call(priority);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskEntity taskEntity)? initial,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(int priority)? priorityChanged,
    TResult Function(String label)? labelChanged,
    TResult Function(DateTime dueDate)? dueDateChanged,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (priorityChanged != null) {
      return priorityChanged(priority);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateTaskFormInitialEvent value) initial,
    required TResult Function(TitleChanged value) titleChanged,
    required TResult Function(DescriptionChanged value) descriptionChanged,
    required TResult Function(PriorityChanged value) priorityChanged,
    required TResult Function(LabelChanged value) labelChanged,
    required TResult Function(DueDateChanged value) dueDateChanged,
    required TResult Function(SubmitTaskForm value) submit,
  }) {
    return priorityChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateTaskFormInitialEvent value)? initial,
    TResult? Function(TitleChanged value)? titleChanged,
    TResult? Function(DescriptionChanged value)? descriptionChanged,
    TResult? Function(PriorityChanged value)? priorityChanged,
    TResult? Function(LabelChanged value)? labelChanged,
    TResult? Function(DueDateChanged value)? dueDateChanged,
    TResult? Function(SubmitTaskForm value)? submit,
  }) {
    return priorityChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateTaskFormInitialEvent value)? initial,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(PriorityChanged value)? priorityChanged,
    TResult Function(LabelChanged value)? labelChanged,
    TResult Function(DueDateChanged value)? dueDateChanged,
    TResult Function(SubmitTaskForm value)? submit,
    required TResult orElse(),
  }) {
    if (priorityChanged != null) {
      return priorityChanged(this);
    }
    return orElse();
  }
}

abstract class PriorityChanged implements UpdateTaskFormEvent {
  const factory PriorityChanged(final int priority) = _$PriorityChangedImpl;

  int get priority;
  @JsonKey(ignore: true)
  _$$PriorityChangedImplCopyWith<_$PriorityChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LabelChangedImplCopyWith<$Res> {
  factory _$$LabelChangedImplCopyWith(
          _$LabelChangedImpl value, $Res Function(_$LabelChangedImpl) then) =
      __$$LabelChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String label});
}

/// @nodoc
class __$$LabelChangedImplCopyWithImpl<$Res>
    extends _$UpdateTaskFormEventCopyWithImpl<$Res, _$LabelChangedImpl>
    implements _$$LabelChangedImplCopyWith<$Res> {
  __$$LabelChangedImplCopyWithImpl(
      _$LabelChangedImpl _value, $Res Function(_$LabelChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
  }) {
    return _then(_$LabelChangedImpl(
      null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LabelChangedImpl implements LabelChanged {
  const _$LabelChangedImpl(this.label);

  @override
  final String label;

  @override
  String toString() {
    return 'UpdateTaskFormEvent.labelChanged(label: $label)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LabelChangedImpl &&
            (identical(other.label, label) || other.label == label));
  }

  @override
  int get hashCode => Object.hash(runtimeType, label);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LabelChangedImplCopyWith<_$LabelChangedImpl> get copyWith =>
      __$$LabelChangedImplCopyWithImpl<_$LabelChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskEntity taskEntity) initial,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(int priority) priorityChanged,
    required TResult Function(String label) labelChanged,
    required TResult Function(DateTime dueDate) dueDateChanged,
    required TResult Function() submit,
  }) {
    return labelChanged(label);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskEntity taskEntity)? initial,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String description)? descriptionChanged,
    TResult? Function(int priority)? priorityChanged,
    TResult? Function(String label)? labelChanged,
    TResult? Function(DateTime dueDate)? dueDateChanged,
    TResult? Function()? submit,
  }) {
    return labelChanged?.call(label);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskEntity taskEntity)? initial,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(int priority)? priorityChanged,
    TResult Function(String label)? labelChanged,
    TResult Function(DateTime dueDate)? dueDateChanged,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (labelChanged != null) {
      return labelChanged(label);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateTaskFormInitialEvent value) initial,
    required TResult Function(TitleChanged value) titleChanged,
    required TResult Function(DescriptionChanged value) descriptionChanged,
    required TResult Function(PriorityChanged value) priorityChanged,
    required TResult Function(LabelChanged value) labelChanged,
    required TResult Function(DueDateChanged value) dueDateChanged,
    required TResult Function(SubmitTaskForm value) submit,
  }) {
    return labelChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateTaskFormInitialEvent value)? initial,
    TResult? Function(TitleChanged value)? titleChanged,
    TResult? Function(DescriptionChanged value)? descriptionChanged,
    TResult? Function(PriorityChanged value)? priorityChanged,
    TResult? Function(LabelChanged value)? labelChanged,
    TResult? Function(DueDateChanged value)? dueDateChanged,
    TResult? Function(SubmitTaskForm value)? submit,
  }) {
    return labelChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateTaskFormInitialEvent value)? initial,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(PriorityChanged value)? priorityChanged,
    TResult Function(LabelChanged value)? labelChanged,
    TResult Function(DueDateChanged value)? dueDateChanged,
    TResult Function(SubmitTaskForm value)? submit,
    required TResult orElse(),
  }) {
    if (labelChanged != null) {
      return labelChanged(this);
    }
    return orElse();
  }
}

abstract class LabelChanged implements UpdateTaskFormEvent {
  const factory LabelChanged(final String label) = _$LabelChangedImpl;

  String get label;
  @JsonKey(ignore: true)
  _$$LabelChangedImplCopyWith<_$LabelChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DueDateChangedImplCopyWith<$Res> {
  factory _$$DueDateChangedImplCopyWith(_$DueDateChangedImpl value,
          $Res Function(_$DueDateChangedImpl) then) =
      __$$DueDateChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime dueDate});
}

/// @nodoc
class __$$DueDateChangedImplCopyWithImpl<$Res>
    extends _$UpdateTaskFormEventCopyWithImpl<$Res, _$DueDateChangedImpl>
    implements _$$DueDateChangedImplCopyWith<$Res> {
  __$$DueDateChangedImplCopyWithImpl(
      _$DueDateChangedImpl _value, $Res Function(_$DueDateChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dueDate = null,
  }) {
    return _then(_$DueDateChangedImpl(
      null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$DueDateChangedImpl implements DueDateChanged {
  const _$DueDateChangedImpl(this.dueDate);

  @override
  final DateTime dueDate;

  @override
  String toString() {
    return 'UpdateTaskFormEvent.dueDateChanged(dueDate: $dueDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DueDateChangedImpl &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dueDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DueDateChangedImplCopyWith<_$DueDateChangedImpl> get copyWith =>
      __$$DueDateChangedImplCopyWithImpl<_$DueDateChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskEntity taskEntity) initial,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(int priority) priorityChanged,
    required TResult Function(String label) labelChanged,
    required TResult Function(DateTime dueDate) dueDateChanged,
    required TResult Function() submit,
  }) {
    return dueDateChanged(dueDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskEntity taskEntity)? initial,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String description)? descriptionChanged,
    TResult? Function(int priority)? priorityChanged,
    TResult? Function(String label)? labelChanged,
    TResult? Function(DateTime dueDate)? dueDateChanged,
    TResult? Function()? submit,
  }) {
    return dueDateChanged?.call(dueDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskEntity taskEntity)? initial,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(int priority)? priorityChanged,
    TResult Function(String label)? labelChanged,
    TResult Function(DateTime dueDate)? dueDateChanged,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (dueDateChanged != null) {
      return dueDateChanged(dueDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateTaskFormInitialEvent value) initial,
    required TResult Function(TitleChanged value) titleChanged,
    required TResult Function(DescriptionChanged value) descriptionChanged,
    required TResult Function(PriorityChanged value) priorityChanged,
    required TResult Function(LabelChanged value) labelChanged,
    required TResult Function(DueDateChanged value) dueDateChanged,
    required TResult Function(SubmitTaskForm value) submit,
  }) {
    return dueDateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateTaskFormInitialEvent value)? initial,
    TResult? Function(TitleChanged value)? titleChanged,
    TResult? Function(DescriptionChanged value)? descriptionChanged,
    TResult? Function(PriorityChanged value)? priorityChanged,
    TResult? Function(LabelChanged value)? labelChanged,
    TResult? Function(DueDateChanged value)? dueDateChanged,
    TResult? Function(SubmitTaskForm value)? submit,
  }) {
    return dueDateChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateTaskFormInitialEvent value)? initial,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(PriorityChanged value)? priorityChanged,
    TResult Function(LabelChanged value)? labelChanged,
    TResult Function(DueDateChanged value)? dueDateChanged,
    TResult Function(SubmitTaskForm value)? submit,
    required TResult orElse(),
  }) {
    if (dueDateChanged != null) {
      return dueDateChanged(this);
    }
    return orElse();
  }
}

abstract class DueDateChanged implements UpdateTaskFormEvent {
  const factory DueDateChanged(final DateTime dueDate) = _$DueDateChangedImpl;

  DateTime get dueDate;
  @JsonKey(ignore: true)
  _$$DueDateChangedImplCopyWith<_$DueDateChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitTaskFormImplCopyWith<$Res> {
  factory _$$SubmitTaskFormImplCopyWith(_$SubmitTaskFormImpl value,
          $Res Function(_$SubmitTaskFormImpl) then) =
      __$$SubmitTaskFormImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitTaskFormImplCopyWithImpl<$Res>
    extends _$UpdateTaskFormEventCopyWithImpl<$Res, _$SubmitTaskFormImpl>
    implements _$$SubmitTaskFormImplCopyWith<$Res> {
  __$$SubmitTaskFormImplCopyWithImpl(
      _$SubmitTaskFormImpl _value, $Res Function(_$SubmitTaskFormImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SubmitTaskFormImpl implements SubmitTaskForm {
  const _$SubmitTaskFormImpl();

  @override
  String toString() {
    return 'UpdateTaskFormEvent.submit()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubmitTaskFormImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskEntity taskEntity) initial,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(int priority) priorityChanged,
    required TResult Function(String label) labelChanged,
    required TResult Function(DateTime dueDate) dueDateChanged,
    required TResult Function() submit,
  }) {
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskEntity taskEntity)? initial,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String description)? descriptionChanged,
    TResult? Function(int priority)? priorityChanged,
    TResult? Function(String label)? labelChanged,
    TResult? Function(DateTime dueDate)? dueDateChanged,
    TResult? Function()? submit,
  }) {
    return submit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskEntity taskEntity)? initial,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(int priority)? priorityChanged,
    TResult Function(String label)? labelChanged,
    TResult Function(DateTime dueDate)? dueDateChanged,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateTaskFormInitialEvent value) initial,
    required TResult Function(TitleChanged value) titleChanged,
    required TResult Function(DescriptionChanged value) descriptionChanged,
    required TResult Function(PriorityChanged value) priorityChanged,
    required TResult Function(LabelChanged value) labelChanged,
    required TResult Function(DueDateChanged value) dueDateChanged,
    required TResult Function(SubmitTaskForm value) submit,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateTaskFormInitialEvent value)? initial,
    TResult? Function(TitleChanged value)? titleChanged,
    TResult? Function(DescriptionChanged value)? descriptionChanged,
    TResult? Function(PriorityChanged value)? priorityChanged,
    TResult? Function(LabelChanged value)? labelChanged,
    TResult? Function(DueDateChanged value)? dueDateChanged,
    TResult? Function(SubmitTaskForm value)? submit,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateTaskFormInitialEvent value)? initial,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(PriorityChanged value)? priorityChanged,
    TResult Function(LabelChanged value)? labelChanged,
    TResult Function(DueDateChanged value)? dueDateChanged,
    TResult Function(SubmitTaskForm value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class SubmitTaskForm implements UpdateTaskFormEvent {
  const factory SubmitTaskForm() = _$SubmitTaskFormImpl;
}
