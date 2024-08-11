import 'package:time_tracking_app/core/usecase.dart';
import 'package:time_tracking_app/domain/entities/custom_failures.dart';
import 'package:time_tracking_app/domain/entities/result.dart';

import '../../repository/repository.dart';

class DeleteTaskUseCase extends UseCase<bool, String> {
  final Repository _repository;

  DeleteTaskUseCase({required Repository repository}) : _repository = repository;

  @override
  Future<Result<CustomFailure, bool>> call(String params) {
    return _repository.deleteTask(params);
  }
}
