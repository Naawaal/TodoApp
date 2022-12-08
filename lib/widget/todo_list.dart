import 'package:flutter/cupertino.dart';
import 'package:todoapp/widget/todo_item.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: ((context, index) {
        return const TodoItem();
      }),
    );
  }
}
