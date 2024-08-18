import 'package:time_tracking_app/core/usecase.dart';
import 'package:time_tracking_app/domain/entities/comments/comment_entity.dart';
import 'package:time_tracking_app/domain/entities/custom_failures.dart';
import 'package:time_tracking_app/domain/entities/result.dart';
import 'package:time_tracking_app/domain/repository/repository.dart';

class AddCommentsUseCase extends UseCase<CommentEntity, CommentEntity> {
  Repository repository;

  AddCommentsUseCase({required this.repository});

  @override
  Future<Result<CustomFailure, CommentEntity>> call(CommentEntity params) async {
    return await repository.addComment(commentEntity: params);
  }
}
