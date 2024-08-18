import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:time_tracking_app/domain/entities/custom_failures.dart';
import 'package:time_tracking_app/domain/entities/result.dart';
import 'package:time_tracking_app/domain/usecase/comments/delete_comment_usecase.dart';

import '../../../helpers/test_helper.mocks.dart';
import '../../../utils/constants.dart';

void main() {
  late DeleteCommentUseCase deleteCommentUseCase;
  late MockRepository mockRepository;

  setUp(() {
    mockRepository = MockRepository();
    deleteCommentUseCase = DeleteCommentUseCase(repository: mockRepository);
    provideDummy<Result<CustomFailure, bool>>(
      const Success<CustomFailure, bool>(
        successRes: true,
      ),
    );
  });

  test(
    'should return true if successfully deleted',
    () async {
      when(
        mockRepository.deleteComment(commentId: TestConstants.kTestCommentEntity.id),
      ).thenAnswer(
        (_) async => const Success<CustomFailure, bool>(successRes: true),
      );

      var result = await deleteCommentUseCase.call(TestConstants.kTestCommentEntity.id);

      expect(result, const Success<CustomFailure, bool>(successRes: true));
    },
  );
}
