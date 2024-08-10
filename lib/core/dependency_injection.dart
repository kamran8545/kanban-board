import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:time_tracking_app/domain/usecase/tasks/create_tasks_usecase.dart';
import 'package:time_tracking_app/domain/usecase/tasks/get_all_tasks_usecase.dart';
import 'package:time_tracking_app/presentation/home/bloc/tasks_bloc.dart';

import '../data/local_data_source/local_data_source.dart';
import '../data/local_data_source/local_data_source_imp.dart';
import '../data/remote_data_source/remote_data_source.dart';
import '../data/remote_data_source/remote_data_source_imp.dart';
import '../data/repository_imp/repository_imp.dart';
import '../domain/repository/repository.dart';
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

  /// Blocs
  sl.registerLazySingleton<TasksBloc>(
    () => TasksBloc(
      createTasksUseCase: sl(),
      getAllTasksUseCase: sl(),
    ),
  );
}
