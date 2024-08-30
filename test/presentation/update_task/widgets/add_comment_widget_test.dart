import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mockito/mockito.dart';
import 'package:time_tracking_app/domain/usecase/comments/add_comments_usecase.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/add_task_comment/add_task_comment_bloc.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/add_task_comment/add_task_comment_event.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/add_task_comment/add_task_comment_state.dart';
import 'package:time_tracking_app/presentation/update_task/widgets/add_comment_widget.dart';
import 'package:time_tracking_app/translations/locale_keys.g.dart';

import '../../../helpers/test_helper.mocks.dart';
import '../../../utils/constants.dart';

void main() {
  var sl = GetIt.I;
  late MockAddTaskCommentBloc mockAddTaskCommentBloc;
  late MockAddCommentsUseCase mockAddCommentsUseCase;

  setUp(() async {
    mockAddCommentsUseCase = MockAddCommentsUseCase();
    mockAddTaskCommentBloc = MockAddTaskCommentBloc();

    await sl.reset();
    sl.registerLazySingleton<AddCommentsUseCase>(() => mockAddCommentsUseCase);
  });

  testWidgets(
    'add comment field should be visible',
    (widgetTester) async {
      when(mockAddTaskCommentBloc.stream).thenAnswer((_) => const Stream.empty());
      when(mockAddTaskCommentBloc.state).thenAnswer((_) => const AddTaskCommentState());

      await widgetTester.pumpWidget(
        ScreenUtilInit(
          designSize: const Size(375, 667),
          child: BlocProvider<AddTaskCommentBloc>(
            create: (_) => mockAddTaskCommentBloc,
            child: BlocBuilder<AddTaskCommentBloc, AddTaskCommentState>(
              builder: (context, state) {
                return MaterialApp(
                  home: Scaffold(
                    body: AddCommentWidget(taskEntity: TestConstants.kTaskEntityTest),
                  ),
                );
              },
            ),
          ),
        ),
      );

      final textFieldFinder = find.byWidgetPredicate(
            (widget) => widget is TextField && widget.decoration!.hintText == LocaleKeys.add_comment.tr(),
      );
      expect(textFieldFinder, findsOne);
    },
  );

  testWidgets(
    'should trigger AddTaskCommentAddEvent event when add comment button is tapped',
    (widgetTester) async {
      when(mockAddTaskCommentBloc.stream).thenAnswer((_) => const Stream.empty());
      when(mockAddTaskCommentBloc.state).thenReturn(const AddTaskCommentState());

      await widgetTester.pumpWidget(
        ScreenUtilInit(
          designSize: const Size(375, 667),
          child: BlocProvider<AddTaskCommentBloc>(
            create: (_) => mockAddTaskCommentBloc,
            child: MaterialApp(
              home: Scaffold(
                body: AddCommentWidget(taskEntity: TestConstants.kTaskEntityTest),
              ),
            ),
          ),
        ),
      );

      final icon = find.byIcon(Icons.send);
      expect(icon, findsOne);

      await widgetTester.tap(icon);
      await widgetTester.pumpAndSettle();

      verify(mockAddTaskCommentBloc.add(AddTaskCommentAddEvent(taskId: TestConstants.kTaskEntityTest.id))).called(1);
    },
  );

  tearDown((){
    sl.reset();
    mockAddTaskCommentBloc.close();
  });
}
