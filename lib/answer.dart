//VoidCallback
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback onPressedFunction;
  final String buttonText;

  const Answer(
      {Key? key, required this.onPressedFunction, required this.buttonText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(5),
      child: ElevatedButton(
        child: Text(buttonText),
        onPressed: onPressedFunction,
      ),
    );
  }
}
