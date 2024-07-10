import 'package:flutter/material.dart';
import 'package:todo_list/screen/todo_edit/todo_edit_viewmodel.dart';

class TodoEditPage extends StatelessWidget {
  final TodoEditViewmodel viewmodel = TodoEditViewmodel();

  TodoEditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              final todo = viewmodel.constructTodo();
              Navigator.of(context).pop(todo);
            },
            child: const Text("Save"),
          )
        ],
      ),
    );
  }
}
