import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:time_tracking_app/domain/entities/tasks/task_entity.dart';

import '../../../utils/app_colors.dart';
import '../bloc/board_column_bloc/board_column_bloc.dart';
import '../bloc/board_column_bloc/board_column_event.dart';

class TaskWidget extends StatelessWidget {
  final TaskEntity taskEntity;
  final List<TaskEntity> tasks;

  const TaskWidget({super.key, required this.taskEntity, required this.tasks});

  @override
  Widget build(BuildContext context) {

    return LongPressDraggable<TaskEntity>(
      onDragStarted: () {
        tasks.remove(taskEntity);
        context.read<BoardColumnBloc>().add(
          BoardColumnUpdateEvent(tasks: tasks),
        );
      },
      onDraggableCanceled: (Velocity velocity, Offset offset) {
        if(!context.mounted) return;
        tasks.add(taskEntity);
      },
      data: taskEntity,
      feedback: Opacity(
        opacity: 0.7,
        child: TaskItem(
          taskEntity: taskEntity,
        ),
      ),
      child: TaskItem(
        taskEntity: taskEntity,
      ),
    );
  }
}

class TaskItem extends StatelessWidget {
  final TaskEntity taskEntity;

  const TaskItem({super.key, required this.taskEntity});

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
      padding: EdgeInsets.only(top: 10.h, bottom: 10.h, right: 10.w),
      decoration: BoxDecoration(color: themeData.primaryColor, borderRadius: BorderRadius.circular(10.r)),
      child: IntrinsicHeight(
        child: Row(
          children: [
            const VerticalDivider(color: AppColors.kYellowColor),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  taskEntity.content,
                  softWrap: true,
                  style: themeData.textTheme.headlineSmall,
                ),
                SizedBox(height: 2.h),
                Text(
                  taskEntity.description,
                  softWrap: true,
                  style: themeData.textTheme.displayMedium,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
