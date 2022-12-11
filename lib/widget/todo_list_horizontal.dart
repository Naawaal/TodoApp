import 'package:flutter/widgets.dart';
import 'package:todoapp/widget/todo_horizontal_item.dart';

class TodoListHorizontal extends StatefulWidget {
  const TodoListHorizontal({super.key});

  @override
  State<TodoListHorizontal> createState() => _TodoListHorizontalState();
}

class _TodoListHorizontalState extends State<TodoListHorizontal> {
  final PageController _pageController = PageController(
    viewportFraction: 0.8,
  );

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageController,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const TodoHorizontalItem();
      },
    );
  }
}
