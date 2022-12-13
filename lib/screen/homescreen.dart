import 'package:flutter/material.dart';
import 'package:todoapp/widget/app_buttom.dart';
import 'package:todoapp/widget/bottomsheet.dart';
import 'package:todoapp/widget/todo_list.dart';
import 'package:todoapp/widget/todo_list_horizontal.dart';

import '../models/todo.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Todo> _todos = [];
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
        actions: [
          TextButton(onPressed: () {}, child: const Text('View More')),
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: TodoListHorizontal(
            todos: _todos,
          )),
          Expanded(
              child: TodoList(
            todos: _todos,
          )),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: AppButtom(
            text: 'Create New',
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                  ),
                  builder: (context) {
                    return TodoBottomSheet(
                      onPressedCreate: (Todo todo) {
                        setState(() {
                          _todos.add(todo);
                        });
                        Navigator.pop(context);
                      },
                    );
                  });
            }),
      ),
    );
  }
}
