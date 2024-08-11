import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:time_tracking_app/domain/entities/custom_failures.dart';
import 'package:time_tracking_app/domain/entities/result.dart';
import 'package:time_tracking_app/domain/entities/tasks/task_entity.dart';
import 'package:time_tracking_app/domain/usecase/tasks/get_all_tasks_usecase.dart';

import '../../../helpers/test_helper.mocks.dart';
import '../../../utils/constants.dart';

void main() {
  late GetAllTasksUseCase getAllTasksUseCase;
  late MockRepository mockRepository;

  setUp(() {
    mockRepository = MockRepository();
    getAllTasksUseCase = GetAllTasksUseCase(repository: mockRepository);
    provideDummy<Result<CustomFailure, List<TaskEntity>>>(
      const Success<CustomFailure, List<TaskEntity>>(
        successRes: kTaskEntitiesTest,
      ),
    );
  });

  test(
    'should get list of task entity from repository',
    () async {
      when(mockRepository.getAllTasks()).thenAnswer((_) async {
        return const Success(successRes: kTaskEntitiesTest);
      });

      final result = await getAllTasksUseCase.call(null);

      expect((result as Success).successRes, kTaskEntitiesTest);
    },
  );
}
