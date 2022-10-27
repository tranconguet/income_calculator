import 'package:flutter/material.dart';

class CommonInputField extends StatelessWidget {
  const CommonInputField({
    Key? key,
    required TextEditingController textController,
    required this.hintText,
    this.keyboardType,
  })  : _textController = textController,
        super(key: key);

  final TextEditingController _textController;
  final TextInputType? keyboardType;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: _textController,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          hintText: hintText,
        ),
      ),
    );
  }
}
