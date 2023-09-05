import 'package:flutter/material.dart';
import 'package:to_do_app_bloc/screens/themeservice.dart';

import '../models/task.dart';

class TasksScreen extends StatelessWidget {
  TasksScreen({Key? key}) : super(key: key);

  List<Task> tasksList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            ThemeService().SwithTheme();
          },
          child: Icon(
            Icons.nightlight_round,
            size: 20,
          ),
        ),
        centerTitle: true,
        title: const Text('Tasks App'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         const Center(
            child: Chip(
              label: Text(
                'Tasks:',
              ),
            ),
          ),
          ListView.builder(
            itemCount: tasksList.length,
              itemBuilder: (Context.index){
              var task = tasksList[index];
          return ListTitle(
          title : Text(task.title),
          trailing : Checkbox(
          value : task.isDone,
          onChanged: (value){},
          ),

          );
          })
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Add Task',
        child: const Icon(Icons.add),
      ),
    );
  }
}
