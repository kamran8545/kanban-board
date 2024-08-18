import 'package:time_tracking_app/core/usecase.dart';
import 'package:time_tracking_app/domain/entities/custom_failures.dart';
import 'package:time_tracking_app/domain/entities/result.dart';
import 'package:time_tracking_app/domain/repository/repository.dart';

class DeleteCommentUseCase extends UseCase<bool, String> {
  Repository repository;

  DeleteCommentUseCase({required this.repository});

  @override
  Future<Result<CustomFailure, bool>> call(String params) {
    return repository.deleteComment(commentId: params);
  }
}
