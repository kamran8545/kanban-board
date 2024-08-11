import 'package:time_tracking_app/domain/entities/tasks/task_entity.dart';

abstract class TasksEvent {
  final TaskEntity? taskEntity;

  const TasksEvent({this.taskEntity});
}

class CreateTaskEvent extends TasksEvent {
  const CreateTaskEvent(TaskEntity taskEntity) : super(taskEntity: taskEntity);
}

class GetAllTasksEvent extends TasksEvent {
  const GetAllTasksEvent();
}

class UpdateTaskEvent extends TasksEvent {
  const UpdateTaskEvent(TaskEntity taskEntity) : super(taskEntity: taskEntity);
}

class DeleteTaskEvent extends TasksEvent {
  const DeleteTaskEvent(TaskEntity taskEntity) : super(taskEntity: taskEntity);
}