import 'package:time_tracking_app/core/usecase.dart';
import 'package:time_tracking_app/domain/entities/custom_failures.dart';
import 'package:time_tracking_app/domain/entities/result.dart';
import 'package:time_tracking_app/domain/entities/tasks/task_entity.dart';

import '../../repository/repository.dart';

class UpdateTasksUseCase extends UseCase<bool, TaskEntity> {
  final Repository _repository;

  UpdateTasksUseCase({required Repository repository}) : _repository = repository;

  @override
  Future<Result<CustomFailure, bool>> call(TaskEntity params) {
    return _repository.updateTask(params);
  }
}
