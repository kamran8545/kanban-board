// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_comment_bloc_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeleteCommentBlocEvent {
  String get commentId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String commentId) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String commentId)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String commentId)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeleteCommentDeleteEvent value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeleteCommentDeleteEvent value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeleteCommentDeleteEvent value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeleteCommentBlocEventCopyWith<DeleteCommentBlocEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteCommentBlocEventCopyWith<$Res> {
  factory $DeleteCommentBlocEventCopyWith(DeleteCommentBlocEvent value,
          $Res Function(DeleteCommentBlocEvent) then) =
      _$DeleteCommentBlocEventCopyWithImpl<$Res, DeleteCommentBlocEvent>;
  @useResult
  $Res call({String commentId});
}

/// @nodoc
class _$DeleteCommentBlocEventCopyWithImpl<$Res,
        $Val extends DeleteCommentBlocEvent>
    implements $DeleteCommentBlocEventCopyWith<$Res> {
  _$DeleteCommentBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentId = null,
  }) {
    return _then(_value.copyWith(
      commentId: null == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteCommentDeleteEventImplCopyWith<$Res>
    implements $DeleteCommentBlocEventCopyWith<$Res> {
  factory _$$DeleteCommentDeleteEventImplCopyWith(
          _$DeleteCommentDeleteEventImpl value,
          $Res Function(_$DeleteCommentDeleteEventImpl) then) =
      __$$DeleteCommentDeleteEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String commentId});
}

/// @nodoc
class __$$DeleteCommentDeleteEventImplCopyWithImpl<$Res>
    extends _$DeleteCommentBlocEventCopyWithImpl<$Res,
        _$DeleteCommentDeleteEventImpl>
    implements _$$DeleteCommentDeleteEventImplCopyWith<$Res> {
  __$$DeleteCommentDeleteEventImplCopyWithImpl(
      _$DeleteCommentDeleteEventImpl _value,
      $Res Function(_$DeleteCommentDeleteEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentId = null,
  }) {
    return _then(_$DeleteCommentDeleteEventImpl(
      commentId: null == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteCommentDeleteEventImpl implements DeleteCommentDeleteEvent {
  const _$DeleteCommentDeleteEventImpl({required this.commentId});

  @override
  final String commentId;

  @override
  String toString() {
    return 'DeleteCommentBlocEvent.delete(commentId: $commentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCommentDeleteEventImpl &&
            (identical(other.commentId, commentId) ||
                other.commentId == commentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, commentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCommentDeleteEventImplCopyWith<_$DeleteCommentDeleteEventImpl>
      get copyWith => __$$DeleteCommentDeleteEventImplCopyWithImpl<
          _$DeleteCommentDeleteEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String commentId) delete,
  }) {
    return delete(commentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String commentId)? delete,
  }) {
    return delete?.call(commentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String commentId)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(commentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeleteCommentDeleteEvent value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeleteCommentDeleteEvent value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeleteCommentDeleteEvent value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class DeleteCommentDeleteEvent implements DeleteCommentBlocEvent {
  const factory DeleteCommentDeleteEvent({required final String commentId}) =
      _$DeleteCommentDeleteEventImpl;

  @override
  String get commentId;
  @override
  @JsonKey(ignore: true)
  _$$DeleteCommentDeleteEventImplCopyWith<_$DeleteCommentDeleteEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
