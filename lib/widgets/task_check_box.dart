import 'package:flutter/material.dart';

class TaskCheckBox extends StatelessWidget {
  final bool checkboxState;
  final ValueChanged<bool?> toogleCheckboxState;

  TaskCheckBox(this.checkboxState, this.toogleCheckboxState);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkboxState,
      activeColor: Colors.purple,
      onChanged: toogleCheckboxState,
    );
  }
}
