import 'package:mockito/annotations.dart';
import 'package:time_tracking_app/core/network_info.dart';
import 'package:time_tracking_app/data/remote_data_source/remote_data_source.dart';
import 'package:time_tracking_app/domain/repository/repository.dart';
import 'package:time_tracking_app/domain/usecase/comments/add_comments_usecase.dart';
import 'package:time_tracking_app/domain/usecase/comments/delete_comment_usecase.dart';
import 'package:time_tracking_app/domain/usecase/tasks/create_tasks_usecase.dart';
import 'package:time_tracking_app/domain/usecase/tasks/delete_task_usecase.dart';
import 'package:time_tracking_app/domain/usecase/tasks/get_all_tasks_usecase.dart';
import 'package:time_tracking_app/domain/usecase/tasks/update_task_usecase.dart';
import 'package:time_tracking_app/presentation/create_task/bloc/task_form_bloc/task_form_bloc.dart';
import 'package:time_tracking_app/presentation/home/bloc/get_all_tasks_bloc/get_all_tasks_bloc.dart';
import 'package:time_tracking_app/presentation/settings/bloc/settings_bloc.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/update_task_form_bloc/update_task_form_bloc.dart';

@GenerateMocks(
  [
    NetworkInfo,
    Repository,
    RemoteDataSource,
    CreateTasksUseCase,
    DeleteTaskUseCase,
    GetAllTasksUseCase,
    UpdateTasksUseCase,
    AddCommentsUseCase,
    DeleteCommentUseCase,

    TaskFormBloc,
    GetAllTasksBloc,
    UpdateTaskFormBloc,
    SettingsBloc,
  ],
)
void main() {}
