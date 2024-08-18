import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_entity.freezed.dart';
part 'comment_entity.g.dart';

@freezed
class CommentEntity with _$CommentEntity {
  const factory CommentEntity({
    required String id,
    required String content,
    @JsonKey(name: 'task_id')
    required String taskId,
  }) = _CommentEntity;

  factory CommentEntity.fromJson(Map<String, dynamic> json) => _$CommentEntityFromJson(json);

}
