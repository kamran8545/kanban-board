import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_tracking_app/domain/entities/tasks/task_due_date_entity.dart';
import 'package:time_tracking_app/domain/entities/tasks/task_entity.dart';
import 'package:time_tracking_app/domain/usecase/tasks/create_tasks_usecase.dart';
import 'package:time_tracking_app/utils/constants.dart';
import '../../../../core/dependency_injection.dart';
import '../../../../domain/entities/result.dart';
import '../../../home/bloc/get_all_tasks_bloc/get_all_tasks_bloc.dart';
import '../../../home/bloc/get_all_tasks_bloc/get_all_tasks_event.dart';
import 'task_form_event.dart';
import 'task_form_state.dart';

class TaskFormBloc extends Bloc<TaskFormEvent, TaskFormState> {
  final CreateTasksUseCase _createTasksUseCase;

  TaskFormBloc({required CreateTasksUseCase createTaskUseCase})
      : _createTasksUseCase = createTaskUseCase,
        super(const TaskFormState()) {
    on<TitleChanged>((event, emit) {
      emit(state.copyWith(
        title: event.title,
        isValid: _validateForm(
          title: event.title,
          description: state.description,
          label: state.label,
          dueDate: state.dueDate,
        ),
      ));
    });

    on<DescriptionChanged>((event, emit) {
      emit(state.copyWith(
        description: event.description,
        isValid: _validateForm(
          title: state.title,
          description: event.description,
          label: state.label,
          dueDate: state.dueDate,
        ),
      ));
    });

    on<PriorityChanged>((event, emit) {
      emit(state.copyWith(
        priority: event.priority,
        isValid: _validateForm(
          title: state.title,
          description: state.description,
          label: state.label,
          dueDate: state.dueDate,
        ),
      ));
    });

    on<LabelChanged>((event, emit) {
      emit(state.copyWith(
        label: event.label,
        isValid: _validateForm(
          title: state.title,
          description: state.description,
          label: event.label,
          dueDate: state.dueDate,
        ),
      ));
    });

    on<DueDateChanged>((event, emit) {
      emit(state.copyWith(
        dueDate: event.dueDate,
        isValid: _validateForm(
          title: state.title,
          description: state.description,
          label: state.label,
          dueDate: event.dueDate,
        ),
      ));
    });

    on<SubmitTaskForm>((event, emit) async {
      if (state.isValid) {
        emit(state.copyWith(isSubmitting: true));
        TaskEntity taskEntity = TaskEntity(
          id: '',
          content: state.title,
          description: state.description,
          projectId: AppConstants.kProjectId,
          priority: 0,
          labels: [state.label],
          dueDateEntity: TaskDueDateEntity(
            date: state.dueDate.toString(),
            description: '',
            lang: '',
            isRecurring: false,
            dateTime: '',
          ),
        );
        final result = await _createTasksUseCase.call(taskEntity);
        switch (result) {
          case Success(successRes: final _):
            emit(state.copyWith(isCreated: true));
            sl<GetAllTasksBloc>().add(const GetAllTasksEvent(projectId: AppConstants.kProjectId));
            break;
          case Failure(failureRes: final _):
            break;
        }
      }
    });

    on<TaskFormTaskCreated>((event, emit) {
      emit(state.copyWith(isCreated: true));
    });
  }

  bool _validateForm({
    required String title,
    required String description,
    required String? label,
    required DateTime? dueDate,
  }) {
    return title.isNotEmpty && description.isNotEmpty && label != null && dueDate != null;
  }
}
