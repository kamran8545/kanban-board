import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:time_tracking_app/presentation/home/widgets/scroll_on_pointer_edge_widget.dart';
import 'package:time_tracking_app/translations/locale_keys.g.dart';
import 'package:time_tracking_app/utils/app_colors.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../utils/app_routes.dart';
import '../../utils/app_theme.dart';
import '../update_task/bloc/update_task_bloc/update_task_bloc.dart';
import '../update_task/bloc/update_task_bloc/update_task_state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppTheme.horizontalPadding.h,
            vertical: AppTheme.verticalPadding.w,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BlocListener<UpdateTaskBloc, UpdateTaskBlocState>(
                listener: (context, state) {
                  if (state is UpdateTaskUpdatedState) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          LocaleKeys.task_update_successfully.tr(),
                        ),
                      ),
                    );
                  } else if (state is UpdateTaskErrorState) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          LocaleKeys.something_went_wrong_try_again_later.tr(),
                        ),
                      ),
                    );
                  }
                },
                child: const SizedBox.shrink(),
              ),
              const SizedBox(
                width: double.infinity,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    LocaleKeys.project_title.tr(),
                    style: themeData.textTheme.titleLarge!.copyWith(color: AppColors.kBlueColor),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10.w),
                    child: GestureDetector(
                      onTap: (){
                        context.go('/${AppRoutes.settings}');
                      },
                      child: Icon(
                        Icons.settings,
                        color: themeData.shadowColor,
                        size: 25.r,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      context.go('/${AppRoutes.createTask}');
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 7.h),
                      decoration:
                          BoxDecoration(color: themeData.primaryColorLight, borderRadius: BorderRadius.circular(40.r)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add,
                            color: themeData.shadowColor,
                          ),
                          Text(
                            LocaleKeys.create_task.tr(),
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
              ),
              SizedBox(height: 20.h),
              Expanded(
                child: ScrollOnPointerEdgeWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
