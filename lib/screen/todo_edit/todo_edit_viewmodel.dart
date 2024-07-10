import 'package:todo_list/model/todo.dart';

class TodoEditViewmodel {
  String? text;

  Todo constructTodo() => Todo(text: text ?? '');
}
