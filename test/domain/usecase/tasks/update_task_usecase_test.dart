import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:time_tracking_app/domain/entities/custom_failures.dart';
import 'package:time_tracking_app/domain/entities/result.dart';
import 'package:time_tracking_app/domain/usecase/tasks/update_task_usecase.dart';

import '../../../helpers/test_helper.mocks.dart';
import '../../../utils/constants.dart';

void main() {
  late UpdateTasksUseCase updateTaskUseCase;
  late MockRepository mockRepository;

  setUp(() {
    mockRepository = MockRepository();
    updateTaskUseCase = UpdateTasksUseCase(repository: mockRepository);
    provideDummy<Result<CustomFailure, bool>>(
      const Success<CustomFailure, bool>(
        successRes: true,
      ),
    );
  });

  test(
    'task updated status should be true',
    () async {
      when(mockRepository.updateTask(kTaskEntityTest)).thenAnswer((_) async {
        return const Success(successRes: true);
      });

      final result = await updateTaskUseCase.call(kTaskEntityTest);

      expect((result as Success).successRes, true);
    },
  );
}
