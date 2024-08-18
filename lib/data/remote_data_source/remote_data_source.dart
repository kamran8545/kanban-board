import '../../domain/entities/comments/comment_entity.dart';
import '../../domain/entities/tasks/task_entity.dart';

abstract class RemoteDataSource {

  /// This method will add tasks on server
  /// Input : [TaskEntity] contains tasks data
  /// Output : if operation successful returns [bool] true
  /// if unsuccessful it will throw respective exception
  Future<bool> addTasks(TaskEntity taskEntity);

  /// This method will fetch all the  tasks from server
  /// Input : [String] project id
  /// Output : if operation successful returns [Map<String, List<TaskEntity>>]
  /// if unsuccessful it will throw respective exception
  Future<Map<String, List<TaskEntity>>> getAllTasks({required String projectId});

  /// This method will update tasks on server
  /// Input : [TaskEntity] contains tasks data
  /// Output : if operation successful returns [bool] true
  /// if unsuccessful it will throw respective exception
  Future<bool> updateTask(TaskEntity taskEntity);

  /// This method will delete tasks on server
  /// Input : [String] task id
  /// Output : if operation successful returns [bool] true
  /// if unsuccessful it will throw respective exception
  Future<bool> deleteTask(String taskId);

  /// This method will add comment on task
  /// Input : [CommentEntity] contains comment data
  /// Output : if operation successful returns [CommentEntity]
  /// if unsuccessful it will throw respective exception
  Future<CommentEntity> addComment({required CommentEntity commentEntity});

  /// This method will delete comment on task
  /// Input : [String] contains comment id
  /// Output : if operation successful returns [bool] true
  /// if unsuccessful it will throw respective exception
  Future<bool> deleteComment({required String commentId});
}
