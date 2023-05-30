import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:todo_mike/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  final inputField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(
                top: 20.0,
              ),
              child: Text(
                "Add Task",
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 30.0,
                ),
              ),
            ),
            SizedBox(
              width: 360,
              child: TextField(
                controller: inputField,
                autofocus: true,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.purple,
                      width: 3,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 3,
                      color: Colors.purple,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: 20.0,
              ),
              width: 360,
              child: ElevatedButton(
                onPressed: () {
                  Provider.of<TaskData>(context, listen: false)
                      .addTask(inputField.text);
                  Navigator.pop(context);
                },
                child: Text("Add"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
