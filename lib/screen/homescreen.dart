import 'package:flutter/material.dart';
import 'package:todoapp/widget/app_buttom.dart';
import 'package:todoapp/widget/todo_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Todo App',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
        actions: [TextButton(onPressed: () {}, child: const Text('View More'))],
      ),
      body: const TodoList(),
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.all(10.0),
        child: AppButtom(
          text: 'Create New',
        ),
      ),
    );
  }
}
