import 'package:flutter/material.dart';
import 'package:todolist/screens/all_tasks.dart';
import 'package:todolist/models/task.dart';
import 'package:faker/faker.dart';

void main() {
  var tasks = List<Task>.generate(15, (int index) =>
      Task(index,faker.lorem.sentence(),random.boolean(), faker.date.dateTime(maxYear: 2022)));


  runApp(TodoList(tasks: tasks,));
}

class TodoList extends StatelessWidget {
  const TodoList({Key? key,required this.tasks}) : super(key: key);

  final List<Task>  tasks;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo list',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        fontFamily: 'Rowdies',
      ),
      home: AllTasks(tasks: tasks),
    );
  }
}
