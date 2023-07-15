// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TODOCard extends StatelessWidget {
  final String title;
  final bool isDone;
  final Function changeStatus;
  final int taskIndex;
  final Function deleteTask;

  const TODOCard({
    super.key,
    required this.title,
    required this.isDone,
    required this.changeStatus,
    required this.taskIndex,
    required this.deleteTask,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        changeStatus(taskIndex);
      },
      child: Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.fromLTRB(10, 0, 5, 0),
        height: MediaQuery.of(context).size.height * 0.09,
        width: MediaQuery.of(context).size.width * 0.90,
        decoration: BoxDecoration(
          color: Color.fromRGBO(209, 244, 224, 0.2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: isDone?Colors.grey.shade900: Colors.white,
                  fontSize: 20,
                  decoration:
                      isDone ? TextDecoration.lineThrough : TextDecoration.none,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.10,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      changeStatus(taskIndex);
                    },
                    icon: Icon(
                      isDone ? Icons.done : Icons.close,
                      color: isDone ? Colors.green : Colors.red,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      deleteTask(taskIndex);
                    },
                    icon: Icon(
                      Icons.delete,
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
