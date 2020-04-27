import 'package:flutter/material.dart';
import 'package:flutter_todo/widgets/tasks_tile.dart';
import 'package:provider/provider.dart';
import 'package:flutter_todo/model/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TasksTile(
              taskTitle: taskData.taskList[index].name,
              isChecked: taskData.taskList[index].isDone,
              taskCheckCallback: (checkState) {
                taskData.updateTask(taskData.taskList[index]);
              },
              onLongPress: () {
                taskData.deleteTask(taskData.taskList[index]);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
