import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:time_tracking_app/domain/usecase/comments/add_comments_usecase.dart';
import 'package:time_tracking_app/domain/usecase/comments/delete_comment_usecase.dart';
import 'package:time_tracking_app/domain/usecase/tasks/create_tasks_usecase.dart';
import 'package:time_tracking_app/domain/usecase/tasks/delete_task_usecase.dart';
import 'package:time_tracking_app/domain/usecase/tasks/get_all_tasks_usecase.dart';
import 'package:time_tracking_app/domain/usecase/tasks/update_task_usecase.dart';

import '../data/local_data_source/local_data_source.dart';
import '../data/local_data_source/local_data_source_imp.dart';
import '../data/remote_data_source/remote_data_source.dart';
import '../data/remote_data_source/remote_data_source_imp.dart';
import '../data/repository_imp/repository_imp.dart';
import '../domain/repository/repository.dart';
import '../presentation/create_task/bloc/create_task_bloc/create_task_bloc.dart';
import '../presentation/home/bloc/get_all_tasks_bloc/get_all_tasks_bloc.dart';
import '../presentation/update_task/bloc/update_task_bloc/update_task_bloc.dart';
import 'network_info.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  sl.registerLazySingleton(
    () => Dio(
      BaseOptions(
        receiveTimeout: const Duration(seconds: 60),
        connectTimeout: const Duration(seconds: 60),
        sendTimeout: const Duration(seconds: 60),
      ),
    ),
  );

  /// Data Sources
  sl.registerLazySingleton<LocalDataSource>(() => LocalDataSourceImp());
  sl.registerLazySingleton<RemoteDataSource>(() => RemoteDataSourceImp(dio: sl()));

  sl.registerLazySingleton<Repository>(
    () => RepositoryImp(
      remoteDataSource: sl(),
      networkInfo: sl(),
    ),
  );

  var internetInfo = NetworkInfoImp();
  await internetInfo.initListener();
  sl.registerLazySingleton<NetworkInfo>(() => internetInfo);

  /// UseCases
  sl.registerLazySingleton<GetAllTasksUseCase>(() => GetAllTasksUseCase(repository: sl()));
  sl.registerLazySingleton<CreateTasksUseCase>(() => CreateTasksUseCase(repository: sl()));
  sl.registerLazySingleton<UpdateTasksUseCase>(() => UpdateTasksUseCase(repository: sl()));
  sl.registerLazySingleton<DeleteTaskUseCase>(() => DeleteTaskUseCase(repository: sl()));
  sl.registerLazySingleton<AddCommentsUseCase>(() => AddCommentsUseCase(repository: sl()));
  sl.registerLazySingleton<DeleteCommentUseCase>(() => DeleteCommentUseCase(repository: sl()));

  /// Blocs
  sl.registerLazySingleton<CreateTaskBloc>(
    () => CreateTaskBloc(
      createTasksUseCase: sl(),
    ),
  );
  sl.registerLazySingleton<GetAllTasksBloc>(
    () => GetAllTasksBloc(
      getAllTasksUseCase: sl(),
    ),
  );
  sl.registerLazySingleton<UpdateTaskBloc>(
    () => UpdateTaskBloc(
      updateTasksUseCase: sl(),
    ),
  );
}
