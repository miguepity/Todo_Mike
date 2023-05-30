import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_mike/models/task_data.dart';
import 'package:todo_mike/screens/tasks_screen.dart';

import 'models/task.dart';

void main() {
  runApp(todo_mike());
}

class todo_mike extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
