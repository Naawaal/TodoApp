import 'package:flutter/material.dart';
import 'package:todoapp/widget/todo_horizontal_item.dart';

import '../models/todo.dart';

class TodoListHorizontal extends StatefulWidget {
  final List<Todo> todos;
  const TodoListHorizontal({super.key, required this.todos});

  @override
  State<TodoListHorizontal> createState() => _TodoListHorizontalState();
}

class _TodoListHorizontalState extends State<TodoListHorizontal> {
  final PageController _pageController = PageController(
    viewportFraction: 0.8,
  );
  final List _colors = [
    Colors.orange,
    Colors.blue,
    Colors.green,
    Colors.red,
    Colors.purple,
    Colors.yellow,
    Colors.pink,
    Colors.brown,
    Colors.teal,
    Colors.cyan,
  ];

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageController,
      itemCount: 10,
      itemBuilder: (context, index) {
        final color = _colors[index];
        return TodoHorizontalItem(
          color: color,
        );
      },
    );
  }
}
