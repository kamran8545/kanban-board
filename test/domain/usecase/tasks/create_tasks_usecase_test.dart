import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:time_tracking_app/domain/entities/custom_failures.dart';
import 'package:time_tracking_app/domain/entities/result.dart';
import 'package:time_tracking_app/domain/usecase/tasks/create_tasks_usecase.dart';

import '../../../helpers/test_helper.mocks.dart';
import '../../../utils/constants.dart';

void main() async {
  late CreateTasksUseCase createTasksUseCase;
  late MockRepository mockRepository;

  setUp(() {
    mockRepository = MockRepository();
    createTasksUseCase = CreateTasksUseCase(repository: mockRepository);
    provideDummy<Result<CustomFailure, bool>>(
      const Success<CustomFailure, bool>(
        successRes: true,
      ),
    );
  });

  test(
    'task created status should be true',
    () async {
      when(
        mockRepository.addTasks(TestConstants.kTaskEntityTest),
      ).thenAnswer((_) async {
        return const Success(successRes: true);
      });

      final result = await createTasksUseCase.call(TestConstants.kTaskEntityTest);

      expect((result as Success).successRes, true);
    },
  );
}
