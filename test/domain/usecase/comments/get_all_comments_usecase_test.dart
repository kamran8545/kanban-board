import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:time_tracking_app/domain/entities/comments/comment_entity.dart';
import 'package:time_tracking_app/domain/entities/custom_failures.dart';
import 'package:time_tracking_app/domain/entities/result.dart';
import 'package:time_tracking_app/domain/usecase/comments/get_all_comments_usecase.dart';

import '../../../helpers/test_helper.mocks.dart';
import '../../../utils/constants.dart';

void main() {
  late MockRepository mockRepository;
  late GetAllCommentsUseCase getAllCommentsUseCase;

  setUp(() {
    mockRepository = MockRepository();
    getAllCommentsUseCase = GetAllCommentsUseCase(repository: mockRepository);
    provideDummy<Result<CustomFailure, List<CommentEntity>>>(
        const Success(successRes: TestConstants.kTestComments)
    );
  });

  test('should return list of comments', () async{
    when(mockRepository.getAllComments(taskId: TestConstants.kTaskEntityTest.id)).thenAnswer(
      (_) async => const Success(successRes: TestConstants.kTestComments),
    );

    var result = await getAllCommentsUseCase.call(TestConstants.kTaskEntityTest.id);
    expect((result as Success).successRes, TestConstants.kTestComments);
  });
}
