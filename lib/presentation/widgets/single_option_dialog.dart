import 'package:flutter/material.dart';
import 'package:income_calculator/presentation/widgets/common_text_button.dart';

class SingleOptionDialog extends StatelessWidget {
  const SingleOptionDialog({
    Key? key,
    required this.contentText,
    required this.buttonText,
    required this.onButtonPressed,
  }) : super(key: key);

  final String contentText;
  final String buttonText;
  final void Function() onButtonPressed;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0, top: 8.0),
            child: Text(
              contentText,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 20),
            ),
          ),
          CommonTextButton(
            onPressed: onButtonPressed,
            text: buttonText,
          ),
        ],
      ),
    );
  }
}
