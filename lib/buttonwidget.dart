import 'dart:ffi';

import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;
  const ButtonWidget({
    Key? key,
    required this.text,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ElevatedButton(
        child: Text(text),
        style: ElevatedButton.styleFrom(
            shape: StadiumBorder(),
            onPrimary: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12)),
        onPressed: onClicked,
      );
}
