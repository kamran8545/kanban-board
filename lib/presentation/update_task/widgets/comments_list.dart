import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:time_tracking_app/domain/entities/tasks/task_entity.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/delete_comment_bloc/delete_comment_bloc.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/delete_comment_bloc/delete_comment_bloc_event.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/delete_comment_bloc/delete_comment_bloc_state.dart';
import 'package:time_tracking_app/translations/locale_keys.g.dart';

import '../../../domain/entities/comments/comment_entity.dart';
import '../../../utils/app_colors.dart';
import '../bloc/get_all_task_comments/get_all_tasks_comments_bloc.dart';
import '../bloc/get_all_task_comments/get_all_tasks_comments_state.dart';

class CommentsList extends StatelessWidget {
  final TaskEntity taskEntity;

  const CommentsList({super.key, required this.taskEntity});

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return BlocBuilder<GetAllTasksCommentsBloc, GetAllTasksCommentsState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              LocaleKeys.comments.tr(),
              softWrap: true,
              style: themeData.textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.h),
            state.when(
              initial: () => const SizedBox.shrink(),
              loading: () => Center(
                child: SizedBox(
                  height: 15.h,
                  width: 15.w,
                  child: CircularProgressIndicator(color: themeData.shadowColor),
                ),
              ),
              loaded: (List<CommentEntity> commentsList) {
                var comments = commentsList.toList(growable: true);
                return BlocConsumer<DeleteCommentBloc, DeleteCommentBlocState>(
                  listener: (context, state) {
                    if (state is DeleteCommentDeletedState) {
                      comments.removeWhere((element) => element.id == state.commentId);
                    }
                  },
                  builder: (context, state) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (comments.isEmpty)
                          Container(
                            margin: EdgeInsets.only(top: 40.h),
                            width: double.infinity,
                            child: Text(
                              LocaleKeys.no_comments.tr(),
                              softWrap: true,
                              textAlign: TextAlign.center,
                              style: themeData.textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold),
                            ),
                          ),
                        for (var comment in comments) CommentWidget(commentEntity: comment)
                      ],
                    );
                  },
                );
              },
              error: (msg) => const SizedBox.shrink(),
            ),
          ],
        );
      },
    );
  }
}

class CommentWidget extends StatelessWidget {
  final CommentEntity commentEntity;

  const CommentWidget({super.key, required this.commentEntity});

  @override
  Widget build(BuildContext context) {
    DeleteCommentBlocState currentState = context.read<DeleteCommentBloc>().state;
    ThemeData themeData = Theme.of(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
      padding: EdgeInsets.only(top: 10.h, bottom: 10.h, right: 10.w),
      decoration: BoxDecoration(color: themeData.primaryColorLight, borderRadius: BorderRadius.circular(10.r)),
      child: IntrinsicHeight(
        child: Row(
          children: [
            const VerticalDivider(color: AppColors.kYellowColor),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  LocaleKeys.you.tr(),
                  softWrap: true,
                  style: themeData.textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 2.h),
                Text(
                  commentEntity.content,
                  softWrap: true,
                  style: themeData.textTheme.headlineMedium,
                ),
              ],
            ),
            const Spacer(),
            (currentState is DeleteCommentDeletingState && commentEntity.id == currentState.commentId)
                ? Container(
                    padding: EdgeInsets.only(right: 2.w),
                    height: 20.h,
                    width: 20.w,
                    child: CircularProgressIndicator(color: themeData.shadowColor),
                  )
                : GestureDetector(
                    onTap: () {
                      context.read<DeleteCommentBloc>().add(DeleteCommentDeleteEvent(commentId: commentEntity.id));
                    },
                    child: const Icon(Icons.delete),
                  ),
          ],
        ),
      ),
    );
  }
}
