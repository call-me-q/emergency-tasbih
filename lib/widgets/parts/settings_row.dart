import 'package:flutter/material.dart';

class SettingsRow extends StatelessWidget {
  final String title;
  final String? caption;
  final Widget input;
  const SettingsRow(
      {super.key, required this.title, this.caption, required this.input});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Column(
          children: [Text(title), Text(caption ?? '')],
        )),
        input
      ],
    );
  }
}
