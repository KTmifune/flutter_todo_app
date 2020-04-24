import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  const TasksTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('This is Task'),
      trailing: Checkbox(
        value: false,
      ),
    );
  }
}
