import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mockito/mockito.dart';
import 'package:time_tracking_app/domain/entities/custom_failures.dart';
import 'package:time_tracking_app/domain/entities/result.dart';
import 'package:time_tracking_app/presentation/create_task/bloc/create_task_bloc/create_task_bloc.dart';
import 'package:time_tracking_app/presentation/create_task/bloc/create_task_bloc/create_task_event.dart';
import 'package:time_tracking_app/presentation/create_task/bloc/create_task_bloc/create_task_state.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:time_tracking_app/presentation/create_task/bloc/task_form_bloc/task_form_bloc.dart';
import 'package:time_tracking_app/presentation/home/bloc/get_all_tasks_bloc/get_all_tasks_bloc.dart';
import '../../../../helpers/test_helper.mocks.dart';
import '../../../../utils/constants.dart';

void main() {
  var sl = GetIt.I;

  late MockCreateTasksUseCase mockCreateTasksUseCase;
  late CreateTaskBloc createTaskBloc;
  late MockTaskFormBloc mockTaskFormBloc;
  late MockGetAllTasksBloc mockGetAllTasksBloc;

  setUp(() async {
    await sl.reset();
    mockCreateTasksUseCase = MockCreateTasksUseCase();
    createTaskBloc = CreateTaskBloc(createTasksUseCase: mockCreateTasksUseCase);
    mockTaskFormBloc = MockTaskFormBloc();
    mockGetAllTasksBloc = MockGetAllTasksBloc();

    sl.registerLazySingleton<TaskFormBloc>(() => mockTaskFormBloc);
    sl.registerLazySingleton<GetAllTasksBloc>(() => mockGetAllTasksBloc);
    provideDummy<Result<CustomFailure, bool>>(
      const Success<CustomFailure, bool>(
        successRes: true,
      ),
    );
  });

  test('Test initial state is CreateTaskInitialState', () {
    expect(createTaskBloc.state, const CreateTaskInitialState());
  });

  blocTest<CreateTaskBloc, CreateTasksBlocState>(
    'should emit [CreateTaskLoadingState, CreateTaskCreatedState] when task is created',
    build: () {
      when(
        mockCreateTasksUseCase.call(TestConstants.kTaskEntityTest),
      ).thenAnswer((_) async => const Success(successRes: true));
      return createTaskBloc;
    },
    act: (bloc) => bloc.add(CreateTaskEvent(taskEntity: TestConstants.kTaskEntityTest)),
    expect: () => [
      const CreateTaskLoadingState(),
      const CreateTaskCreatedState(),
    ],
  );

  blocTest<CreateTaskBloc, CreateTasksBlocState>(
    'should emit [CreateTaskLoadingState, CreateTaskErrorState] when task failed to create',
    build: () {
      when(
        mockCreateTasksUseCase.call(TestConstants.kTaskEntityTest),
      ).thenAnswer((_) async =>  const Failure(failureRes: ServerFailure(message: TestConstants.kSomethingWentWrong)));
      return createTaskBloc;
    },
    act: (bloc) => bloc.add(CreateTaskEvent(taskEntity: TestConstants.kTaskEntityTest)),
    expect: () => [
      const CreateTaskLoadingState(),
      const CreateTaskErrorState(failure: ServerFailure(message: TestConstants.kSomethingWentWrong)),
    ],
  );

  tearDown(() {
    sl.reset();
  });

}
