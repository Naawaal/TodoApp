import 'package:flutter/cupertino.dart';
import 'package:todoapp/models/todo.dart';
import 'package:todoapp/widget/todo_item.dart';

class TodoList extends StatelessWidget {
  final List<Todo> todos;
  const TodoList({super.key, required this.todos});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: todos.length,
      itemBuilder: ((context, index) {
        final todo = todos[index];
        return TodoItem(
          todo: todo,
        );
      }),
    );
  }
}
