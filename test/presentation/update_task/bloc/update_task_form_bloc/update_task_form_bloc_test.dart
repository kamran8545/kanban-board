import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mockito/mockito.dart';
import 'package:time_tracking_app/domain/entities/custom_failures.dart';
import 'package:time_tracking_app/domain/entities/result.dart';
import 'package:time_tracking_app/presentation/home/bloc/get_all_tasks_bloc/get_all_tasks_bloc.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/update_task_form_bloc/update_task_form_bloc.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/update_task_form_bloc/update_task_form_event.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/update_task_form_bloc/update_task_form_state.dart';

import '../../../../helpers/test_helper.mocks.dart';
import '../../../../utils/constants.dart';

void main() {
  var sl = GetIt.I;

  late MockUpdateTasksUseCase mockUpdateTasksUseCase;
  late UpdateTaskFormBloc updateTaskFormBloc;
  late MockGetAllTasksBloc mockGetAllTasksBloc;

  setUp(() async {
    await sl.reset();
    mockUpdateTasksUseCase = MockUpdateTasksUseCase();
    updateTaskFormBloc = UpdateTaskFormBloc(updateTasksUseCase: mockUpdateTasksUseCase);
    mockGetAllTasksBloc = MockGetAllTasksBloc();
    reset(mockUpdateTasksUseCase);

    sl.registerLazySingleton<GetAllTasksBloc>(() => mockGetAllTasksBloc);
    provideDummy<Result<CustomFailure, bool>>(
      const Success<CustomFailure, bool>(
        successRes: true,
      ),
    );
  });

  test('Test initial state is UpdateTaskFormState', () {
    expect(updateTaskFormBloc.state, const UpdateTaskFormState());
  });

  blocTest<UpdateTaskFormBloc, UpdateTaskFormState>(
    'should emit isValid, isSubmitting, and isSuccess states when task is updated',
    build: () {
      when(
        mockUpdateTasksUseCase.call(any),
      ).thenAnswer((_) async => const Success(successRes: true));
      updateTaskFormBloc.add(UpdateTaskFormInitialEvent(taskEntity: TestConstants.kTaskEntityTest));
      return updateTaskFormBloc;
    },
    act: (bloc) {
      bloc.add(TitleChanged(TestConstants.kTaskEntityTest.content));
      bloc.add(const SubmitTaskForm());
    },
    expect: () => [
      updateTaskFormBloc.state.copyWith(isValid: false, isSubmitting: false, isSuccess: false),
      updateTaskFormBloc.state.copyWith(isValid: true, isSubmitting: false, isSuccess: false),
      updateTaskFormBloc.state.copyWith(isValid: true, isSubmitting: true, isSuccess: false),
      updateTaskFormBloc.state.copyWith(isValid: true, isSubmitting: true, isSuccess: true),
    ],
  );

  blocTest<UpdateTaskFormBloc, UpdateTaskFormState>(
    'should emit [CreateTaskLoadingState, CreateTaskCreatedState] when task failed to update',
    build: () {
      when(
        mockUpdateTasksUseCase.call(any),
      ).thenAnswer((_) async => const Failure(failureRes: ServerFailure(message: TestConstants.kSomethingWentWrong)));
      updateTaskFormBloc.add(UpdateTaskFormInitialEvent(taskEntity: TestConstants.kTaskEntityTest));
      return updateTaskFormBloc;
    },
    act: (bloc) {
      bloc.add(TitleChanged(TestConstants.kTaskEntityTest.content));
      bloc.add(const SubmitTaskForm());
    },
    expect: () => [
      updateTaskFormBloc.state.copyWith(isValid: false, isSubmitting: false, isSuccess: false, errorMessage: null),
      updateTaskFormBloc.state.copyWith(isValid: true, isSubmitting: false, isSuccess: false, errorMessage: null),
      updateTaskFormBloc.state.copyWith(isValid: true, isSubmitting: true, isSuccess: false, errorMessage: null),
      updateTaskFormBloc.state.copyWith(
        isValid: true,
        isSubmitting: true,
        isSuccess: false,
        errorMessage: TestConstants.kSomethingWentWrong,
      ),
    ],
  );

  tearDown(() {
    sl.reset();
    updateTaskFormBloc.close();
    mockGetAllTasksBloc.close();
  });
}
