import 'package:flutter/foundation.dart';
import 'package:flutter_todo/model/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _taskList = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy water'),
    Task(name: 'Buy food'),
  ];

  //読み取り専用のリスト
  UnmodifiableListView<Task> get taskList {
    return UnmodifiableListView(_taskList);
  }

  int get taskCount {
    return _taskList.length;
  }

  //リストに追加する
  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _taskList.add(task);
    notifyListeners();
  }

  //チェック項目をアップデート
  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _taskList.remove(task);
    notifyListeners();
  }
}
