import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mockito/mockito.dart';
import 'package:time_tracking_app/domain/usecase/tasks/create_tasks_usecase.dart';
import 'package:time_tracking_app/presentation/create_task/bloc/task_form_bloc/task_form_bloc.dart';
import 'package:time_tracking_app/presentation/create_task/bloc/task_form_bloc/task_form_state.dart';
import 'package:time_tracking_app/presentation/create_task/create_task_screen.dart';
import 'package:time_tracking_app/utils/app_theme.dart';

import '../../helpers/test_helper.mocks.dart';
import '../../utils/constants.dart';

void main() {
  var sl = GetIt.I;

  late MockTaskFormBloc mockTaskFormBloc;
  late MockCreateTasksUseCase mockCreateTasksUseCase;

  setUp(() async {
    mockCreateTasksUseCase = MockCreateTasksUseCase();
    mockTaskFormBloc = MockTaskFormBloc();

    await sl.reset();
    sl.registerLazySingleton<TaskFormBloc>(() => mockTaskFormBloc);
    sl.registerLazySingleton<CreateTasksUseCase>(() => mockCreateTasksUseCase);
  });

  test('TaskFormBloc initial state should be TaskFormState', () {
    when(mockTaskFormBloc.state).thenReturn(const TaskFormState());
    expect(mockTaskFormBloc.state, const TaskFormState());
  });

  testWidgets('Task form should be created with TaskFormState', (widgetTester) async {
    when(mockTaskFormBloc.stream).thenAnswer((_) => const Stream.empty());
    when(mockTaskFormBloc.state).thenReturn(const TaskFormState());

    await widgetTester.pumpWidget(
      MultiBlocProvider(
        providers: [
          BlocProvider<MockTaskFormBloc>(
            create: (_) => mockTaskFormBloc,
          ),
        ],
        child: ScreenUtilInit(
          designSize: const Size(375, 667),
          builder: (BuildContext context, Widget? child) {
            return MaterialApp(
              theme: AppTheme.lightTheme(),
              home: const CreateTaskScreen(),
            );
          },
        ),
      ),
    );
    expect(find.byType(Form), findsOne);
  });

  testWidgets('Circular progress indicator should show when creating task', (widgetTester) async {
    when(mockTaskFormBloc.stream).thenAnswer((_) => const Stream.empty());
    when(mockTaskFormBloc.state).thenReturn(
      TaskFormState(
        title: TestConstants.kTaskEntityTest.content,
        description: TestConstants.kTaskEntityTest.description,
        priority: TestConstants.kTaskEntityTest.priority,
        label: TestConstants.kTaskEntityTest.labels.first,
        dueDate: null,
        isValid: true,
      ),
    );

    await widgetTester.pumpWidget(
      MultiBlocProvider(
        providers: [
          BlocProvider<MockTaskFormBloc>(
            create: (_) => mockTaskFormBloc,
          ),
        ],
        child: ScreenUtilInit(
          designSize: const Size(375, 667),
          builder: (BuildContext context, Widget? child) {
            return MaterialApp(
              theme: AppTheme.lightTheme(),
              home: const CreateTaskScreen(),
            );
          },
        ),
      ),
    );
    var button = find.byType(ElevatedButton);
    expect(button, findsOne);
  });

  tearDown(() {
    sl.reset();
  });
}
