import 'package:flutter/material.dart';

class TodoTextFormField extends StatelessWidget {
  const TodoTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          color: Colors.grey.shade200, borderRadius: BorderRadius.circular(12)),
      child: TextFormField(
        autocorrect: true,
        decoration: InputDecoration(
            border: InputBorder.none,
            labelText: 'Add Task Name',
            labelStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade500,
            )),
      ),
    );
  }
}
