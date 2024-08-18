import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:time_tracking_app/domain/entities/custom_failures.dart';
import 'package:time_tracking_app/domain/entities/result.dart';
import 'package:time_tracking_app/domain/entities/tasks/task_entity.dart';
import 'package:time_tracking_app/presentation/home/bloc/get_all_tasks_bloc/get_all_tasks_bloc.dart';
import 'package:time_tracking_app/presentation/home/bloc/get_all_tasks_bloc/get_all_tasks_event.dart';
import 'package:time_tracking_app/presentation/home/bloc/get_all_tasks_bloc/get_all_tasks_state.dart';

import '../../../../helpers/test_helper.mocks.dart';
import '../../../../utils/constants.dart';

void main() {
  late MockGetAllTasksUseCase mockGetAllTasksUseCase;
  late GetAllTasksBloc getAllTasksBloc;

  setUp(() async {
    mockGetAllTasksUseCase = MockGetAllTasksUseCase();
    getAllTasksBloc = GetAllTasksBloc(getAllTasksUseCase: mockGetAllTasksUseCase);
    provideDummy<Result<CustomFailure, Map<String, List<TaskEntity>>>>(
      const Success(
        successRes: TestConstants.kTasksMap,
      ),
    );
  });

  test('Test initial state is GetAllTasksInitialState', () {
    expect(getAllTasksBloc.state, const GetAllTasksInitialState());
  });

  blocTest<GetAllTasksBloc, GetAllTasksBlocState>(
    'should emit [GetAllTasksLoadingState, GetAllTasksLoadedState] when get all tasks are fetched',
    build: () {
      when(
        mockGetAllTasksUseCase.call(TestConstants.kProjectId),
      ).thenAnswer((_) async => const Success(successRes: TestConstants.kTasksMap));
      return getAllTasksBloc;
    },
    act: (bloc) => bloc.add(const GetAllTasksEvent(projectId: TestConstants.kProjectId)),
    expect: () => [
      const GetAllTasksLoadingState(),
      const GetAllTasksLoadedState(tasks: TestConstants.kTasksMap),
    ],
  );

  blocTest<GetAllTasksBloc, GetAllTasksBlocState>(
    'should emit [GetAllTasksLoadingState, GetAllTasksErrorState] when task failed to create',
    build: () {
      when(
        mockGetAllTasksUseCase.call(TestConstants.kProjectId),
      ).thenAnswer((_) async => const Failure(failureRes: ServerFailure(message: TestConstants.kSomethingWentWrong)));
      return getAllTasksBloc;
    },
    act: (bloc) => bloc.add(const GetAllTasksEvent(projectId: TestConstants.kProjectId)),
    expect: () => [
      const GetAllTasksLoadingState(),
      const GetAllTasksErrorState(failure: ServerFailure(message: TestConstants.kSomethingWentWrong)),
    ],
  );
}
