import 'package:flutter/material.dart';

class AppButtom extends StatelessWidget {
  final String text;
  const AppButtom({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            elevation: 5,
            padding: const EdgeInsets.all(18),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
            )),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
