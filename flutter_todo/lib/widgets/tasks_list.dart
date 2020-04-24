import 'package:flutter/material.dart';
import 'package:flutter_todo/widgets/tasks_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TasksTile(),
        TasksTile(),
        TasksTile(),
      ],
    );
  }
}
