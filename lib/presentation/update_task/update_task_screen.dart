import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/add_task_comment/add_task_comment_bloc.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/delete_comment_bloc/delete_comment_bloc.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/delete_task_bloc/delete_task_bloc.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/get_all_task_comments/get_all_tasks_comments_event.dart';
import 'package:time_tracking_app/presentation/update_task/widgets/add_comment_widget.dart';
import 'package:time_tracking_app/presentation/update_task/widgets/comments_list.dart';
import 'package:time_tracking_app/presentation/update_task/widgets/delete_task_widget.dart';

import '../../core/dependency_injection.dart';
import '../../domain/entities/tasks/task_entity.dart';
import '../../translations/locale_keys.g.dart';
import '../../utils/app_theme.dart';
import '../../utils/constants.dart';
import '../create_task/widgets/decorated_container.dart';
import 'bloc/get_all_task_comments/get_all_tasks_comments_bloc.dart';
import 'bloc/update_task_form_bloc/update_task_form_bloc.dart';
import 'bloc/update_task_form_bloc/update_task_form_event.dart';
import 'bloc/update_task_form_bloc/update_task_form_state.dart';

class UpdateTaskScreen extends StatelessWidget {
  final TaskEntity task;

  const UpdateTaskScreen({super.key, required this.task});

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
        BlocProvider<GetAllTasksCommentsBloc>(
          create: (_) => GetAllTasksCommentsBloc(getAllCommentsUseCase: sl())
            ..add(
              GetAllTasksCommentsEvent(taskId: task.id),
            ),
        ),
        BlocProvider(create: (_)=> DeleteCommentBloc(deleteCommentUseCase: sl()))
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
                  child: Column(
                    children: [
                      DeleteTaskWidget(
                        taskEntity: task,
                      ),
                      const TaskForm(),
                      const SizedBox(height: 16),
                      CommentsList(
                        taskEntity: task,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            AddCommentWidget(
              taskEntity: task,
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
          child: Column(
            children: [
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
