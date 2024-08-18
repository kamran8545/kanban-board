import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:time_tracking_app/presentation/create_task/widgets/decorated_container.dart';
import 'package:time_tracking_app/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:time_tracking_app/utils/app_theme.dart';
import 'package:time_tracking_app/utils/constants.dart';

import '../../core/dependency_injection.dart';
import 'bloc/task_form_bloc/task_form_bloc.dart';
import 'bloc/task_form_bloc/task_form_event.dart';
import 'bloc/task_form_bloc/task_form_state.dart';

class CreateTaskScreen extends StatelessWidget {
  const CreateTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return BlocProvider(
      create: (context) => TaskFormBloc(createTaskUseCase: sl()),
      child: Scaffold(
        backgroundColor: themeData.scaffoldBackgroundColor,
        appBar: AppBar(
          backgroundColor: themeData.primaryColorLight,
          centerTitle: true,
          title: Text(
            LocaleKeys.create_task.tr(),
            style: themeData.textTheme.headlineLarge!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppTheme.horizontalPadding.w,
              vertical: AppTheme.verticalPadding.h,
            ),
            child: const TaskForm(),
          ),
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
    return BlocBuilder<TaskFormBloc, TaskFormState>(
      builder: (context, state) {
        if (state.isCreated) {
          Future.delayed(
            const Duration(microseconds: 500),
            () {
              if (context.mounted) context.pop();
            },
          );
        }
        return Form(
          child: ListView(
            shrinkWrap: true,
            children: [
              DecoratedContainer(
                child: TextFormField(
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
                    context.read<TaskFormBloc>().add(TitleChanged(value));
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
                    context.read<TaskFormBloc>().add(DescriptionChanged(value));
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
                    context.read<TaskFormBloc>().add(LabelChanged(value!));
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
                      if (context.mounted) context.read<TaskFormBloc>().add(DueDateChanged(pickedDate));
                    }
                  },
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.resolveWith<Color>(
                    (Set<WidgetState> state) {
                      return themeData.shadowColor;
                    },
                  ),
                ),
                onPressed: () {
                  if (state.isSubmitting) {
                    return;
                  }
                  context.read<TaskFormBloc>().add(const SubmitTaskForm());
                },
                child: state.isSubmitting
                    ? SizedBox(
                        height: 15.h,
                        width: 15.w,
                        child: CircularProgressIndicator(color: themeData.scaffoldBackgroundColor),
                      )
                    : Text(
                        LocaleKeys.create_task.tr(),
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
