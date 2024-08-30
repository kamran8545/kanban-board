import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mockito/mockito.dart';
import 'package:time_tracking_app/domain/entities/custom_failures.dart';
import 'package:time_tracking_app/domain/entities/result.dart';
import 'package:time_tracking_app/domain/usecase/tasks/delete_task_usecase.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/delete_task_bloc/delete_task_bloc.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/delete_task_bloc/delete_task_event.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/delete_task_bloc/delete_task_state.dart';
import 'package:time_tracking_app/presentation/update_task/widgets/delete_task_widget.dart';
import 'package:time_tracking_app/translations/locale_keys.g.dart';

import '../../../helpers/test_helper.mocks.dart';
import '../../../utils/constants.dart';

void main() {
  var sl = GetIt.I;

  late MockDeleteTaskBloc mockDeleteTaskBloc;
  late MockDeleteTaskUseCase mockDeleteTaskUseCase;

  setUp(() async {
    mockDeleteTaskUseCase = MockDeleteTaskUseCase();
    mockDeleteTaskBloc = MockDeleteTaskBloc();

    await sl.reset();
    sl.registerLazySingleton<DeleteTaskUseCase>(() => mockDeleteTaskUseCase);

    provideDummy<Result<CustomFailure, bool>>(const Success(successRes: true));
  });

  test('Initial state should be DeleteTaskInitialState', () {
    when(mockDeleteTaskBloc.state).thenAnswer((_) => const DeleteTaskInitialState());
    expect(mockDeleteTaskBloc.state, const DeleteTaskInitialState());
  });

  testWidgets('delete button should be visible', (widgetTester) async {
    when(mockDeleteTaskBloc.stream).thenAnswer((_) => const Stream.empty());
    when(mockDeleteTaskBloc.state).thenAnswer((_) => const DeleteTaskInitialState());

    await widgetTester.pumpWidget(
      ScreenUtilInit(
        designSize: const Size(375, 667),
        builder: (context, child) {
          return BlocProvider<DeleteTaskBloc>(
            create: (_) => mockDeleteTaskBloc,
            child: MaterialApp(
              home: DeleteTaskWidget(
                taskEntity: TestConstants.kTaskEntityTest,
              ),
            ),
          );
        },
      ),
    );

    var widget = find.text(LocaleKeys.delete_task);
    expect(widget, findsOne);

    var icon = find.byIcon(Icons.delete);
    expect(icon, findsOne);
  });

  testWidgets('should trigger DeleteTaskDeleteEvent event when delete button is tapped', (widgetTester) async {
    when(mockDeleteTaskBloc.stream).thenAnswer((_) => const Stream.empty());
    when(mockDeleteTaskBloc.state).thenAnswer((_) => DeleteTaskInitialState(taskId: TestConstants.kTaskEntityTest.id));
    when(
      mockDeleteTaskUseCase.call(TestConstants.kTaskEntityTest.id),
    ).thenAnswer(
      (_) async => const Success(successRes: true),
    );

    await widgetTester.pumpWidget(
      ScreenUtilInit(
        designSize: const Size(375, 667),
        builder: (context, child) {
          return BlocProvider<DeleteTaskBloc>(
            create: (_) => mockDeleteTaskBloc,
            child: MaterialApp(
              home: DeleteTaskWidget(
                taskEntity: TestConstants.kTaskEntityTest,
              ),
            ),
          );
        },
      ),
    );

    var widget = find.byType(GestureDetector);
    expect(widget, findsOne);

    await widgetTester.tap(widget);
    await widgetTester.pumpAndSettle();

    verify(mockDeleteTaskBloc.add(DeleteTaskDeleteEvent(taskId: TestConstants.kTaskEntityTest.id))).called(1);
  });

  tearDown((){
    sl.reset();
    mockDeleteTaskBloc.close();
  });
}
