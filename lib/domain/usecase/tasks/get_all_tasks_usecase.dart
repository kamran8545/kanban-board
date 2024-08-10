import 'package:time_tracking_app/core/usecase.dart';
import 'package:time_tracking_app/domain/entities/custom_failures.dart';
import 'package:time_tracking_app/domain/entities/result.dart';

import '../../entities/tasks/task_entity.dart';
import '../../repository/repository.dart';

class GetAllTasksUseCase extends UseCase<List<TaskEntity>, void> {
  final Repository _repository;

  GetAllTasksUseCase({required Repository repository}) : _repository = repository;

  @override
  Future<Result<CustomFailure, List<TaskEntity>>> call(void params) {
    return _repository.getAllTasks();
  }
}
