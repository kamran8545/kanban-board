import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:time_tracking_app/domain/entities/custom_failures.dart';
import 'package:time_tracking_app/domain/entities/result.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/delete_task_bloc/delete_task_bloc.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/delete_task_bloc/delete_task_event.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/delete_task_bloc/delete_task_state.dart';

import '../../../../helpers/test_helper.mocks.dart';
import '../../../../utils/constants.dart';

void main() {
  late MockDeleteTaskUseCase mockDeleteTaskUseCase;
  late DeleteTaskBloc deleteTaskBloc;

  setUp(() async {
    mockDeleteTaskUseCase = MockDeleteTaskUseCase();
    deleteTaskBloc = DeleteTaskBloc(deleteTaskUseCase: mockDeleteTaskUseCase);
    provideDummy<Result<CustomFailure, bool>>(
      const Success<CustomFailure, bool>(
        successRes: true,
      ),
    );
  });

  test('Test initial state is DeleteTaskInitialState', () {
    expect(deleteTaskBloc.state, const DeleteTaskInitialState());
  });

  blocTest<DeleteTaskBloc, DeleteTaskBlocState>(
    'should emit [DeleteTaskLoadingState, DeleteTaskDeletedState] when task is deleted',
    build: () {
      when(
        mockDeleteTaskUseCase.call(TestConstants.kTaskEntityTest.id),
      ).thenAnswer((_) async => const Success(successRes: true));
      return deleteTaskBloc;
    },
    act: (bloc) => bloc.add(DeleteTaskDeleteEvent(taskId: TestConstants.kTaskEntityTest.id)),
    expect: () => [
      const DeleteTaskLoadingState(),
      const DeleteTaskDeletedState(),
    ],
  );

  blocTest<DeleteTaskBloc, DeleteTaskBlocState>(
    'should emit [DeleteTaskLoadingState, DeleteTaskErrorState] when task failed to delete',
    build: () {
      when(
        mockDeleteTaskUseCase.call(TestConstants.kTaskEntityTest.id),
      ).thenAnswer((_) async => const Failure(failureRes: ServerFailure(message: TestConstants.kSomethingWentWrong)));
      return deleteTaskBloc;
    },
    act: (bloc) => bloc.add(DeleteTaskDeleteEvent(taskId: TestConstants.kTaskEntityTest.id)),
    expect: () => [
      const DeleteTaskLoadingState(),
      const DeleteTaskErrorState(failure: ServerFailure(message: TestConstants.kSomethingWentWrong)),
    ],
  );
}
