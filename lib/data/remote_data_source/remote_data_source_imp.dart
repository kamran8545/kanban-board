import 'package:dio/dio.dart';
import 'package:time_tracking_app/data/remote_data_source/remote_data_source.dart';
import 'package:time_tracking_app/domain/entities/comments/comment_entity.dart';
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
      }
      return false;
    } on DioException catch (error) {
      throw ServerFailure(
        message: error.response == null ? AppConstants.kSomethingWentWrong : error.response!.data['message'].toString(),
      );
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Map<String, List<TaskEntity>>> getAllTasks({required String projectId}) async {
    try {
      _dio.options.headers = headers;
      final response = await _dio.get(
        '${ApiUrls.tasksURL}?project_id=$projectId',
      );
      Map<String, List<TaskEntity>> tasks = <String, List<TaskEntity>>{};
      if (response.statusCode == 200) {
        for (var data in response.data) {
          TaskEntity task = TaskEntity.fromJson(data);
          tasks.putIfAbsent(task.labels.first, () => <TaskEntity>[]).add(task);
        }
      }
      return tasks;
    } on DioException catch (error) {
      throw ServerFailure(
        message: error.response == null ? AppConstants.kSomethingWentWrong : error.response!.data['message'].toString(),
      );
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> updateTask(TaskEntity taskEntity) async {
    try {
      _dio.options.headers = headers;
      final response = await _dio.post(
        '${ApiUrls.tasksURL}/${taskEntity.id}',
        data: taskEntity.toJson(),
      );
      if (response.statusCode == 200) {
        return true;
      }
      return false;
    } on DioException catch (error) {
      throw ServerFailure(
        message: error.response == null ? AppConstants.kSomethingWentWrong : error.response!.data['message'].toString(),
      );
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> deleteTask(String taskId) async {
    try {
      _dio.options.headers = headers;
      final response = await _dio.delete(
        '${ApiUrls.tasksURL}/$taskId',
      );

      if (response.statusCode == 204) {
        return true;
      }
      return false;
    } on DioException catch (error) {
      throw ServerFailure(
        message: error.response == null ? AppConstants.kSomethingWentWrong : error.response!.data['message'].toString(),
      );
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<CommentEntity> addComment({required CommentEntity commentEntity}) async {
    try {
      _dio.options.headers = headers;
      final response = await _dio.post(
        ApiUrls.commentsURL,
        data: commentEntity.toJson(),
      );

      if (response.statusCode == 200) {
        return CommentEntity.fromJson(response.data);
      }
      throw const ServerFailure(message: AppConstants.kSomethingWentWrong);
    } on DioException catch (error) {
      throw ServerFailure(
        message: error.response == null ? AppConstants.kSomethingWentWrong : error.response!.data['message'].toString(),
      );
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> deleteComment({required String commentId}) async{
    try {
      _dio.options.headers = headers;
      final response = await _dio.delete(
        '${ApiUrls.commentsURL}/$commentId',
      );

      if (response.statusCode == 204) {
        return true;
      }
      return false;
    } on DioException catch (error) {
      throw ServerFailure(
        message: error.response == null ? AppConstants.kSomethingWentWrong : error.response!.data['message'].toString(),
      );
    } catch (e) {
      rethrow;
    }
  }
}
