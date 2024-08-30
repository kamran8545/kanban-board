import 'package:time_tracking_app/domain/entities/comments/comment_entity.dart';
import 'package:time_tracking_app/domain/entities/tasks/task_due_date_entity.dart';
import 'package:time_tracking_app/domain/entities/tasks/task_entity.dart';

class TestConstants {
  static const String kProjectId = '2337579550';

  static const String kSomethingWentWrong = 'Something went wrong';

  static TaskEntity kTaskEntityTest = TaskEntity(
    id: '10',
    content: 'Write Test Cases',
    description: 'Write unit tests for all the scenarios',
    projectId: kProjectId,
    priority: 2,
    labels: ['back_log'],
    dueDateEntity: TaskDueDateEntity(
      date: '',
      description: '',
      lang: '',
      isRecurring: false,
      dateTime: DateTime.now().toString(),
    ),
  );

  static const kTaskEntitiesTest = [
    TaskEntity(
      id: '10',
      content: 'Write Test Cases',
      description: 'Write unit tests for all the scenarios',
      projectId: '32f',
      priority: 2,
      labels: ['to_do_label'],
      dueDateEntity: null,
    ),
  ];

  static const kTasksMap = <String, List<TaskEntity>>{"to_do_label": kTaskEntitiesTest};

  static const kTestCommentEntity = CommentEntity(
    id: '942',
    content: "Test Comment",
    taskId: "10",
  );

  static const kTestComments = [
    CommentEntity(
      id: '942',
      content: "Test Comment",
      taskId: "10",
    ),
    CommentEntity(
      id: '943',
      content: "Test Comment 2",
      taskId: "10",
    ),
    CommentEntity(
      id: '944',
      content: "Test Comment 3",
      taskId: "10",
    ),
  ];
}
