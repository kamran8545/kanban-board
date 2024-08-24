import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:time_tracking_app/presentation/create_task/bloc/task_form_bloc/task_form_bloc.dart';
import 'package:time_tracking_app/presentation/create_task/bloc/task_form_bloc/task_form_event.dart';
import 'package:time_tracking_app/presentation/create_task/bloc/task_form_bloc/task_form_state.dart';

import '../../../../helpers/test_helper.mocks.dart';
import '../../../../utils/constants.dart';

void main() {
  late MockCreateTasksUseCase mockCreateTasksUseCase;
  late TaskFormBloc taskFormBloc;

  setUp(() async {
    mockCreateTasksUseCase = MockCreateTasksUseCase();
    taskFormBloc = TaskFormBloc(createTaskUseCase: mockCreateTasksUseCase);
  });

  test('Test initial state is TaskFormState', () {
    expect(taskFormBloc.state, const TaskFormState());
  });

  blocTest<TaskFormBloc, TaskFormState>(
    'should emit [CreateTaskLoadingState, CreateTaskCreatedState] when task is created',
    build: () => taskFormBloc,
    act: (bloc) {
      bloc.add(TitleChanged(TestConstants.kTaskEntityTest.content));
      bloc.add(DescriptionChanged(TestConstants.kTaskEntityTest.description));
      bloc.add(PriorityChanged(TestConstants.kTaskEntityTest.priority));
      bloc.add(LabelChanged(TestConstants.kTaskEntityTest.labels.first));
      bloc.add(const SubmitTaskForm());
    },
    expect: () => [
      taskFormBloc.state.copyWith(
        title: TestConstants.kTaskEntityTest.content,
        description: '',
        priority: null,
        label: TestConstants.kTaskEntityTest.labels.first,
        dueDate: null,
        isValid: false,
        isCreated: false,
      ),
      taskFormBloc.state.copyWith(
        title: TestConstants.kTaskEntityTest.content,
        description: TestConstants.kTaskEntityTest.description,
        priority: null,
        label: TestConstants.kTaskEntityTest.labels.first,
        dueDate: null,
        isValid: false,
        isCreated: false,
      ),
      taskFormBloc.state.copyWith(
        title: TestConstants.kTaskEntityTest.content,
        description: TestConstants.kTaskEntityTest.description,
        priority: TestConstants.kTaskEntityTest.priority,
        label: TestConstants.kTaskEntityTest.labels.first,
        dueDate: null,
        isValid: false,
        isCreated: false,
      ),
    ],
  );
}
