// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> de_DE = {
  "project_title": "Kanban-Board",
  "back_log": "Rückstand",
  "to_do_label": "Zu tun",
  "in_progress_label": "Im Gange",
  "done_label": "Erledigt",
  "create_task": "Aufgabe erstellen",
  "update_task": "Update-Aufgabe",
  "delete_task": "Aufgabe löschen",
  "select_date": "Wählen Sie Fälligkeitsdatum aus",
  "due_date": "Fälligkeitsdatum",
  "status": "Status",
  "title": "Titel",
  "description": "Beschreibung",
  "settings": "Einstellungen",
  "enable_dark_mode": "Aktivieren Sie Dunkel",
  "task_update_successfully": "Aufgabe erfolgreich aktualisiert!",
  "task_delete_successfully": "Aufgabe erfolgreich gelöscht!",
  "something_went_wrong_try_again_later": "Etwas ist schief gelaufen. Versuchen Sie es später noch einmal"
};
static const Map<String,dynamic> ru_RU = {
  "project_title": "Канбан-доска",
  "back_log": "Отставание",
  "to_do_label": "Сделать",
  "in_progress_label": "В ходе выполнения",
  "done_label": "Сделанный",
  "create_task": "Создать задачу",
  "update_task": "Обновить задачу",
  "delete_task": "Удалить задачу",
  "select_date": "Выберите дату сдачи",
  "due_date": "Срок оплаты",
  "status": "Статус",
  "title": "Заголовок",
  "description": "Описание",
  "settings": "Настройки",
  "enable_dark_mode": "Включить темный",
  "task_update_successfully": "Задача успешно обновлена!",
  "task_delete_successfully": "Задача успешно удалена!",
  "something_went_wrong_try_again_later": "Что-то пошло не так, повторите попытку позже."
};
static const Map<String,dynamic> en_US = {
  "project_title": "Kanban Board",
  "back_log": "Backlog",
  "to_do_label": "To Do",
  "in_progress_label": "In Progress",
  "done_label": "Done",
  "create_task": "Create Task",
  "update_task": "Update Task",
  "delete_task": "Delete Task",
  "select_date": "Select Due Date",
  "due_date": "Due Date",
  "status": "Status",
  "title": "Title",
  "description": "Description",
  "settings": "Settings",
  "enable_dark_mode": "Enable Dark",
  "task_update_successfully": "Task updated successfully!",
  "task_delete_successfully": "Task deleted successfully!",
  "something_went_wrong_try_again_later": "Something Went Wrong, try again later"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"de_DE": de_DE, "ru_RU": ru_RU, "en_US": en_US};
}
