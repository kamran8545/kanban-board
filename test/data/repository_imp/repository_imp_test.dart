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
        when(mockRemoteDataSource.addTasks(kTaskEntityTest)).thenAnswer((_) async => Future.value(true));
        final result = await repositoryImp.addTasks(kTaskEntityTest);
        expect((result as Success).successRes, true);
      },
    );

    test(
      'should return network failure when device is not connected to internet',
      () async {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => Future.value(false));
        when(mockRemoteDataSource.addTasks(kTaskEntityTest)).thenAnswer((_) async => Future.value(true));
        final result = await repositoryImp.addTasks(kTaskEntityTest);
        expect((result as Failure).failureRes, isA<NetworkFailure>());
      },
    );

    test(
      'should return Server Failure when when something went wrong',
      () async {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => Future.value(true));
        when(mockRemoteDataSource.addTasks(kTaskEntityTest)).thenAnswer(
          (_) => throw const ServerFailure(message: 'Something Went Wrong'),
        );
        final result = await repositoryImp.addTasks(kTaskEntityTest);
        expect((result as Failure).failureRes, isA<ServerFailure>());
      },
    );
  });

  group('delete tasks', () {
    test(
      'task deleted status should be true',
      () async {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => Future.value(true));
        when(mockRemoteDataSource.deleteTask(kTaskEntityTest.id)).thenAnswer((_) async => Future.value(true));
        final result = await repositoryImp.deleteTask(kTaskEntityTest.id);
        expect((result as Success).successRes, true);
      },
    );

    test(
      'should return network failure when device is not connected to internet',
      () async {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => Future.value(false));
        when(mockRemoteDataSource.deleteTask(kTaskEntityTest.id)).thenAnswer((_) async => Future.value(true));
        final result = await repositoryImp.deleteTask(kTaskEntityTest.id);
        expect((result as Failure).failureRes, isA<NetworkFailure>());
      },
    );

    test(
      'should return Server Failure when when something went wrong',
      () async {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => Future.value(true));
        when(mockRemoteDataSource.deleteTask(kTaskEntityTest.id)).thenAnswer(
          (_) => throw const ServerFailure(message: 'Something Went Wrong'),
        );
        final result = await repositoryImp.deleteTask(kTaskEntityTest.id);
        expect((result as Failure).failureRes, isA<ServerFailure>());
      },
    );
  });

  group('update tasks', () {
    test(
      'task updated status should be true',
      () async {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => Future.value(true));
        when(mockRemoteDataSource.updateTask(kTaskEntityTest)).thenAnswer((_) async => Future.value(true));
        final result = await repositoryImp.updateTask(kTaskEntityTest);
        expect((result as Success).successRes, true);
      },
    );

    test(
      'should return network failure when device is not connected to internet',
      () async {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => Future.value(false));
        when(mockRemoteDataSource.updateTask(kTaskEntityTest)).thenAnswer((_) async => Future.value(true));
        final result = await repositoryImp.updateTask(kTaskEntityTest);
        expect((result as Failure).failureRes, isA<NetworkFailure>());
      },
    );

    test(
      'should return Server Failure when when something went wrong',
      () async {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => Future.value(true));
        when(mockRemoteDataSource.updateTask(kTaskEntityTest)).thenAnswer(
          (_) => throw const ServerFailure(message: 'Something Went Wrong'),
        );
        final result = await repositoryImp.updateTask(kTaskEntityTest);
        expect((result as Failure).failureRes, isA<ServerFailure>());
      },
    );
  });

  group('get all tasks', () {
    test(
      'should get list of tasks',
      () async {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => Future.value(true));
        when(mockRemoteDataSource.getAllTasks()).thenAnswer((_) async => kTaskEntitiesTest);
        final result = await repositoryImp.getAllTasks();
        expect((result as Success).successRes, kTaskEntitiesTest);
      },
    );

    test(
      'should return network failure when device is not connected to internet',
      () async {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => Future.value(false));
        when(mockRemoteDataSource.getAllTasks()).thenAnswer((_) async => kTaskEntitiesTest);
        final result = await repositoryImp.getAllTasks();
        expect((result as Failure).failureRes, isA<NetworkFailure>());
      },
    );

    test(
      'should return Server Failure when when something went wrong',
      () async {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => Future.value(true));
        when(mockRemoteDataSource.getAllTasks()).thenAnswer(
          (_) => throw const ServerFailure(message: 'Something Went Wrong'),
        );
        final result = await repositoryImp.getAllTasks();
        expect((result as Failure).failureRes, isA<ServerFailure>());
      },
    );
  });
}
