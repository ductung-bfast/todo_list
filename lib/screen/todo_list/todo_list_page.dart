import 'package:flutter/material.dart';
import 'package:todo_list/model/todo.dart';
import 'package:todo_list/screen/todo_edit/todo_edit_page.dart';
import 'package:todo_list/screen/todo_list/todo_list_viewmodel.dart';

class TodoListPage extends StatelessWidget {
  final TodoViewmodel todoViewmodel = TodoViewmodel();

  TodoListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder<List<Todo>>(
        valueListenable: todoViewmodel.todos,
        builder: (BuildContext context, List<Todo> value, Widget? child) {
          // TODO: show toto items here
          return Placeholder();
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return TodoEditPage();
              },
            ),
          );
          todoViewmodel.addTodo(result);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
