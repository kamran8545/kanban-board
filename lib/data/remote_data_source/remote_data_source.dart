import '../../domain/entities/tasks/task_entity.dart';

abstract class RemoteDataSource {

  /// This method will add tasks on server
  /// Input : [TaskEntity] contains tasks data
  /// Output : if operation successful returns [bool] true
  /// if unsuccessful it will throw respective exception
  Future<bool> addTasks(TaskEntity taskEntity);

  /// This method will fetch all the  tasks from server
  /// Input : Not required
  /// Output : if operation successful returns [List<TaskEntity>]
  /// if unsuccessful it will throw respective exception
  Future<List<TaskEntity>> getAllTasks();

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
}
