import 'package:time_tracking_app/data/remote_data_source/remote_data_source.dart';
import 'package:time_tracking_app/domain/entities/custom_failures.dart';
import 'package:time_tracking_app/domain/entities/result.dart';
import 'package:time_tracking_app/domain/entities/tasks/task_entity.dart';
import 'package:time_tracking_app/domain/repository/repository.dart';
import 'package:time_tracking_app/utils/constants.dart';

import '../../core/network_info.dart';

class RepositoryImp implements Repository {
  final NetworkInfo _networkInfo;
  final RemoteDataSource _remoteDataSource;

  RepositoryImp({
    required NetworkInfo networkInfo,
    required RemoteDataSource remoteDataSource,
  })  : _remoteDataSource = remoteDataSource,
        _networkInfo = networkInfo;

  @override
  Future<Result<CustomFailure, bool>> addTasks(TaskEntity taskEntity) async {
    if (!await _networkInfo.isConnected) {
      return const Failure(failureRes: NetworkFailure(message: AppConstants.kNoInternet));
    }

    try {
      return Success(successRes: await _remoteDataSource.addTasks(taskEntity));
    } on CustomFailure catch (e) {
      return Failure(failureRes: e);
    } catch (e) {
      return Failure(failureRes: ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Result<CustomFailure, Map<String, List<TaskEntity>>>> getAllTasks({required String projectId}) async {
    if (!await _networkInfo.isConnected) {
      return const Failure(failureRes: NetworkFailure(message: AppConstants.kNoInternet));
    }

    try {
      return Success(successRes: await _remoteDataSource.getAllTasks(projectId: projectId));
    } on CustomFailure catch (e) {
      return Failure(failureRes: e);
    } catch (e) {
      return Failure(failureRes: ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Result<CustomFailure, bool>> updateTask(TaskEntity taskEntity) async {
    if (!await _networkInfo.isConnected) {
      return const Failure(failureRes: NetworkFailure(message: AppConstants.kNoInternet));
    }

    try {
      return Success(successRes: await _remoteDataSource.updateTask(taskEntity));
    } on CustomFailure catch (e) {
      return Failure(failureRes: e);
    } catch (e) {
      return Failure(failureRes: ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Result<CustomFailure, bool>> deleteTask(String taskId) async {
    if (!await _networkInfo.isConnected) {
      return const Failure(failureRes: NetworkFailure(message: AppConstants.kNoInternet));
    }

    try {
      return Success(successRes: await _remoteDataSource.deleteTask(taskId));
    } on CustomFailure catch (e) {
      return Failure(failureRes: e);
    } catch (e) {
      return Failure(failureRes: ServerFailure(message: e.toString()));
    }
  }
}
