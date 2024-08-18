import 'package:time_tracking_app/domain/entities/custom_failures.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_task_state.freezed.dart';

@freezed
class CreateTasksBlocState with _$CreateTasksBlocState {
  const factory CreateTasksBlocState.initial() = CreateTaskInitialState;

  const factory CreateTasksBlocState.loading() = CreateTaskLoadingState;

  const factory CreateTasksBlocState.created() = CreateTaskCreatedState;

  const factory CreateTasksBlocState.error({required CustomFailure failure}) = CreateTaskErrorState;
}
