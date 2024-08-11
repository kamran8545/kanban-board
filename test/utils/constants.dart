import 'package:time_tracking_app/domain/entities/tasks/task_entity.dart';

const kTaskEntityTest = TaskEntity(
  id: '10',
  content: 'Write Test Cases',
  description: 'Write unit tests for all the scenarios',
  projectId: '32f',
  priority: 2,
  dueDateEntity: null,
);

const kTaskEntitiesTest = [
  TaskEntity(
    id: '10',
    content: 'Write Test Cases',
    description: 'Write unit tests for all the scenarios',
    projectId: '32f',
    priority: 2,
    dueDateEntity: null,
  ),
];
