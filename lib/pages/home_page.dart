import 'package:flutter/material.dart';
import 'package:todo_app/util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List toDoList = [
    ["Learn Flutter", false],
    ["Learn it by making varoius projects", true]
  ];

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink.shade100,
        appBar: AppBar(
          title: const Text(
            "To-Do App",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.pink.shade200,
          elevation: 0,
          centerTitle: true,
          leading: const Icon(
            Icons.home,
            color: Colors.white,
            size: 25,
            shadows: [
              Shadow(blurRadius: 7),
            ],
          ),
          actions: const [
            Icon(
              Icons.add,
              color: Colors.white,
              size: 30,
              shadows: [
                Shadow(blurRadius: 7),
              ],
            ),
            Padding(padding: EdgeInsets.only(right: 10))
          ],
        ),
        body: ListView.builder(
          itemCount: toDoList.length,
          itemBuilder: (context, index) {
            return ToDoTile(
              taskName: toDoList[index][0],
              taskCompleted: toDoList[index][1],
              onChanged: (value) => checkBoxChanged(value, index),
            );
          },
        ));
  }
}
