import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:time_tracking_app/core/dependency_injection.dart';
import 'package:time_tracking_app/domain/usecase/comments/add_comments_usecase.dart';
import 'package:time_tracking_app/domain/usecase/tasks/update_task_usecase.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/add_task_comment/add_task_comment_bloc.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/delete_task_bloc/delete_task_bloc.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/delete_task_bloc/delete_task_state.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/update_task_form_bloc/update_task_form_bloc.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/update_task_form_bloc/update_task_form_event.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/update_task_form_bloc/update_task_form_state.dart';
import 'package:time_tracking_app/presentation/update_task/update_task_screen.dart';
import 'package:time_tracking_app/translations/locale_keys.g.dart';
import 'package:time_tracking_app/utils/app_theme.dart';

import '../../helpers/test_helper.mocks.dart';
import '../../utils/constants.dart';

void main() {
  late MockUpdateTaskFormBloc mockUpdateTaskFormBloc;
  late MockDeleteTaskBloc mockDeleteTaskBloc;
  late MockAddTaskCommentBloc mockAddTaskCommentBloc;
  late MockUpdateTasksUseCase mockUpdateTasksUseCase;
  late MockAddCommentsUseCase mockAddCommentsUseCase;

  setUp(() async {
    mockUpdateTasksUseCase = MockUpdateTasksUseCase();
    mockDeleteTaskBloc = MockDeleteTaskBloc();
    mockAddTaskCommentBloc = MockAddTaskCommentBloc();
    mockUpdateTaskFormBloc = MockUpdateTaskFormBloc();
    mockAddCommentsUseCase = MockAddCommentsUseCase();

    await sl.reset();
    sl.registerLazySingleton<UpdateTasksUseCase>(() => mockUpdateTasksUseCase);
    sl.registerLazySingleton<AddCommentsUseCase>(() => mockAddCommentsUseCase);
  });

  test('UpdateTaskFormBloc initial state should be UpdateTaskFormState', () {
    when(mockUpdateTaskFormBloc.state).thenReturn(const UpdateTaskFormState());
    expect(mockUpdateTaskFormBloc.state, const UpdateTaskFormState());
  });

  testWidgets('Task form should be populated with with given data', (widgetTester) async {
    when(mockUpdateTaskFormBloc.stream).thenAnswer((_) => const Stream.empty());
    when(mockUpdateTaskFormBloc.state).thenReturn(UpdateTaskFormState(
      id: TestConstants.kTaskEntityTest.id,
      title: TestConstants.kTaskEntityTest.content,
      description: TestConstants.kTaskEntityTest.description,
      priority: TestConstants.kTaskEntityTest.priority,
      label: TestConstants.kTaskEntityTest.labels.first,
    ));

    when(mockDeleteTaskBloc.stream).thenAnswer((_) => const Stream.empty());
    when(mockDeleteTaskBloc.state).thenReturn(DeleteTaskInitialState(taskId: TestConstants.kTaskEntityTest.id));

    await widgetTester.pumpWidget(
      ScreenUtilInit(
        designSize: const Size(375, 667),
        builder: (BuildContext context, Widget? child) {
          return MaterialApp(
            theme: AppTheme.lightTheme(),
            home: MultiBlocProvider(
              providers: [
                BlocProvider<UpdateTaskFormBloc>(
                  create: (_) => mockUpdateTaskFormBloc
                    ..add(
                      UpdateTaskFormInitialEvent(
                        taskEntity: TestConstants.kTaskEntityTest,
                      ),
                    ),
                ),
                BlocProvider<DeleteTaskBloc>(create: (_)=> mockDeleteTaskBloc),
                BlocProvider<AddTaskCommentBloc>(create: (_)=> mockAddTaskCommentBloc),
              ],
              child: const Scaffold(body: TaskForm()),
            ),
          );
        },
      ),
    );

    var formWidget = find.byType(Form);
    expect(formWidget, findsOne);

    var elevateButton = find.byType(ElevatedButton);
    expect(elevateButton, findsOne);

    await widgetTester.tap(elevateButton);
    await widgetTester.pumpAndSettle();

    verify(mockUpdateTaskFormBloc.add(const SubmitTaskForm())).called(1);

  });

  testWidgets('Comments field should be visible', (widgetTester)async{
    when(mockUpdateTaskFormBloc.stream).thenAnswer((_) => const Stream.empty());
    when(mockUpdateTaskFormBloc.state).thenReturn(UpdateTaskFormState(
      id: TestConstants.kTaskEntityTest.id,
      title: TestConstants.kTaskEntityTest.content,
      description: TestConstants.kTaskEntityTest.description,
      priority: TestConstants.kTaskEntityTest.priority,
      label: TestConstants.kTaskEntityTest.labels.first,
    ));

    when(mockDeleteTaskBloc.stream).thenAnswer((_) => const Stream.empty());
    when(mockDeleteTaskBloc.state).thenReturn(DeleteTaskInitialState(taskId: TestConstants.kTaskEntityTest.id));

    await widgetTester.pumpWidget(
      ScreenUtilInit(
        designSize: const Size(375, 667),
        builder: (BuildContext context, Widget? child) {
          return MaterialApp(
            theme: AppTheme.lightTheme(),
            locale: const Locale('en', 'US'),
            home: MultiBlocProvider(
              providers: [
                BlocProvider<UpdateTaskFormBloc>(
                  create: (_) => mockUpdateTaskFormBloc
                    ..add(
                      UpdateTaskFormInitialEvent(
                        taskEntity: TestConstants.kTaskEntityTest,
                      ),
                    ),
                ),
                BlocProvider<DeleteTaskBloc>(create: (_)=> mockDeleteTaskBloc)
              ],
              child: UpdateTaskScreen(task: TestConstants.kTaskEntityTest,),
            ),
          );
        },
      ),
    );

    final textFieldFinder = find.byWidgetPredicate(
          (widget) => widget is TextField && widget.decoration!.hintText == LocaleKeys.add_comment.tr(),
    );
    expect(textFieldFinder, findsOne);
  });
}
