import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) => TaskTile(
            title: taskData.tasks[index].name,
            checked: taskData.tasks[index].done,
            onChanged: (value) {
              taskData.toggleDone(index);
            },
            longPressCallback: () {
              taskData.deleteTask(index);
            },
          ),
          itemCount: taskData.count,
        );
      },
    );
  }
}
