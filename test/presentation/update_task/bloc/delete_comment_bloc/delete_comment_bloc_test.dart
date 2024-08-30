import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:time_tracking_app/domain/entities/custom_failures.dart';
import 'package:time_tracking_app/domain/entities/result.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/delete_comment_bloc/delete_comment_bloc.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/delete_comment_bloc/delete_comment_bloc_event.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/delete_comment_bloc/delete_comment_bloc_state.dart';

import '../../../../helpers/test_helper.mocks.dart';
import '../../../../utils/constants.dart';

void main() {
  late MockDeleteCommentUseCase mockDeleteCommentUseCase;
  late DeleteCommentBloc deleteCommentBloc;

  setUp(() {
    mockDeleteCommentUseCase = MockDeleteCommentUseCase();
    deleteCommentBloc = DeleteCommentBloc(deleteCommentUseCase: mockDeleteCommentUseCase);

    provideDummy<Result<CustomFailure, bool>>(const Success(successRes: true));
  });

  test('initial state of DeleteCommentBloc should be DeleteCommentInitialState', () {
    expect(deleteCommentBloc.state, const DeleteCommentInitialState());
  });

  blocTest(
    'should emit [DeleteCommentDeletingState, DeleteCommentDeletedState] if comment deleted successfully',
    build: () {
      when(
        mockDeleteCommentUseCase.call(TestConstants.kTestCommentEntity.id),
      ).thenAnswer(
        (_) async => const Success(successRes: true),
      );
      return deleteCommentBloc;
    },
    act: (bloc) => bloc.add(DeleteCommentDeleteEvent(commentId: TestConstants.kTestCommentEntity.id)),
    expect: () => [
      DeleteCommentDeletingState(commentId: TestConstants.kTestCommentEntity.id),
      DeleteCommentDeletedState(commentId: TestConstants.kTestCommentEntity.id),
    ],
  );

  blocTest(
    'should emit [DeleteCommentDeletingState, DeleteCommentErrorState ] if comment failed to delete',
    build: () {
      when(
        mockDeleteCommentUseCase.call(TestConstants.kTestCommentEntity.id),
      ).thenAnswer(
        (_) async => const Failure(failureRes: ServerFailure(message: TestConstants.kSomethingWentWrong)),
      );
      return deleteCommentBloc;
    },
    act: (bloc) => bloc.add(DeleteCommentDeleteEvent(commentId: TestConstants.kTestCommentEntity.id)),
    expect: () => [
      DeleteCommentDeletingState(commentId: TestConstants.kTestCommentEntity.id),
      const DeleteCommentErrorState(message: TestConstants.kSomethingWentWrong),
    ],
  );

  tearDown(() {
    deleteCommentBloc.close();
  });
}
