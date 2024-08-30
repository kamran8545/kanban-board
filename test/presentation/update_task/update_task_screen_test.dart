import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/update_task_form_bloc/update_task_form_bloc.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/update_task_form_bloc/update_task_form_event.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/update_task_form_bloc/update_task_form_state.dart';
import 'package:time_tracking_app/presentation/update_task/update_task_screen.dart';
import 'package:time_tracking_app/utils/app_theme.dart';

import '../../helpers/test_helper.mocks.dart';
import '../../utils/constants.dart';

void main() {
  late MockUpdateTaskFormBloc mockUpdateTaskFormBloc;

  setUp(() async {
    mockUpdateTaskFormBloc = MockUpdateTaskFormBloc();
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

    await widgetTester.pumpWidget(
      ScreenUtilInit(
        designSize: const Size(375, 667),
        builder: (BuildContext context, Widget? child) {
          return MaterialApp(
            theme: AppTheme.lightTheme(),
            home: BlocProvider<UpdateTaskFormBloc>(
              create: (_) => mockUpdateTaskFormBloc
                ..add(
                  UpdateTaskFormInitialEvent(
                    taskEntity: TestConstants.kTaskEntityTest,
                  ),
                ),
              child: const Scaffold(
                body: TaskForm(),
              ),
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

  tearDown((){
    mockUpdateTaskFormBloc.close();
  });
}
