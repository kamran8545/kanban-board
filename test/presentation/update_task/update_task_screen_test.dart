import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:time_tracking_app/core/dependency_injection.dart';
import 'package:time_tracking_app/domain/usecase/tasks/update_task_usecase.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/update_task_form_bloc/update_task_form_state.dart';

import '../../helpers/test_helper.mocks.dart';

void main() {
  late MockUpdateTaskFormBloc mockUpdateTaskFormBloc;
  late MockUpdateTasksUseCase mockUpdateTasksUseCase;

  setUp(() async {
    mockUpdateTasksUseCase = MockUpdateTasksUseCase();
    mockUpdateTaskFormBloc = MockUpdateTaskFormBloc();

    await sl.reset();
    sl.registerLazySingleton<UpdateTasksUseCase>(() => mockUpdateTasksUseCase);
  });

  test('UpdateTaskFormBloc initial state should be UpdateTaskFormState', () {
    when(mockUpdateTaskFormBloc.state).thenReturn(const UpdateTaskFormState());
    expect(mockUpdateTaskFormBloc.state, const UpdateTaskFormState());
  });
}
