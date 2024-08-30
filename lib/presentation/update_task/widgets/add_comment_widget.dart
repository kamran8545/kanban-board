import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:time_tracking_app/domain/entities/tasks/task_entity.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/get_all_task_comments/get_all_tasks_comments_bloc.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/get_all_task_comments/get_all_tasks_comments_event.dart';

import '../../../translations/locale_keys.g.dart';
import '../../create_task/widgets/decorated_container.dart';
import '../bloc/add_task_comment/add_task_comment_bloc.dart';
import '../bloc/add_task_comment/add_task_comment_event.dart';
import '../bloc/add_task_comment/add_task_comment_state.dart';

class AddCommentWidget extends StatelessWidget {
  final TaskEntity taskEntity;

  AddCommentWidget({super.key, required this.taskEntity});

  final TextEditingController commentTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocConsumer<AddTaskCommentBloc, AddTaskCommentState>(
          listener: (context, state){
            if(state.isAdded){
              commentTEController.text = '';
              context.read<GetAllTasksCommentsBloc>().add(GetAllTasksCommentsEvent(taskId: taskEntity.id));
            }
          },
          builder: (context, state) {
            return Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: DecoratedContainer(
                    radius: 25,
                    child: TextFormField(
                      controller: commentTEController,
                      decoration: InputDecoration(
                          hintText: LocaleKeys.add_comment.tr(),
                          contentPadding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 3.h),
                          border: InputBorder.none),
                      onChanged: (String? newValue) {
                        if (newValue != null) {
                          context.read<AddTaskCommentBloc>().add(AddTaskCommentChangeEvent(comment: newValue));
                        }
                      },
                    ),
                  ),
                ),
                SizedBox(width: 8.w),
                GestureDetector(
                  onTap: () {
                    if (state.isSubmitting) {
                      return;
                    }
                    context.read<AddTaskCommentBloc>().add(AddTaskCommentAddEvent(taskId: taskEntity.id));
                  },
                  child: state.isSubmitting
                      ? Container(
                          padding: EdgeInsets.all(6.r),
                          height: 40.h,
                          width: 40.w,
                          child: Center(child: CircularProgressIndicator(color: themeData.shadowColor)),
                        )
                      : DecoratedContainer(
                          padding: EdgeInsets.only(left: 10.w, top: 10.h, bottom: 10.h, right: 10.w),
                          radius: 25,
                          child: Icon(
                            Icons.send,
                            color: themeData.shadowColor,
                          ),
                        ),
                )
              ],
            );
          },
        ),
      );
  }
}
