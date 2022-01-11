import 'package:flutter/material.dart';
import 'package:flutter_todo_list/models/task.dart';
import 'package:flutter_todo_list/ui/task_card.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController taskCont = TextEditingController();

  //List<String> tasks = ["Task 1", "Task 2", "Task 3"];
  List<Task> tasks = [
    Task(task_name: "Task 1", isFinish: false),
    Task(task_name: "Task 2", isFinish: true),
    Task(task_name: "Task 3", isFinish: false),
    Task(task_name: "Task 4", isFinish: true),
  ];

  markDone(index) {
    Task dummy = tasks[index];
    tasks.removeAt(index);
    if (dummy.isFinish) {
      dummy.isFinish = false;
    } else {
      dummy.isFinish = true;
    }

    tasks.add(dummy);
    setState(() {});
  }

  addNewTask(newTask) {
    tasks.add(Task(task_name: newTask, isFinish: false));
    taskCont.clear();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("To Do List"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                return TaskCard(
                  task: tasks[index],
                  update: () {
                    markDone(index);
                  },
                );
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.all(14),
            child: Column(children: [
              TextField(
                controller: taskCont,
                decoration: InputDecoration(
                  hintText: "Enter task",
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    String newTask = taskCont.text.toString().trim();
                    if (newTask.isNotEmpty) {
                      addNewTask(newTask);
                    }
                  },
                  child: Text("Add Task"))
            ]),
          )
        ],
      ),
    );
  }
}
