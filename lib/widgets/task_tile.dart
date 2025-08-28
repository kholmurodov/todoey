import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String title;
  final bool checked;
  final ValueChanged<bool?> onChanged;

  const TaskTile({
    super.key,
    required this.title,
    required this.checked,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
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
