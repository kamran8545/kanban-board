import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:time_tracking_app/domain/entities/comments/comment_entity.dart';
import 'package:time_tracking_app/domain/entities/custom_failures.dart';
import 'package:time_tracking_app/domain/entities/result.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/add_task_comment/add_task_comment_bloc.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/add_task_comment/add_task_comment_event.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/add_task_comment/add_task_comment_state.dart';

import '../../../../helpers/test_helper.mocks.dart';
import '../../../../utils/constants.dart';

void main() {
  late MockAddCommentsUseCase mockAddCommentsUseCase;
  late AddTaskCommentBloc addTaskCommentBloc;

  setUp(() {
    mockAddCommentsUseCase = MockAddCommentsUseCase();
    addTaskCommentBloc = AddTaskCommentBloc(addCommentsUseCase: mockAddCommentsUseCase);
    provideDummy<Result<CustomFailure, CommentEntity>>(
      const Success<CustomFailure, CommentEntity>(
        successRes: TestConstants.kTestCommentEntity,
      ),
    );
  });

  test('Test initial state of AddTaskCommentBloc', () {
    expect(addTaskCommentBloc.state, const AddTaskCommentState());
  });

  blocTest<AddTaskCommentBloc, AddTaskCommentState>(
    'should emit [AddTaskCommentState] when text of comment field is changed',
    build: () {
      return addTaskCommentBloc;
    },
    act: (bloc) => bloc.add(const AddTaskCommentChangeEvent(comment: 'Dummy Comment')),
    expect: () => [
      const AddTaskCommentState(comment: 'Dummy Comment', isAdded: false),
    ],
  );

  blocTest<AddTaskCommentBloc, AddTaskCommentState>(
    'should emit [AddTaskCommentState] when comment is added',
    build: () {
      when(mockAddCommentsUseCase(
        CommentEntity(
          id: '',
          content: TestConstants.kTestCommentEntity.content,
          taskId: TestConstants.kTestCommentEntity.taskId,
        ),
      )).thenAnswer((_) async => const Success(successRes: TestConstants.kTestCommentEntity));
      return addTaskCommentBloc;
    },
    act: (bloc) {
      addTaskCommentBloc.add(AddTaskCommentChangeEvent(comment: TestConstants.kTestCommentEntity.content));
      bloc.add(AddTaskCommentAddEvent(taskId: TestConstants.kTestCommentEntity.taskId));
    },
    expect: () => [
      /// For AddTaskCommentChangeEvent
      AddTaskCommentState(
        comment: TestConstants.kTestCommentEntity.content,
        isSubmitting: false,
        isAdded: false,
      ),
      /// For AddTaskCommentAddEvent
      AddTaskCommentState(
        taskId: TestConstants.kTestCommentEntity.taskId,
        comment: TestConstants.kTestCommentEntity.content,
        isSubmitting: true,
        isAdded: false,
      ),
      /// For AddTaskCommentAddEvent success response
      AddTaskCommentState(
        taskId: TestConstants.kTestCommentEntity.taskId,
        comment: '', /// It should be empty because resetting field once comment is added
        isSubmitting: false,
        isAdded: true,
      ),

    ],
  );

  blocTest<AddTaskCommentBloc, AddTaskCommentState>(
    'should emit [AddTaskCommentState] when comment failed to add',
    build: () {
      when(mockAddCommentsUseCase(
        CommentEntity(
          id: '',
          content: TestConstants.kTestCommentEntity.content,
          taskId: TestConstants.kTestCommentEntity.taskId,
        ),
      )).thenAnswer((_) async => const Failure(failureRes: ServerFailure(message: TestConstants.kSomethingWentWrong)));
      return addTaskCommentBloc;
    },
    act: (bloc) {
      addTaskCommentBloc.add(AddTaskCommentChangeEvent(comment: TestConstants.kTestCommentEntity.content));
      bloc.add(AddTaskCommentAddEvent(taskId: TestConstants.kTestCommentEntity.taskId));
    },
    expect: () => [
      /// For AddTaskCommentChangeEvent
      AddTaskCommentState(
        comment: TestConstants.kTestCommentEntity.content,
        isSubmitting: false,
        isAdded: false,
      ),
      /// For AddTaskCommentAddEvent
      AddTaskCommentState(
        taskId: TestConstants.kTestCommentEntity.taskId,
        comment: TestConstants.kTestCommentEntity.content,
        isSubmitting: true,
        isAdded: false,
      ),
      /// For AddTaskCommentAddEvent failed
      AddTaskCommentState(
        taskId: TestConstants.kTestCommentEntity.taskId,
        comment: TestConstants.kTestCommentEntity.content,
        isSubmitting: false,
        isAdded: false,
        errorMessage: TestConstants.kSomethingWentWrong
      ),

    ],
  );
}
