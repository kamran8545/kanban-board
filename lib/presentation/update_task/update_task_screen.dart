import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/add_task_comment/add_task_comment_bloc.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/add_task_comment/add_task_comment_state.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/delete_task_bloc/delete_task_bloc.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/delete_task_bloc/delete_task_event.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/delete_task_bloc/delete_task_state.dart';

import '../../core/dependency_injection.dart';
import '../../domain/entities/custom_failures.dart';
import '../../domain/entities/tasks/task_entity.dart';
import '../../translations/locale_keys.g.dart';
import '../../utils/app_theme.dart';
import '../../utils/constants.dart';
import '../create_task/widgets/decorated_container.dart';
import '../home/bloc/get_all_tasks_bloc/get_all_tasks_bloc.dart';
import '../home/bloc/get_all_tasks_bloc/get_all_tasks_event.dart';
import 'bloc/add_task_comment/add_task_comment_event.dart';
import 'bloc/update_task_form_bloc/update_task_form_bloc.dart';
import 'bloc/update_task_form_bloc/update_task_form_event.dart';
import 'bloc/update_task_form_bloc/update_task_form_state.dart';

class UpdateTaskScreen extends StatelessWidget {
  final TaskEntity task;

  UpdateTaskScreen({super.key, required this.task});
  final TextEditingController commentTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider<UpdateTaskFormBloc>(
          create: (_) => UpdateTaskFormBloc(updateTasksUseCase: sl())
            ..add(
              UpdateTaskFormInitialEvent(taskEntity: task),
            ),
        ),
        BlocProvider<DeleteTaskBloc>(
          create: (_) => DeleteTaskBloc(deleteTaskUseCase: sl()),
        ),
        BlocProvider<AddTaskCommentBloc>(
          create: (_) => AddTaskCommentBloc(addCommentsUseCase: sl()),
        ),
      ],
      child: Scaffold(
        backgroundColor: themeData.scaffoldBackgroundColor,
        appBar: AppBar(
          backgroundColor: themeData.primaryColorLight,
          centerTitle: true,
          title: Text(
            LocaleKeys.update_task.tr(),
            style: themeData.textTheme.headlineLarge!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppTheme.horizontalPadding.w,
                    vertical: AppTheme.verticalPadding.h,
                  ),
                  child: const TaskForm(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: BlocBuilder<AddTaskCommentBloc, AddTaskCommentState>(builder: (context, state) {
                if(state.isAdded){
                  commentTEController.text = '';
                }
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
                        context.read<AddTaskCommentBloc>().add(AddTaskCommentAddEvent(taskId: task.id));
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
              }),
            ),
            SizedBox(height: 3.h)
          ],
        ),
      ),
    );
  }
}

class TaskForm extends StatelessWidget {
  const TaskForm({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return BlocConsumer<UpdateTaskFormBloc, UpdateTaskFormState>(
      listener: (context, state) {
        if (state.isSuccess) {
          Future.delayed(const Duration(microseconds: 300), () {
            if (context.mounted) context.pop();
          });
        }
      },
      builder: (context, state) {
        if (state.title.isEmpty) return const SizedBox.shrink();
        return Form(
          child: ListView(
            shrinkWrap: true,
            children: [
              BlocBuilder<DeleteTaskBloc, DeleteTaskBlocState>(
                builder: (context, innerState) {
                  return innerState.when(
                    initial: (String? taskId) {
                      return Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              context.read<DeleteTaskBloc>().add(DeleteTaskDeleteEvent(taskId: state.id));
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 7.h),
                              decoration: BoxDecoration(
                                  color: themeData.primaryColorLight, borderRadius: BorderRadius.circular(40.r)),
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
                            decoration: BoxDecoration(
                                color: themeData.primaryColorLight, borderRadius: BorderRadius.circular(40.r)),
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
              ),
              SizedBox(height: 20.h),
              DecoratedContainer(
                child: TextFormField(
                  initialValue: state.title,
                  style: themeData.textTheme.titleMedium,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 5.h, bottom: 5.h, right: 10.w),
                    border: InputBorder.none,
                    labelText: LocaleKeys.title.tr(),
                    labelStyle: themeData.textTheme.titleMedium,
                    hintStyle: themeData.textTheme.titleMedium,
                    prefixIcon: Icon(
                      Icons.title,
                      size: 20.r,
                    ),
                  ),
                  onChanged: (value) {
                    context.read<UpdateTaskFormBloc>().add(TitleChanged(value));
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a title';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 16),
              DecoratedContainer(
                child: TextFormField(
                  initialValue: state.description,
                  style: themeData.textTheme.titleMedium,
                  decoration: InputDecoration(
                    labelText: LocaleKeys.description.tr(),
                    labelStyle: themeData.textTheme.titleMedium,
                    hintStyle: themeData.textTheme.titleMedium,
                    contentPadding: EdgeInsets.only(top: 5.h, bottom: 5.h, right: 10.w),
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.description,
                      size: 20.r,
                    ),
                  ),
                  maxLines: 4,
                  onChanged: (value) {
                    context.read<UpdateTaskFormBloc>().add(DescriptionChanged(value));
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a description';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 16),
              DecoratedContainer(
                child: DropdownButtonFormField<String>(
                  style: themeData.textTheme.titleMedium,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: LocaleKeys.status.tr(),
                    prefixIcon: const Icon(Icons.label),
                  ),
                  value: state.label,
                  items: AppConstants.kTaskLabelList.map((label) {
                    return DropdownMenuItem(
                      value: label,
                      child: Text(
                        label.tr(),
                        style: themeData.textTheme.titleMedium,
                      ),
                    );
                  }).toList(),
                  onChanged: (value) {
                    context.read<UpdateTaskFormBloc>().add(LabelChanged(value!));
                  },
                  validator: (value) {
                    if (value == null) {
                      return 'Please select a label';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 16),
              DecoratedContainer(
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 15.w),
                  leading: const Icon(
                    Icons.calendar_today,
                  ),
                  title: Text(
                    state.dueDate == null
                        ? LocaleKeys.select_date.tr()
                        : '${LocaleKeys.due_date.tr()}: ${state.dueDate!.toLocal().toString().split(' ')[0]}',
                    style: themeData.textTheme.titleMedium,
                  ),
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: state.dueDate ?? DateTime.now(),
                      firstDate: DateTime.now(),
                      lastDate: DateTime(2100),
                    );
                    if (pickedDate != null) {
                      if (context.mounted) context.read<UpdateTaskFormBloc>().add(DueDateChanged(pickedDate));
                    }
                  },
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.resolveWith<Color>(
                    (Set<WidgetState> states) {
                      return themeData.shadowColor;
                    },
                  ),
                ),
                onPressed: () {
                  if (state.isSubmitting) {
                    return;
                  }
                  context.read<UpdateTaskFormBloc>().add(const SubmitTaskForm());
                },
                child: state.isSubmitting
                    ? Center(
                        child: SizedBox(
                          height: 15.h,
                          width: 15.w,
                          child: CircularProgressIndicator(color: themeData.primaryColor),
                        ),
                      )
                    : Text(
                        LocaleKeys.update_task.tr(),
                        style: themeData.textTheme.titleMedium!.copyWith(color: themeData.primaryColor),
                      ),
              ),
            ],
          ),
        );
      },
    );
  }
}
