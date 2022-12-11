import 'package:flutter/material.dart';

class AppButtom extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  final bool border;
  const AppButtom(
      {super.key,
      required this.text,
      required this.onPressed,
      this.border = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: border ? Colors.white : Colors.blue,
            elevation: 5,
            padding: const EdgeInsets.all(18),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
              side: border
                  ? const BorderSide(color: Colors.blue)
                  : BorderSide.none,
            )),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            color: border ? Colors.blue : Colors.white,
          ),
        ),
      ),
    );
  }
}
