import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:time_tracking_app/domain/entities/custom_failures.dart';
import 'package:time_tracking_app/domain/entities/result.dart';
import 'package:time_tracking_app/domain/usecase/tasks/delete_task_usecase.dart';

import '../../../helpers/test_helper.mocks.dart';
import '../../../utils/constants.dart';

void main() {
  late DeleteTaskUseCase deleteTaskUseCase;
  late MockRepository mockRepository;

  setUp(() {
    mockRepository = MockRepository();
    deleteTaskUseCase = DeleteTaskUseCase(repository: mockRepository);
    provideDummy<Result<CustomFailure, bool>>(
      const Success<CustomFailure, bool>(
        successRes: true,
      ),
    );
  });

  test(
    'task deleted status should be true',
    () async {
      when(mockRepository.deleteTask(kTaskEntityTest.id)).thenAnswer((_) async {
        return const Success(successRes: true);
      });

      final result = await deleteTaskUseCase.call(kTaskEntityTest.id);

      expect((result as Success).successRes, true);
    },
  );
}
