import 'package:flutter/material.dart';
import 'package:todolist/components/tasks/task_master.dart';
import '../models/task.dart';

class AllTasks extends StatefulWidget{

   const AllTasks({Key? key,required this.tasks})
       : super(key: key);

final List<Task> tasks;
  @override
  State<AllTasks> createState() => _AllTasks();

}

class _AllTasks extends State<AllTasks> {
  late List<Task> tasks;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return
        Center(
          child: TaskMaster(tasks: tasks)
        );
  }
}


