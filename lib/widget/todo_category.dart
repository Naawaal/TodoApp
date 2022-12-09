import 'package:flutter/material.dart';

class TodoCategory extends StatefulWidget {
  const TodoCategory({super.key});

  @override
  State<TodoCategory> createState() => _TodoCategoryState();
}

class _TodoCategoryState extends State<TodoCategory> {
  String activeCategory = 'Personal';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Expanded(
          child: _itemBuilder(
            value: 'Personal',
            icon: Icon(
              Icons.person,
              color: activeCategory != 'Personal' ? Colors.grey : Colors.white,
            ),
            onPressed: () {
              setState(() {
                activeCategory = 'Personal';
              });
            },
            isActive: activeCategory == 'Personal',
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: _itemBuilder(
            value: 'Teams',
            icon: Icon(
              Icons.people,
              color: activeCategory != 'Teams' ? Colors.grey : Colors.white,
            ),
            onPressed: () {
              setState(() {
                activeCategory = 'Teams';
              });
            },
            isActive: activeCategory == 'Teams',
          ),
        ),
      ]),
    );
  }

  Widget _itemBuilder({
    required final String value,
    required Icon icon,
    required final Function()? onPressed,
    required final bool isActive,
  }) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        decoration: BoxDecoration(
          color: isActive ? Colors.blue : Colors.grey.shade300,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(children: [
          icon,
          const SizedBox(
            width: 10,
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w100,
              color: !isActive ? Colors.grey : Colors.white,
            ),
          ),
        ]),
      ),
    );
  }
}
