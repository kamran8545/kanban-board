import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:time_tracking_app/presentation/home/bloc/get_all_tasks_bloc/get_all_tasks_bloc.dart';
import 'package:time_tracking_app/presentation/home/bloc/get_all_tasks_bloc/get_all_tasks_event.dart';
import 'package:time_tracking_app/presentation/home/bloc/get_all_tasks_bloc/get_all_tasks_state.dart';
import 'package:time_tracking_app/presentation/home/home_screen.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/update_task_bloc/update_task_bloc.dart';
import 'package:time_tracking_app/utils/app_theme.dart';

import '../../helpers/test_helper.mocks.dart';
import '../../utils/constants.dart';

void main() {
  late MockUpdateTasksUseCase mockUpdateTasksUseCase;
  late MockGetAllTasksBloc mockGetAllTasksBloc;

  setUp(() {
    mockUpdateTasksUseCase = MockUpdateTasksUseCase();
    mockGetAllTasksBloc = MockGetAllTasksBloc();
  });

  test('bloc state should be GetAllTasksInitialState', () {
    when(mockGetAllTasksBloc.state).thenReturn(const GetAllTasksInitialState());
    expect(mockGetAllTasksBloc.state, const GetAllTasksInitialState());
  });

  testWidgets(
    'should create all columns when all tasks are retrieved',
    (widgetTester) async {
      when(mockGetAllTasksBloc.stream).thenAnswer((_) => const Stream.empty());
      when(mockGetAllTasksBloc.state).thenReturn(const GetAllTasksLoadedState(tasks: TestConstants.kTasksMap));

      await widgetTester.pumpWidget(
        MultiBlocProvider(
          providers: [
            BlocProvider<GetAllTasksBloc>(
              create: (_) => mockGetAllTasksBloc
                ..add(
                  const GetAllTasksEvent(projectId: TestConstants.kProjectId),
                ),
            ),
            BlocProvider<UpdateTaskBloc>(
              create: (_) => UpdateTaskBloc(updateTasksUseCase: mockUpdateTasksUseCase),
            ),
          ],
          child: ScreenUtilInit(
            designSize: const Size(375, 667),
            builder: (BuildContext context, Widget? child) {
              return MaterialApp(
                theme: AppTheme.lightTheme(),
                home: const HomeScreen(),
              );
            },
          ),
        ),
      );
      expect(find.byKey(const Key('back_log')), findsOne);
      expect(find.byKey(const Key('to_do_label')), findsOne);
      expect(find.byKey(const Key('in_progress_label')), findsOne);
      expect(find.byKey(const Key('done_label')), findsOne);
    },
  );
}
