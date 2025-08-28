import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String title;
  final bool checked;
  final ValueChanged<bool?> onChanged;
  final GestureLongPressCallback longPressCallback;

  const TaskTile({
    super.key,
    required this.title,
    required this.checked,
    required this.onChanged,
    required this.longPressCallback,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        title,
        style: TextStyle(
          decoration: checked
              ? TextDecoration.lineThrough
              : TextDecoration.none,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: checked,
        onChanged: onChanged,
      ),
    );
  }
}
