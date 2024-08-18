import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../domain/entities/custom_failures.dart';

part 'delete_task_state.freezed.dart';

@freezed
class DeleteTaskBlocState with _$DeleteTaskBlocState {
  const factory DeleteTaskBlocState.initial({String? taskId}) = DeleteTaskInitialState;

  const factory DeleteTaskBlocState.loading() = DeleteTaskLoadingState;

  const factory DeleteTaskBlocState.deleted() = DeleteTaskDeletedState;

  const factory DeleteTaskBlocState.error({required CustomFailure failure}) = DeleteTaskErrorState;
}
