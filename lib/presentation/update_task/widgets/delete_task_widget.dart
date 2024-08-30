import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:time_tracking_app/domain/entities/tasks/task_entity.dart';

import '../../../core/dependency_injection.dart';
import '../../../domain/entities/custom_failures.dart';
import '../../../translations/locale_keys.g.dart';
import '../../../utils/constants.dart';
import '../../home/bloc/get_all_tasks_bloc/get_all_tasks_bloc.dart';
import '../../home/bloc/get_all_tasks_bloc/get_all_tasks_event.dart';
import '../bloc/delete_task_bloc/delete_task_bloc.dart';
import '../bloc/delete_task_bloc/delete_task_event.dart';
import '../bloc/delete_task_bloc/delete_task_state.dart';

class DeleteTaskWidget extends StatelessWidget {
  final TaskEntity taskEntity;

  const DeleteTaskWidget({super.key, required this.taskEntity});

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return BlocBuilder<DeleteTaskBloc, DeleteTaskBlocState>(
        builder: (context, innerState) {
          return innerState.when(
            initial: (String? taskId) {
              return Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      context.read<DeleteTaskBloc>().add(DeleteTaskDeleteEvent(taskId: taskEntity.id));
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 7.h),
                      decoration:
                          BoxDecoration(color: themeData.primaryColorLight, borderRadius: BorderRadius.circular(40.r)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.delete,
                            color: themeData.shadowColor,
                          ),
                          Text(
                            LocaleKeys.delete_task.tr(),
                            style: themeData.textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w900),
                          ),
                          SizedBox(
                            width: 4.w,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
            loading: () {
              return Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 62.w, vertical: 10.h),
                    decoration:
                        BoxDecoration(color: themeData.primaryColorLight, borderRadius: BorderRadius.circular(40.r)),
                    child: SizedBox(
                      height: 15.h,
                      width: 15.w,
                      child: CircularProgressIndicator(color: themeData.shadowColor),
                    ),
                  ),
                ],
              );
            },
            deleted: () {
              Future.delayed(const Duration(milliseconds: 300), () {
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        LocaleKeys.task_delete_successfully.tr(),
                      ),
                    ),
                  );
                  sl<GetAllTasksBloc>().add(const GetAllTasksEvent(projectId: AppConstants.kProjectId));
                  context.pop();
                }
              });
              return const SizedBox.shrink();
            },
            error: (CustomFailure failure) {
              Future.delayed(const Duration(milliseconds: 300), () {
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        LocaleKeys.something_went_wrong_try_again_later.tr(),
                      ),
                    ),
                  );
                }
              });
              return const SizedBox.shrink();
            },
          );
        },
      );
  }
}
