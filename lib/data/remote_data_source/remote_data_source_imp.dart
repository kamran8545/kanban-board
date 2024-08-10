import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:time_tracking_app/data/remote_data_source/remote_data_source.dart';
import 'package:time_tracking_app/domain/entities/custom_failures.dart';
import 'package:time_tracking_app/domain/entities/tasks/task_entity.dart';
import 'package:time_tracking_app/utils/api_urls.dart';
import 'package:time_tracking_app/utils/constants.dart';

class RemoteDataSourceImp extends RemoteDataSource {
  final Dio _dio;

  RemoteDataSourceImp({required Dio dio}) : _dio = dio;

  final headers = {'Authorization': 'Bearer c2b4c05df299c33ba8bda782de777974ca6e5e08'};

  @override
  Future<bool> addTasks(TaskEntity taskEntity) async {
    try {
      _dio.options.headers = headers;
      final response = await _dio.post(
        ApiUrls.tasksURL,
        data: taskEntity.toJson(),
      );
      if (response.statusCode == 200) {
        return true;
      }else {
        return false;
      }
    } on DioException catch (error) {
      throw ServerFailure(
        message: error.response == null ? AppConstants.somethingWentWrong : error.response!.data['message'].toString(),
      );
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<TaskEntity>> getAllTasks() async{
    try {
      _dio.options.headers = headers;
      final response = await _dio.get(
        ApiUrls.tasksURL,
      );
      List<TaskEntity> tasks = [];
      if (response.statusCode == 200) {
        for(var task in response.data){
          tasks.add(TaskEntity.fromJson(task));
        }
      }
      return tasks;
    } on DioException catch (error) {
      throw ServerFailure(
        message: error.response == null ? AppConstants.somethingWentWrong : error.response!.data['message'].toString(),
      );
    } catch (e) {
      rethrow;
    }
  }
}
