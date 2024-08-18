import 'package:time_tracking_app/domain/entities/tasks/task_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../domain/entities/custom_failures.dart';

part 'get_all_tasks_state.freezed.dart';

@freezed
class GetAllTasksBlocState with _$GetAllTasksBlocState {
  const factory GetAllTasksBlocState.initial() = GetAllTasksInitialState;

  const factory GetAllTasksBlocState.loading() = GetAllTasksLoadingState;

  const factory GetAllTasksBlocState.loaded({required Map<String, List<TaskEntity>> tasks}) = GetAllTasksLoadedState;

  const factory GetAllTasksBlocState.error({required CustomFailure failure}) = GetAllTasksErrorState;
}
