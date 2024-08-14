import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:time_tracking_app/data/remote_data_source/remote_data_source_imp.dart';
import 'package:time_tracking_app/domain/entities/custom_failures.dart';
import 'package:time_tracking_app/utils/api_urls.dart';

import '../../utils/constants.dart';

void main() {
  final Dio dio = Dio();
  late DioAdapter dioAdapter;
  late RemoteDataSourceImp remoteDataSourceImp;

  setUp(() {
    dioAdapter = DioAdapter(dio: dio, matcher: const FullHttpRequestMatcher());
    dio.httpClientAdapter = dioAdapter;

    remoteDataSourceImp = RemoteDataSourceImp(dio: dio);
  });

  group(
    'add task',
    () {
      test(
        'should return true if the status code is 200',
        () async {
          dioAdapter.onPost(
            ApiUrls.tasksURL,
            data: TestConstants.kTaskEntityTest.toJson(),
            (mockServer) => mockServer.reply(200, ''),
          );
          final result = await remoteDataSourceImp.addTasks(TestConstants.kTaskEntityTest);
          expect(result, true);
        },
      );

      test(
        'should return false if the status code is not 200',
        () async {
          dioAdapter.onPost(
            ApiUrls.tasksURL,
            data: TestConstants.kTaskEntityTest.toJson(),
            (mockServer) => mockServer.reply(201, ''),
          );
          final result = await remoteDataSourceImp.addTasks(TestConstants.kTaskEntityTest);
          expect(result, false);
        },
      );

      test(
        'should throw server failure exception',
        () async {
          dioAdapter.onPost(
            ApiUrls.tasksURL,
            data: TestConstants.kTaskEntityTest.toJson(),
            (mockServer) => mockServer.throws(
              400,
              DioException(
                response: Response(requestOptions: RequestOptions(), data: {'message': 'Server Failure'}),
                requestOptions: RequestOptions(
                  path: ApiUrls.tasksURL,
                ),
              ),
            ),
          );
          final result = remoteDataSourceImp.addTasks(TestConstants.kTaskEntityTest);
          expect(result, throwsA(isA<ServerFailure>()));
        },
      );
    },
  );

  group(
    'delete task',
    () {
      test(
        'should return true if the status code is 204',
        () async {
          dioAdapter.onDelete(
            '${ApiUrls.tasksURL}/${TestConstants.kTaskEntityTest.id}',
            (mockServer) => mockServer.reply(204, ''),
          );
          final result = await remoteDataSourceImp.deleteTask(TestConstants.kTaskEntityTest.id);
          expect(result, true);
        },
      );

      test(
        'should return false if the status code is not 204',
        () async {
          dioAdapter.onDelete(
            '${ApiUrls.tasksURL}/${TestConstants.kTaskEntityTest.id}',
            (mockServer) => mockServer.reply(201, ''),
          );
          final result = await remoteDataSourceImp.deleteTask(TestConstants.kTaskEntityTest.id);
          expect(result, false);
        },
      );

      test(
        'should throw server failure exception',
        () async {
          dioAdapter.onDelete(
            '${ApiUrls.tasksURL}/${TestConstants.kTaskEntityTest.id}',
            (mockServer) => mockServer.throws(
              400,
              DioException(
                response: Response(requestOptions: RequestOptions(), data: {'message': 'Server Failure'}),
                requestOptions: RequestOptions(
                  path: ApiUrls.tasksURL,
                ),
              ),
            ),
          );
          final result = remoteDataSourceImp.deleteTask(TestConstants.kTaskEntityTest.id);
          expect(result, throwsA(isA<ServerFailure>()));
        },
      );
    },
  );

  group(
    'update task',
    () {
      test(
        'should return true if the status code is 200',
        () async {
          dioAdapter.onPost(
            '${ApiUrls.tasksURL}/${TestConstants.kTaskEntityTest.id}',
            data: TestConstants.kTaskEntityTest.toJson(),
            (mockServer) => mockServer.reply(200, ''),
          );
          final result = await remoteDataSourceImp.updateTask(TestConstants.kTaskEntityTest);
          expect(result, true);
        },
      );

      test(
        'should return false if the status code is not 200',
        () async {
          dioAdapter.onPost(
            '${ApiUrls.tasksURL}/${TestConstants.kTaskEntityTest.id}',
            data: TestConstants.kTaskEntityTest.toJson(),
            (mockServer) => mockServer.reply(201, ''),
          );
          final result = await remoteDataSourceImp.updateTask(TestConstants.kTaskEntityTest);
          expect(result, false);
        },
      );

      test(
        'should throw server failure exception',
        () async {
          dioAdapter.onPost(
            '${ApiUrls.tasksURL}/${TestConstants.kTaskEntityTest.id}',
            data: TestConstants.kTaskEntityTest.toJson(),
            (mockServer) => mockServer.throws(
              400,
              DioException(
                response: Response(requestOptions: RequestOptions(), data: {'message': 'Server Failure'}),
                requestOptions: RequestOptions(
                  path: ApiUrls.tasksURL,
                ),
              ),
            ),
          );
          final result = remoteDataSourceImp.updateTask(TestConstants.kTaskEntityTest);
          expect(result, throwsA(isA<ServerFailure>()));
        },
      );
    },
  );

  group(
    'get all tasks',
    () {
      test(
        'should return map containing list of tasks if the status code is 200',
        () async {
          dioAdapter.onGet(
            '${ApiUrls.tasksURL}?project_id=${TestConstants.kProjectId}',
            (mockServer) => mockServer.reply(200,TestConstants.kTaskEntitiesTest),
          );
          final result = await remoteDataSourceImp.getAllTasks(projectId: TestConstants.kProjectId);
          expect(result, TestConstants.kTasksMap);
        },
      );

      test(
        'should return empty map if the status code is not 200',
        () async {
          dioAdapter.onGet(
            '${ApiUrls.tasksURL}?project_id=${TestConstants.kProjectId}',
            (mockServer) => mockServer.reply(201, {}),
          );
          final result = await remoteDataSourceImp.getAllTasks(projectId: TestConstants.kProjectId);
          expect(result, {});
        },
      );

      test(
        'should throw server failure exception',
        () async {
          dioAdapter.onGet(
            '${ApiUrls.tasksURL}?project_id=${TestConstants.kProjectId}',
            (mockServer) => mockServer.throws(
              400,
              DioException(
                response: Response(requestOptions: RequestOptions(), data: {'message': 'Server Failure'}),
                requestOptions: RequestOptions(
                  path: ApiUrls.tasksURL,
                ),
              ),
            ),
          );
          final result = remoteDataSourceImp.getAllTasks(projectId: TestConstants.kProjectId);
          expect(result, throwsA(isA<ServerFailure>()));
        },
      );
    },
  );
}
