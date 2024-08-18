import 'package:go_router/go_router.dart';
import 'package:time_tracking_app/domain/entities/tasks/task_entity.dart';
import 'package:time_tracking_app/presentation/create_task/create_task_screen.dart';
import 'package:time_tracking_app/presentation/home/home_screen.dart';
import 'package:time_tracking_app/presentation/settings/settings_screen.dart';
import 'package:time_tracking_app/presentation/update_task/update_task_screen.dart';

class AppRoutes {
  static String homePageRoute = "/";
  static String createTask = "create-task";
  static String updateTask = "update-task";
  static String settings = "settings";

  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: homePageRoute,
        builder: (context, state) => const HomeScreen(),
        routes: [
          GoRoute(
            path: createTask,
            builder: (context, state) => const CreateTaskScreen(),
          ),
          GoRoute(
            path: updateTask,
            builder: (context, state) {
              TaskEntity taskEntity = state.extra as TaskEntity;
              return UpdateTaskScreen(task: taskEntity);
            },
          ),
          GoRoute(
            path: settings,
            builder: (context, state) {
              return const SettingsScreen();
            },
          ),
        ],
      ),
    ],
  );
}
