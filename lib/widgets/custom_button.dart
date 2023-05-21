//custom button widget
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    // we have to put it on required to avoid compiling error
    required this.buttonText,
    required this.buttonColor,
    required this.textColor,
    required this.onPressed,
  });

//making the buttn properties dynamis
  final String buttonText;
  final Color buttonColor;
  final Color textColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.height * 0.08,
      height: size.height * 0.08,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: buttonColor,
          shape: const CircleBorder(),
        ),
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 25,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
