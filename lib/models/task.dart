import 'package:flutter/cupertino.dart';

class Task with ChangeNotifier {
  String name;
  bool isDone;

  Task({this.name = 'one', this.isDone = false});

  void toogleDone() {
    isDone = !isDone;
  }
}
