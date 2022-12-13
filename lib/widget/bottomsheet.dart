import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:todoapp/widget/app_buttom.dart';
import 'package:todoapp/widget/date_time.dart';
import 'package:todoapp/widget/todo_category.dart';
import 'package:todoapp/widget/todo_textformfield.dart';

import '../models/todo.dart';

class TodoBottomSheet extends StatefulWidget {
  final Function(Todo) onPressedCreate;
  const TodoBottomSheet({super.key, required this.onPressedCreate});

  @override
  State<TodoBottomSheet> createState() => _TodoBottomSheetState();
}

class _TodoBottomSheetState extends State<TodoBottomSheet> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  String _category = 'Personal';
  DateTime? _dateTime;

  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(builder: (context, visibility) {
      return SizedBox(
        height: visibility ? 750 : null,
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'New Task ToDo',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                height: 10,
                thickness: 2,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Task Name',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TodoTextFormField(
                    label: 'Add New ToDo',
                    controller: _titleController,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Category',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TodoCategory(
                    onCategorySelect: (String category) {
                      setState(() {
                        _category = category;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    height: 100,
                    child: TodoTextFormField(
                      label: 'Description',
                      controller: _descriptionController,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Date & Time',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TodoDateTime(
                    onDateTimeSelect: (DateTime dateTime) {
                      _dateTime = dateTime;
                    },
                  ),
                  Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: AppButtom(
                              text: 'Cancel',
                              border: true,
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: AppButtom(
                              text: 'Create',
                              onPressed: () {
                                if (_dateTime != null) {
                                  final todo = Todo(
                                    title: _titleController.text,
                                    description: _descriptionController.text,
                                    category: _category,
                                    dateTime: _dateTime!,
                                  );
                                  widget.onPressedCreate(todo);
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    });
  }
}
