import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:time_tracking_app/domain/entities/tasks/task_entity.dart';
import 'package:time_tracking_app/presentation/home/bloc/board_column_bloc/board_column_bloc.dart';
import 'package:time_tracking_app/presentation/home/bloc/board_column_bloc/board_column_event.dart';
import 'package:time_tracking_app/presentation/home/bloc/board_column_bloc/board_column_state.dart';
import 'package:time_tracking_app/presentation/home/widgets/task_widget.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../../utils/app_routes.dart';
import '../../../utils/app_theme.dart';
import '../../update_task/bloc/update_task_bloc/update_task_bloc.dart';
import '../../update_task/bloc/update_task_bloc/update_task_event.dart';

class BoardColumnWidget extends StatelessWidget {
  final String label;
  final List<TaskEntity> tasks;

  const BoardColumnWidget({super.key, required this.label, required this.tasks});

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return BlocProvider(
      create: (_) => BoardColumnBloc()..add(BoardColumnUpdateEvent(tasks: tasks)),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5.w),
        padding: EdgeInsets.all(10.r),
        decoration: BoxDecoration(
          color: themeData.primaryColorLight,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15.r),
            topRight: Radius.circular(15.r),
          ),
        ),
        width: AppTheme.boardColumnWidth.w,
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                label.tr(),
                style: themeData.textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w800),
              ),
            ),
            Expanded(
              child: BlocBuilder<BoardColumnBloc, BoardColumnState>(
                builder: (BuildContext context, BoardColumnState state) {
                  return state.when(
                    initial: () {
                      return const SizedBox.shrink();
                    },
                    update: (List<TaskEntity> tasks) {
                      return DragTarget<TaskEntity>(
                        key: Key(label),
                        onAcceptWithDetails: (DragTargetDetails<TaskEntity> dragDetails) {
                          List<TaskEntity> updatedTasks = List<TaskEntity>.from(tasks);
                          var updatedTask = dragDetails.data.copyWith(labels: [label]);
                          updatedTasks.add(updatedTask);
                          context.read<BoardColumnBloc>().add(BoardColumnUpdateEvent(tasks: updatedTasks));
                          context.read<UpdateTaskBloc>().add(UpdateTaskEvent(taskEntity: updatedTask));
                        },
                        builder: (BuildContext context, List<TaskEntity?> candidateData, List<dynamic> rejectedData) {
                          return ListView(
                            children: [
                              if (tasks.isEmpty)
                                SizedBox(
                                  height: MediaQuery.of(context).size.height * .8,
                                  width: AppTheme.boardColumnWidth.w,
                                ),
                              for (var task in tasks)
                                GestureDetector(
                                  onTap: () {
                                    context.go('/${AppRoutes.updateTask}', extra: task);
                                  },
                                  child: TaskWidget(
                                    taskEntity: task,
                                    tasks: List<TaskEntity>.from(tasks),
                                  ),
                                ),
                            ],
                          );
                        },
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
