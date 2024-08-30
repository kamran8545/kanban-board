import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mockito/mockito.dart';
import 'package:time_tracking_app/domain/usecase/comments/delete_comment_usecase.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/delete_comment_bloc/delete_comment_bloc.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/delete_comment_bloc/delete_comment_bloc_state.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/get_all_task_comments/get_all_tasks_comments_bloc.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/get_all_task_comments/get_all_tasks_comments_state.dart';
import 'package:time_tracking_app/presentation/update_task/widgets/comments_list.dart';
import 'package:time_tracking_app/translations/locale_keys.g.dart';

import '../../../helpers/test_helper.mocks.dart';
import '../../../utils/constants.dart';

void main() {
  var sl = GetIt.I;

  late MockDeleteCommentUseCase mockDeleteCommentUseCase;
  late MockDeleteCommentBloc mockDeleteCommentBloc;
  late MockGetAllTasksCommentsBloc mockGetAllTasksCommentsBloc;

  setUp(() {
    mockDeleteCommentUseCase = MockDeleteCommentUseCase();
    mockGetAllTasksCommentsBloc = MockGetAllTasksCommentsBloc();
    mockDeleteCommentBloc = MockDeleteCommentBloc();

    sl.reset();
    sl.registerLazySingleton<DeleteCommentUseCase>(() => mockDeleteCommentUseCase);
  });

  test('initial state should be GetAllTasksCommentsInitialState', () {
    when(mockGetAllTasksCommentsBloc.state).thenAnswer((_) => const GetAllTasksCommentsInitialState());
    expect(mockGetAllTasksCommentsBloc.state, const GetAllTasksCommentsInitialState());
  });

  testWidgets('should populate comments list', (widgetTest) async {
    when(mockGetAllTasksCommentsBloc.stream).thenAnswer((_) => const Stream.empty());
    when(mockDeleteCommentBloc.stream).thenAnswer((_) => const Stream.empty());
    when(mockGetAllTasksCommentsBloc.state).thenAnswer(
      (_) => const GetAllTasksCommentsLoadedState(
        comments: TestConstants.kTestComments,
      ),
    );
    when(mockDeleteCommentBloc.state).thenAnswer(
      (_) => const DeleteCommentInitialState(),
    );
    await widgetTest.pumpWidget(
      ScreenUtilInit(
        designSize: const Size(375, 667),
        child: MultiBlocProvider(
          providers: [
            BlocProvider<GetAllTasksCommentsBloc>(
              create: (_) => mockGetAllTasksCommentsBloc,
            ),
            BlocProvider<DeleteCommentBloc>(create: (_) => mockDeleteCommentBloc)
          ],
          child: MaterialApp(
            home: CommentsList(
              taskEntity: TestConstants.kTaskEntityTest,
            ),
          ),
        ),
      ),
    );

    for (var comment in TestConstants.kTestComments) {
      var comments = find.text(comment.content);
      expect(comments, findsOne);
    }
  });

  testWidgets('should show no comment found label when there isn\'t any comment', (widgetTest) async {
    when(mockDeleteCommentBloc.stream).thenAnswer((_) => const Stream.empty());
    when(mockDeleteCommentBloc.state).thenAnswer((_) => const DeleteCommentInitialState());
    when(mockGetAllTasksCommentsBloc.stream).thenAnswer((_) => const Stream.empty());
    when(mockGetAllTasksCommentsBloc.state).thenAnswer(
      (_) => const GetAllTasksCommentsLoadedState(
        comments: [],
      ),
    );
    await widgetTest.pumpWidget(
      ScreenUtilInit(
        designSize: const Size(375, 667),
        child: MultiBlocProvider(
          providers: [
            BlocProvider<GetAllTasksCommentsBloc>(
              create: (_) => mockGetAllTasksCommentsBloc,
            ),
            BlocProvider<DeleteCommentBloc>(
              create: (_) => mockDeleteCommentBloc,
            ),
          ],
          child: MaterialApp(
            home: CommentsList(
              taskEntity: TestConstants.kTaskEntityTest,
            ),
          ),
        ),
      ),
    );

    var comments = find.text(LocaleKeys.no_comments.tr());
    expect(comments, findsOne);
  });

  tearDown(() {
    sl.reset();
    mockGetAllTasksCommentsBloc.close();
    mockDeleteCommentBloc.close();
  });
}
