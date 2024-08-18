import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:time_tracking_app/domain/entities/custom_failures.dart';
import 'package:time_tracking_app/domain/entities/result.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/update_task_bloc/update_task_bloc.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/update_task_bloc/update_task_event.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/update_task_bloc/update_task_state.dart';

import '../../../../helpers/test_helper.mocks.dart';
import '../../../../utils/constants.dart';

void main() {
  late MockUpdateTasksUseCase mockUpdateTasksUseCase;
  late UpdateTaskBloc updateTaskBloc;

  setUp(() async {
    mockUpdateTasksUseCase = MockUpdateTasksUseCase();
    updateTaskBloc = UpdateTaskBloc(updateTasksUseCase: mockUpdateTasksUseCase);

    provideDummy<Result<CustomFailure, bool>>(
      const Success<CustomFailure, bool>(
        successRes: true,
      ),
    );
  });

  test('Test initial state is UpdateTaskInitialState', () {
    expect(updateTaskBloc.state, const UpdateTaskInitialState());
  });

  blocTest<UpdateTaskBloc, UpdateTaskBlocState>(
    'should emit [UpdateTaskLoadingState, UpdateTaskUpdatedState] when task is updated',
    build: () {
      when(
        mockUpdateTasksUseCase.call(TestConstants.kTaskEntityTest),
      ).thenAnswer((_) async => const Success(successRes: true));
      return updateTaskBloc;
    },
    act: (bloc) => bloc.add(UpdateTaskEvent(taskEntity: TestConstants.kTaskEntityTest)),
    expect: () => [
      const UpdateTaskLoadingState(),
      const UpdateTaskUpdatedState(),
    ],
  );

  blocTest<UpdateTaskBloc, UpdateTaskBlocState>(
    'should emit [UpdateTaskLoadingState, CreateTaskErrorState] when task failed to create',
    build: () {
      when(
        mockUpdateTasksUseCase.call(TestConstants.kTaskEntityTest),
      ).thenAnswer((_) async =>  const Failure(failureRes: ServerFailure(message: TestConstants.kSomethingWentWrong)));
      return updateTaskBloc;
    },
    act: (bloc) => bloc.add(UpdateTaskEvent(taskEntity: TestConstants.kTaskEntityTest)),
    expect: () => [
      const UpdateTaskLoadingState(),
      const UpdateTaskErrorState(failure: ServerFailure(message: TestConstants.kSomethingWentWrong)),
    ],
  );


}