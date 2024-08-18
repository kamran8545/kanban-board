import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:time_tracking_app/domain/entities/comments/comment_entity.dart';
import 'package:time_tracking_app/domain/entities/custom_failures.dart';
import 'package:time_tracking_app/domain/entities/result.dart';
import 'package:time_tracking_app/domain/usecase/comments/add_comments_usecase.dart';

import '../../../helpers/test_helper.mocks.dart';
import '../../../utils/constants.dart';

void main() {
  late AddCommentsUseCase addCommentsUseCase;
  late MockRepository mockRepository;

  setUp(() {
    mockRepository = MockRepository();
    addCommentsUseCase = AddCommentsUseCase(repository: mockRepository);
    provideDummy<Result<CustomFailure, CommentEntity>>(
      const Success<CustomFailure, CommentEntity>(
        successRes: TestConstants.kTestCommentEntity,
      ),
    );
  });

  test(
    'should return comment entity if successfully added',
    () async {

      when(
        mockRepository.addComment(commentEntity: TestConstants.kTestCommentEntity),
      ).thenAnswer(
        (_) async => const Success(
          successRes: TestConstants.kTestCommentEntity,
        ),
      );

      var result = await addCommentsUseCase.call(TestConstants.kTestCommentEntity);

      expect(result, const Success<CustomFailure, CommentEntity>(successRes: TestConstants.kTestCommentEntity));
    },
  );
}
