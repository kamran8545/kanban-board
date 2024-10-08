import 'package:time_tracking_app/domain/entities/comments/comment_entity.dart';
import 'package:time_tracking_app/domain/entities/tasks/task_entity.dart';

import '../entities/custom_failures.dart';
import '../entities/result.dart';

abstract class Repository {

  /// This method will add tasks on server
  /// Input : [TaskEntity] contains tasks data
  /// Output : if operation successful returns [bool] true
  /// if unsuccessful the response will be [CustomFailure]
  Future<Result<CustomFailure, bool>> addTasks(TaskEntity taskEntity);

  /// This method will fetch all tasks from server
  /// Input : [String] project id
  /// Output : if operation successful returns [Map<String, List<TaskEntity>>]
  /// if unsuccessful the response will be [CustomFailure]
  Future<Result<CustomFailure, Map<String, List<TaskEntity>>>> getAllTasks({required String projectId});

  /// This method will update tasks on server
  /// Input : [TaskEntity] contains tasks data
  /// Output : if operation successful returns [bool] true
  /// if unsuccessful the response will be [CustomFailure]
  Future<Result<CustomFailure, bool>> updateTask(TaskEntity taskEntity);

  /// This method will delete tasks on server
  /// Input : [TaskEntity] contains tasks data
  /// Output : if operation successful returns [bool] true
  /// if unsuccessful the response will be [CustomFailure]
  Future<Result<CustomFailure, bool>> deleteTask(String taskId);

  /// This method will add comment on task
  /// Input : [CommentEntity] contains comment data
  /// Output : if operation successful returns [CommentEntity]
  /// if unsuccessful the response will be [CustomFailure]
  Future<Result<CustomFailure, CommentEntity>> addComment({required CommentEntity commentEntity});

  /// This method will delete comment on task
  /// Input : [String] contains comment id
  /// Output : if operation successful returns [bool] true
  /// if unsuccessful the response will be [CustomFailure]
  Future<Result<CustomFailure, bool>> deleteComment({required String commentId});

  /// This method will fetch all comments from server
  /// Input : [String] contains task id
  /// Output : if operation successful returns [List<CommentEntity>]
  /// if unsuccessful the response will be [CustomFailure]
  Future<Result<CustomFailure, List<CommentEntity>>> getAllComments({required String taskId});
}