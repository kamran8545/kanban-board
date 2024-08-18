import 'package:time_tracking_app/domain/entities/tasks/task_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../domain/entities/custom_failures.dart';

part 'update_task_state.freezed.dart';

@freezed
class UpdateTaskBlocState with _$UpdateTaskBlocState {
  const factory UpdateTaskBlocState.initial({TaskEntity? taskEntity}) = UpdateTaskInitialState;

  const factory UpdateTaskBlocState.loading() = UpdateTaskLoadingState;

  const factory UpdateTaskBlocState.updated() = UpdateTaskUpdatedState;

  const factory UpdateTaskBlocState.error({required CustomFailure failure}) = UpdateTaskErrorState;
}
