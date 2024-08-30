import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:time_tracking_app/domain/entities/comments/comment_entity.dart';
import 'package:time_tracking_app/domain/entities/custom_failures.dart';
import 'package:time_tracking_app/domain/entities/result.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/get_all_task_comments/get_all_tasks_comments_bloc.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/get_all_task_comments/get_all_tasks_comments_event.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/get_all_task_comments/get_all_tasks_comments_state.dart';

import '../../../../helpers/test_helper.mocks.dart';
import '../../../../utils/constants.dart';

void main() {
  late MockGetAllCommentsUseCase mockGetAllCommentsUseCase;
  late GetAllTasksCommentsBloc getAllTasksCommentsBloc;

  setUp(() {
    mockGetAllCommentsUseCase = MockGetAllCommentsUseCase();
    getAllTasksCommentsBloc = GetAllTasksCommentsBloc(getAllCommentsUseCase: mockGetAllCommentsUseCase);

    provideDummy<Result<CustomFailure, List<CommentEntity>>>(
      const Success<CustomFailure, List<CommentEntity>>(
        successRes: TestConstants.kTestComments,
      ),
    );
  });

  test('initial state of should be GetAllTasksCommentsInitialState', () {
    expect(getAllTasksCommentsBloc.state, const GetAllTasksCommentsInitialState());
  });

  blocTest(
    'should emit [GetAllTasksCommentsLoadingState, GetAllTasksCommentsLoadedState] when comments are fetched',
    build: () {
      when(mockGetAllCommentsUseCase.call(TestConstants.kTaskEntityTest.id)).thenAnswer(
        (_) async => const Success(successRes: TestConstants.kTestComments),
      );
      return getAllTasksCommentsBloc;
    },
    act: (bloc) => bloc.add(
      GetAllTasksCommentsEvent(taskId: TestConstants.kTaskEntityTest.id),
    ),
    expect: () => [
      const GetAllTasksCommentsLoadingState(),
      const GetAllTasksCommentsLoadedState(comments: TestConstants.kTestComments),
    ],
  );

  blocTest(
    'should emit [GetAllTasksCommentsLoadingState, GetAllTasksCommentsLoadedState] when comments failed to load',
    build: () {
      when(mockGetAllCommentsUseCase.call(TestConstants.kTaskEntityTest.id)).thenAnswer(
        (_) async => const Failure(failureRes: ServerFailure(message: TestConstants.kSomethingWentWrong)),
      );
      return getAllTasksCommentsBloc;
    },
    act: (bloc) => bloc.add(
      GetAllTasksCommentsEvent(taskId: TestConstants.kTaskEntityTest.id),
    ),
    expect: () => [
      const GetAllTasksCommentsLoadingState(),
      const GetAllTasksCommentsErrorState(message: TestConstants.kSomethingWentWrong),
    ],
  );

  tearDown((){
    getAllTasksCommentsBloc.close();
  });
}
