import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:time_tracking_app/data/repository_imp/repository_imp.dart';
import 'package:time_tracking_app/domain/entities/custom_failures.dart';
import 'package:time_tracking_app/domain/entities/result.dart';

import '../../helpers/test_helper.mocks.dart';
import '../../utils/constants.dart';

void main() {
  late RepositoryImp repositoryImp;
  late MockNetworkInfo mockNetworkInfo;
  late MockRemoteDataSource mockRemoteDataSource;

  setUp(() {
    mockNetworkInfo = MockNetworkInfo();
    mockRemoteDataSource = MockRemoteDataSource();
    repositoryImp = RepositoryImp(networkInfo: mockNetworkInfo, remoteDataSource: mockRemoteDataSource);
  });

  group('add tasks', () {
    test(
      'task created status should be true',
      () async {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => Future.value(true));
        when(mockRemoteDataSource.addTasks(TestConstants.kTaskEntityTest)).thenAnswer((_) async => Future.value(true));
        final result = await repositoryImp.addTasks(TestConstants.kTaskEntityTest);
        expect((result as Success).successRes, true);
      },
    );

    test(
      'should return network failure when device is not connected to internet',
      () async {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => Future.value(false));
        when(mockRemoteDataSource.addTasks(TestConstants.kTaskEntityTest)).thenAnswer((_) async => Future.value(true));
        final result = await repositoryImp.addTasks(TestConstants.kTaskEntityTest);
        expect((result as Failure).failureRes, isA<NetworkFailure>());
      },
    );

    test(
      'should return Server Failure when when something went wrong',
      () async {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => Future.value(true));
        when(mockRemoteDataSource.addTasks(TestConstants.kTaskEntityTest)).thenAnswer(
          (_) => throw const ServerFailure(message: TestConstants.kSomethingWentWrong),
        );
        final result = await repositoryImp.addTasks(TestConstants.kTaskEntityTest);
        expect((result as Failure).failureRes, isA<ServerFailure>());
      },
    );
  });

  group('delete tasks', () {
    test(
      'task deleted status should be true',
      () async {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => Future.value(true));
        when(mockRemoteDataSource.deleteTask(TestConstants.kTaskEntityTest.id))
            .thenAnswer((_) async => Future.value(true));
        final result = await repositoryImp.deleteTask(TestConstants.kTaskEntityTest.id);
        expect((result as Success).successRes, true);
      },
    );

    test(
      'should return network failure when device is not connected to internet',
      () async {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => Future.value(false));
        when(mockRemoteDataSource.deleteTask(TestConstants.kTaskEntityTest.id))
            .thenAnswer((_) async => Future.value(true));
        final result = await repositoryImp.deleteTask(TestConstants.kTaskEntityTest.id);
        expect((result as Failure).failureRes, isA<NetworkFailure>());
      },
    );

    test(
      'should return Server Failure when something went wrong',
      () async {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => Future.value(true));
        when(mockRemoteDataSource.deleteTask(TestConstants.kTaskEntityTest.id)).thenAnswer(
          (_) => throw const ServerFailure(message: TestConstants.kSomethingWentWrong),
        );
        final result = await repositoryImp.deleteTask(TestConstants.kTaskEntityTest.id);
        expect((result as Failure).failureRes, isA<ServerFailure>());
      },
    );
  });

  group('update tasks', () {
    test(
      'task updated status should be true',
      () async {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => Future.value(true));
        when(mockRemoteDataSource.updateTask(TestConstants.kTaskEntityTest))
            .thenAnswer((_) async => Future.value(true));
        final result = await repositoryImp.updateTask(TestConstants.kTaskEntityTest);
        expect((result as Success).successRes, true);
      },
    );

    test(
      'should return network failure when device is not connected to internet',
      () async {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => Future.value(false));
        when(mockRemoteDataSource.updateTask(TestConstants.kTaskEntityTest))
            .thenAnswer((_) async => Future.value(true));
        final result = await repositoryImp.updateTask(TestConstants.kTaskEntityTest);
        expect((result as Failure).failureRes, isA<NetworkFailure>());
      },
    );

    test(
      'should return Server Failure when something went wrong',
      () async {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => Future.value(true));
        when(mockRemoteDataSource.updateTask(TestConstants.kTaskEntityTest)).thenAnswer(
          (_) => throw const ServerFailure(message: TestConstants.kSomethingWentWrong),
        );
        final result = await repositoryImp.updateTask(TestConstants.kTaskEntityTest);
        expect((result as Failure).failureRes, isA<ServerFailure>());
      },
    );
  });

  group('get all tasks', () {
    test(
      'should get map containing list of tasks',
      () async {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => Future.value(true));
        when(mockRemoteDataSource.getAllTasks(projectId: TestConstants.kProjectId)).thenAnswer(
          (_) async => TestConstants.kTasksMap,
        );
        final result = await repositoryImp.getAllTasks(projectId: TestConstants.kProjectId);
        expect((result as Success).successRes, TestConstants.kTasksMap);
      },
    );

    test(
      'should return network failure when device is not connected to internet',
      () async {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => Future.value(false));
        when(mockRemoteDataSource.getAllTasks(projectId: TestConstants.kProjectId)).thenAnswer(
          (_) async => TestConstants.kTasksMap,
        );
        final result = await repositoryImp.getAllTasks(projectId: TestConstants.kProjectId);
        expect((result as Failure).failureRes, isA<NetworkFailure>());
      },
    );

    test(
      'should return Server Failure when something went wrong',
      () async {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => Future.value(true));
        when(mockRemoteDataSource.getAllTasks(projectId: TestConstants.kProjectId)).thenAnswer(
          (_) => throw const ServerFailure(message: TestConstants.kSomethingWentWrong),
        );
        final result = await repositoryImp.getAllTasks(projectId: TestConstants.kProjectId);
        expect((result as Failure).failureRes, isA<ServerFailure>());
      },
    );
  });

  group('add comment', () {
    test(
      'should return comment entity after adding comment',
      () async {
        when(mockNetworkInfo.isConnected).thenAnswer((_) => Future.value(true));
        when(
          mockRemoteDataSource.addComment(commentEntity: TestConstants.kTestCommentEntity),
        ).thenAnswer(
          (_) => Future.value(TestConstants.kTestCommentEntity),
        );

        var result = await mockRemoteDataSource.addComment(commentEntity: TestConstants.kTestCommentEntity);
        expect(result, TestConstants.kTestCommentEntity);
      },
    );

    test(
      'should return network failure when device is not connected to internet',
      () async {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => Future.value(false));
        when(mockRemoteDataSource.addComment(commentEntity: TestConstants.kTestCommentEntity)).thenAnswer(
          (_) async => TestConstants.kTestCommentEntity,
        );
        final result = await repositoryImp.addComment(commentEntity: TestConstants.kTestCommentEntity);
        expect((result as Failure).failureRes, isA<NetworkFailure>());
      },
    );

    test(
      'should return Server Failure when something went wrong',
      () async {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => Future.value(true));
        when(mockRemoteDataSource.addComment(commentEntity: TestConstants.kTestCommentEntity)).thenAnswer(
          (_) => throw const ServerFailure(message: TestConstants.kSomethingWentWrong),
        );
        final result = await repositoryImp.addComment(commentEntity: TestConstants.kTestCommentEntity);
        expect((result as Failure).failureRes, isA<ServerFailure>());
      },
    );
  });

  group('delete comment', () {
    test(
      'should return true after deleting comment',
      () async {
        when(mockNetworkInfo.isConnected).thenAnswer((_) => Future.value(true));
        when(
          mockRemoteDataSource.deleteComment(commentId: TestConstants.kTestCommentEntity.id),
        ).thenAnswer(
          (_) => Future.value(true),
        );

        var result = await mockRemoteDataSource.deleteComment(commentId: TestConstants.kTestCommentEntity.id);
        expect(result, true);
      },
    );

    test(
      'should return network failure when device is not connected to internet',
      () async {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => Future.value(false));
        when(mockRemoteDataSource.deleteComment(commentId: TestConstants.kTestCommentEntity.id)).thenAnswer(
          (_) async => Future.value(true),
        );
        final result = await repositoryImp.deleteComment(commentId: TestConstants.kTestCommentEntity.id);
        expect((result as Failure).failureRes, isA<NetworkFailure>());
      },
    );

    test(
      'should return Server Failure when something went wrong',
      () async {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => Future.value(true));
        when(mockRemoteDataSource.deleteComment(commentId: TestConstants.kTestCommentEntity.id)).thenAnswer(
          (_) => throw const ServerFailure(message: TestConstants.kSomethingWentWrong),
        );
        final result = await repositoryImp.deleteComment(commentId: TestConstants.kTestCommentEntity.id);
        expect((result as Failure).failureRes, isA<ServerFailure>());
      },
    );
  });

  group('get all comments', () {
    test('should get list of all comments', () async {
      when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      when(mockRemoteDataSource.getAllComments(taskId: TestConstants.kTaskEntityTest.id)).thenAnswer(
        (_) async => TestConstants.kTestComments,
      );

      var result = await repositoryImp.getAllComments(taskId: TestConstants.kTaskEntityTest.id);
      expect((result as Success).successRes, TestConstants.kTestComments);
    });

    test('should return network failure when device is not connected to internet', () async {
      when(mockNetworkInfo.isConnected).thenAnswer((_) async => false);
      when(mockRemoteDataSource.getAllComments(taskId: TestConstants.kTaskEntityTest.id)).thenAnswer(
        (_) async => TestConstants.kTestComments,
      );

      var result = await repositoryImp.getAllComments(taskId: TestConstants.kTaskEntityTest.id);
      expect((result as Failure).failureRes, isA<NetworkFailure>());
    });

    test('should return server failure when something went wrong', () async {
      when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      when(mockRemoteDataSource.getAllComments(taskId: TestConstants.kTaskEntityTest.id)).thenThrow(
        const ServerFailure(message: TestConstants.kSomethingWentWrong),
      );

      var result = await repositoryImp.getAllComments(taskId: TestConstants.kTaskEntityTest.id);
      expect((result as Failure).failureRes, isA<ServerFailure>());
    });
  });
}
