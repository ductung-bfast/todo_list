import 'package:flutter/foundation.dart';
import 'package:todo_list/model/todo.dart';

class TodoViewmodel {
  ValueNotifier<List<Todo>> todos = ValueNotifier([]);

  addTodo(Todo todo) {
    // TODO: Add new TODO here
  }
}
