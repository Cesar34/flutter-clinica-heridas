import 'package:flutter/material.dart';

class ButtonBlue extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const ButtonBlue({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 2,
        shape: const StadiumBorder(),
      ),
      onPressed: onPressed,
      child: Container(
        color: Colors.blue,
        width: double.infinity,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
