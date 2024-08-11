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
            data: kTaskEntityTest.toJson(),
            (mockServer) => mockServer.reply(200, ''),
          );
          final result = await remoteDataSourceImp.addTasks(kTaskEntityTest);
          expect(result, true);
        },
      );

      test(
        'should return false if the status code is not 200',
        () async {
          dioAdapter.onPost(
            ApiUrls.tasksURL,
            data: kTaskEntityTest.toJson(),
            (mockServer) => mockServer.reply(201, ''),
          );
          final result = await remoteDataSourceImp.addTasks(kTaskEntityTest);
          expect(result, false);
        },
      );

      test(
        'should throw server failure exception',
        () async {
          dioAdapter.onPost(
            ApiUrls.tasksURL,
            data: kTaskEntityTest.toJson(),
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
          final result = remoteDataSourceImp.addTasks(kTaskEntityTest);
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
            '${ApiUrls.tasksURL}/${kTaskEntityTest.id}',
            (mockServer) => mockServer.reply(204, ''),
          );
          final result = await remoteDataSourceImp.deleteTask(kTaskEntityTest.id);
          expect(result, true);
        },
      );

      test(
        'should return false if the status code is not 204',
        () async {
          dioAdapter.onDelete(
            '${ApiUrls.tasksURL}/${kTaskEntityTest.id}',
            (mockServer) => mockServer.reply(201, ''),
          );
          final result = await remoteDataSourceImp.deleteTask(kTaskEntityTest.id);
          expect(result, false);
        },
      );

      test(
        'should throw server failure exception',
        () async {
          dioAdapter.onDelete(
            '${ApiUrls.tasksURL}/${kTaskEntityTest.id}',
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
          final result = remoteDataSourceImp.deleteTask(kTaskEntityTest.id);
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
            '${ApiUrls.tasksURL}/${kTaskEntityTest.id}',
            data: kTaskEntityTest.toJson(),
            (mockServer) => mockServer.reply(200, ''),
          );
          final result = await remoteDataSourceImp.updateTask(kTaskEntityTest);
          expect(result, true);
        },
      );

      test(
        'should return false if the status code is not 200',
        () async {
          dioAdapter.onPost(
            '${ApiUrls.tasksURL}/${kTaskEntityTest.id}',
            data: kTaskEntityTest.toJson(),
            (mockServer) => mockServer.reply(201, ''),
          );
          final result = await remoteDataSourceImp.updateTask(kTaskEntityTest);
          expect(result, false);
        },
      );

      test(
        'should throw server failure exception',
        () async {
          dioAdapter.onPost(
            '${ApiUrls.tasksURL}/${kTaskEntityTest.id}',
            data: kTaskEntityTest.toJson(),
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
          final result = remoteDataSourceImp.updateTask(kTaskEntityTest);
          expect(result, throwsA(isA<ServerFailure>()));
        },
      );
    },
  );

  group(
    'get all tasks',
    () {
      test(
        'should return list of tasks if the status code is 200',
        () async {
          dioAdapter.onGet(
            ApiUrls.tasksURL,
            (mockServer) => mockServer.reply(200, kTaskEntitiesTest),
          );
          final result = await remoteDataSourceImp.getAllTasks();
          expect(result, kTaskEntitiesTest);
        },
      );

      test(
        'should return empty if the status code is not 200',
        () async {
          dioAdapter.onGet(
            ApiUrls.tasksURL,
            (mockServer) => mockServer.reply(201, []),
          );
          final result = await remoteDataSourceImp.getAllTasks();
          expect(result, []);
        },
      );

      test(
        'should throw server failure exception',
        () async {
          dioAdapter.onGet(
            ApiUrls.tasksURL,
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
          final result = remoteDataSourceImp.getAllTasks();
          expect(result, throwsA(isA<ServerFailure>()));
        },
      );
    },
  );
}
