import 'package:flutter/material.dart';
import 'package:todolist/models/task.dart';
class TaskPreview extends StatelessWidget {
  final Task task;

  const TaskPreview({Key? key,required this.task}) : super(key: key);

  @override
  Widget build(BuildContext context){

    Widget complete = const Align(
        alignment: Alignment(1,-1) ,
        child: Icon(Icons.av_timer_rounded)
    );

  if(task.completed){
     complete =  const Align(
      alignment: Alignment(1,-1),
      child: Icon(Icons.check)
    );
  }
    return ListTile(
          title: Text(task.content),
          trailing: complete,
    );
}
}