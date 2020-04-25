import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallback;

  AddTaskScreen({this.addTaskCallback});

  @override
  Widget build(BuildContext context) {
    String newTaskTitle;

    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 30.0,
              ),
              Text(
                'ADD TASK',
                style: TextStyle(color: Colors.lightBlueAccent, fontSize: 20.0),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    hintStyle: TextStyle(
                  color: Colors.lightBlueAccent,
                )),
                onChanged: (newText) {
                  newTaskTitle = newText;
                },
              ),
              SizedBox(
                height: 30.0,
              ),
              ButtonTheme(
                minWidth: 300.0,
                height: 50.0,
                child: RaisedButton(
                    color: Colors.white,
                    shape: BeveledRectangleBorder(
                      side: BorderSide(
                        color: Colors.black,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    highlightColor: Colors.lightBlueAccent,
                    hoverColor: Colors.lightBlueAccent,
                    child: Text(
                      'Add',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      addTaskCallback(newTaskTitle);
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
