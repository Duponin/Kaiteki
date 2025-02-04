import 'package:flutter/material.dart';

class SeparatorText extends StatelessWidget {
  final String text;

  const SeparatorText(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Text(
        text.toUpperCase(),
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Theme.of(context).disabledColor,
        ),
      ),
    );
  }
}
