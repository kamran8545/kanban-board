import 'package:time_tracking_app/core/usecase.dart';
import 'package:time_tracking_app/domain/entities/comments/comment_entity.dart';
import 'package:time_tracking_app/domain/entities/custom_failures.dart';
import 'package:time_tracking_app/domain/entities/result.dart';
import 'package:time_tracking_app/domain/repository/repository.dart';

class GetAllCommentsUseCase extends UseCase<List<CommentEntity>, String>{
  final Repository _repository;
  GetAllCommentsUseCase({required Repository repository}) : _repository = repository;

  @override
  Future<Result<CustomFailure, List<CommentEntity>>> call(String params) async {
    return _repository.getAllComments(taskId: params);
  }

}