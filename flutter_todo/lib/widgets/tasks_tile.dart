import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function taskCheckCallback;

  TasksTile({this.isChecked = false, this.taskTitle, this.taskCheckCallback});
//  void checkBoxCallback(bool checkBoxState) {
//    setState(() {
//      isChecked = checkBoxState;
//    });
//  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlue,
        value: isChecked,
        onChanged: taskCheckCallback,
      ),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool checkBoxState;
  final Function toggleCheckBoxState;
  TaskCheckBox({this.checkBoxState, this.toggleCheckBoxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlue,
      value: checkBoxState,
      onChanged: toggleCheckBoxState,
    );
  }
}
