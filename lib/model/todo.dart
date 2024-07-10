class Todo {
  String id;
  String text;
  bool isFinished = false;

  Todo({required this.text}) : id = DateTime.now().toString();
}
