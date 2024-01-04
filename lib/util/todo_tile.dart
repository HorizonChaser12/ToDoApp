import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  const ToDoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
  });

  final String taskName;
  final bool taskCompleted;
  final Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
      child: Container(
        padding: const EdgeInsets.all(25),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.pink.shade300),
        child: Row(
          children: [
            Checkbox(
              value: taskCompleted,
              onChanged: onChanged,
              activeColor: Colors.pink,
            ),
            Text(
              taskName,
              style: TextStyle(
                color: Colors.white,
                decoration: taskCompleted
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
