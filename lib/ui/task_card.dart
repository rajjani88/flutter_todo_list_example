import 'package:flutter/material.dart';
import 'package:flutter_todo_list/models/task.dart';

class TaskCard extends StatefulWidget {
  Task task;
  Function update;

  TaskCard({Key? key, required this.task, required this.update})
      : super(key: key);

  @override
  _TaskCardState createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          //tasks.removeAt(index);
          widget.update();
        },
        title: Text(widget.task.task_name),
        subtitle: Text("status : ${widget.task.isFinish}"),
        trailing: (widget.task.isFinish)
            ? Icon(Icons.done)
            : SizedBox(
                height: 10,
                width: 10,
              ),
      ),
    );
  }
}
