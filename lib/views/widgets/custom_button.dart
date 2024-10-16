import 'package:flutter/material.dart';
import 'app_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.buttonText,
    this.onPressed,
  }) : super(key: key);

  final String buttonText;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        backgroundColor: WidgetStateProperty.all(Colors.deepOrange),
        minimumSize: WidgetStateProperty.all(const Size(200, 50)),
        elevation: WidgetStateProperty.all(0),
      ),
      child: AppText.medium(
        buttonText,
        color: Colors.white,
        fontSize: 16,
      ),
    );
  }
}
