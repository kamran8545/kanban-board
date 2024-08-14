import 'package:time_tracking_app/domain/entities/tasks/task_entity.dart';

class TestConstants {
  static const String kProjectId = '2337579550';

  static const kTaskEntityTest = TaskEntity(
    id: '10',
    content: 'Write Test Cases',
    description: 'Write unit tests for all the scenarios',
    projectId: '32f',
    priority: 2,
    labels: [],
    dueDateEntity: null,
  );

  static const kTaskEntitiesTest = [
    TaskEntity(
      id: '10',
      content: 'Write Test Cases',
      description: 'Write unit tests for all the scenarios',
      projectId: '32f',
      priority: 2,
      labels: [
        'to_do_label'
      ],
      dueDateEntity: null,
    ),
  ];

  static const kTasksMap = <String, List<TaskEntity>>{
    "to_do_label": kTaskEntitiesTest
  };
}
