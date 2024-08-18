import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_tracking_app/domain/entities/tasks/task_due_date_entity.dart';
import 'package:time_tracking_app/domain/usecase/tasks/update_task_usecase.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/update_task_form_bloc/update_task_form_event.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/update_task_form_bloc/update_task_form_state.dart';
import 'package:time_tracking_app/utils/constants.dart';

import '../../../../core/dependency_injection.dart';
import '../../../../domain/entities/result.dart';
import '../../../../domain/entities/tasks/task_entity.dart';
import '../../../home/bloc/get_all_tasks_bloc/get_all_tasks_bloc.dart';
import '../../../home/bloc/get_all_tasks_bloc/get_all_tasks_event.dart';

class UpdateTaskFormBloc extends Bloc<UpdateTaskFormEvent, UpdateTaskFormState> {
  final UpdateTasksUseCase _updateTasksUseCase;

  UpdateTaskFormBloc({required UpdateTasksUseCase updateTasksUseCase})
      : _updateTasksUseCase = updateTasksUseCase,
        super(const UpdateTaskFormState()) {
    on<UpdateTaskFormInitialEvent>(
      (event, emit) {
        emit(
          state.copyWith(
            id: event.taskEntity.id,
            title: event.taskEntity.content,
            description: event.taskEntity.description,
            priority: event.taskEntity.priority,
            label: event.taskEntity.labels.first,
            dueDate: event.taskEntity.dueDateEntity != null
                ? DateTime.parse(event.taskEntity.dueDateEntity!.dateTime)
                : null,
          ),
        );
      },
    );

    on<TitleChanged>((event, emit) {
      emit(state.copyWith(title: event.title, isValid: _validateForm()));
    });
    on<DescriptionChanged>((event, emit) {
      emit(state.copyWith(description: event.description, isValid: _validateForm()));
    });
    on<PriorityChanged>((event, emit) {
      emit(state.copyWith(priority: event.priority, isValid: _validateForm()));
    });
    on<LabelChanged>((event, emit) {
      emit(state.copyWith(label: event.label, isValid: _validateForm()));
    });
    on<DueDateChanged>((event, emit) {
      emit(state.copyWith(dueDate: event.dueDate, isValid: _validateForm()));
    });
    on<SubmitTaskForm>((event, emit) async {
      if (state.isValid) {
        emit(state.copyWith(isSubmitting: true));
        TaskEntity taskEntity = TaskEntity(
          id: state.id,
          projectId: AppConstants.kProjectId,
          content: state.title,
          description: state.description,
          priority: state.priority ?? 0,
          labels: [state.label],
          dueDateEntity: TaskDueDateEntity(
            date: state.dueDate.toString(),
            description: '',
            lang: '',
            isRecurring: false,
            dateTime: '',
          ),
        );
        final result = await _updateTasksUseCase(taskEntity);
        switch (result) {
          case Success(successRes: final _):
            sl<GetAllTasksBloc>().add(const GetAllTasksEvent(projectId: AppConstants.kProjectId));
            emit(state.copyWith(isSuccess: true));
            break;
          case Failure(failureRes: final error):
            emit(state.copyWith(errorMessage: error.message));
            break;
        }
      }
    });
  }

  bool _validateForm() {
    return state.title.isNotEmpty && state.description.isNotEmpty && state.priority != null;
  }
}
