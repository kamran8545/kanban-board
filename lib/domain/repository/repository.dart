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
  /// Input : not required
  /// Output : if operation successful returns [List<TaskEntity>]
  /// if unsuccessful the response will be [CustomFailure]
  Future<Result<CustomFailure, List<TaskEntity>>> getAllTasks();
}