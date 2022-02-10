
import 'package:flutter/material.dart';
import 'package:todolist/components/tasks/task_preview.dart';
import '../../models/task.dart';

class TaskMaster extends StatelessWidget{

  const TaskMaster({Key? key, required this.tasks}) : super(key: key);

  final List<Task> tasks;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return TaskPreview(task: tasks[index]);
      },
    );
  }


}