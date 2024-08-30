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
            (mockServer) => mockServer.reply(200, TestConstants.kTaskEntitiesTest),
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

  group('add comment', () {
    test(
      'should return comment entity if the status code is 200',
      () async {
        dioAdapter.onPost(
          ApiUrls.commentsURL,
          data: TestConstants.kTestCommentEntity.toJson(),
          (mockServer) => mockServer.reply(200, TestConstants.kTestCommentEntity),
        );
        final result = await remoteDataSourceImp.addComment(commentEntity: TestConstants.kTestCommentEntity);

        expect(result, TestConstants.kTestCommentEntity);
      },
    );

    test(
      'should throw exception if the status code is not 200',
      () async {
        dioAdapter.onPost(
          ApiUrls.commentsURL,
          data: TestConstants.kTestCommentEntity.toJson(),
          (mockServer) => mockServer.throws(
            201,
            DioException(
              response: Response(requestOptions: RequestOptions(), data: {'message': 'Server Failure'}),
              requestOptions: RequestOptions(
                path: ApiUrls.tasksURL,
              ),
            ),
          ),
        );
        final result = remoteDataSourceImp.addComment(commentEntity: TestConstants.kTestCommentEntity);
        expect(result, throwsA(isA<ServerFailure>()));
      },
    );

    test(
      'should throw server failure exception',
      () async {
        dioAdapter.onPost(
          ApiUrls.commentsURL,
          data: TestConstants.kTestCommentEntity.toJson(),
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
        final result = remoteDataSourceImp.addComment(commentEntity: TestConstants.kTestCommentEntity);
        expect(result, throwsA(isA<ServerFailure>()));
      },
    );
  });

  group('delete comment', () {
    test(
      'should return true if comment is deleted and status code is 204',
      () async {
        dioAdapter.onDelete(
          '${ApiUrls.commentsURL}/${TestConstants.kTestCommentEntity.id}',
          (mockServer) => mockServer.reply(204, true),
        );
        final result = await remoteDataSourceImp.deleteComment(commentId: TestConstants.kTestCommentEntity.id);

        expect(result, true);
      },
    );

    test(
      'should return false if comment is not deleted the status code is not 204',
      () async {
        dioAdapter.onDelete(
          '${ApiUrls.commentsURL}/${TestConstants.kTestCommentEntity.id}',
          (mockServer) => mockServer.reply(
            201,
            false,
          ),
        );
        final result = await remoteDataSourceImp.deleteComment(commentId: TestConstants.kTestCommentEntity.id);
        expect(result, false);
      },
    );

    test(
      'should throw server failure exception',
      () async {
        dioAdapter.onDelete(
          '${ApiUrls.commentsURL}/${TestConstants.kTestCommentEntity.id}',
          (mockServer) => mockServer.throws(
            400,
            DioException(
              response: Response(requestOptions: RequestOptions(), data: {'message': 'Server Failure'}),
              requestOptions: RequestOptions(
                path: '${ApiUrls.commentsURL}/${TestConstants.kTestCommentEntity.id}',
              ),
            ),
          ),
        );
        final result = remoteDataSourceImp.deleteComment(commentId: TestConstants.kTestCommentEntity.id);
        expect(result, throwsA(isA<ServerFailure>()));
      },
    );
  });

  group('get all comments', () {
    test('should return list of comments if the status code is 200', () async {
      dioAdapter.onGet(
        '${ApiUrls.commentsURL}?task_id=${TestConstants.kTaskEntityTest.id}',
        (mockServer) => mockServer.reply(
          200,
          TestConstants.kTestComments,
        ),
      );

      var result = await remoteDataSourceImp.getAllComments(taskId: TestConstants.kTaskEntityTest.id);
      expect(result, TestConstants.kTestComments);
    });

    test('should return empty list if the status code is not 200', () async {
      dioAdapter.onGet(
        '${ApiUrls.commentsURL}?task_id=${TestConstants.kTaskEntityTest.id}',
        (mockServer) => mockServer.reply(
          201,
          [],
        ),
      );

      var result = await remoteDataSourceImp.getAllComments(taskId: TestConstants.kTaskEntityTest.id);
      expect(result, []);
    });

    test('should throw sever exception when something went wrong', () async {
      dioAdapter.onGet(
        '${ApiUrls.commentsURL}?task_id=${TestConstants.kTaskEntityTest.id}',
        (mockServer) => mockServer.throws(
          400,
          DioException(
            requestOptions: RequestOptions(
              path: '${ApiUrls.commentsURL}?task_id=${TestConstants.kTaskEntityTest.id}',
            ),
            response: Response(
              requestOptions: RequestOptions(),
              data: {'message': 'Server Failure'},
            ),
          ),
        ),
      );

      var result = remoteDataSourceImp.getAllComments(taskId: TestConstants.kTaskEntityTest.id);
      expect(result, throwsA(isA<ServerFailure>()));
    });
  });
}
