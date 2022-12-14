import 'package:flutter/material.dart';

class TodoTextFormField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  const TodoTextFormField(
      {super.key, required this.label, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          color: Colors.grey.shade200, borderRadius: BorderRadius.circular(12)),
      child: TextFormField(
        controller: controller,
        autocorrect: true,
        decoration: InputDecoration(
            border: InputBorder.none,
            labelText: label,
            labelStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade500,
            )),
      ),
    );
  }
}
