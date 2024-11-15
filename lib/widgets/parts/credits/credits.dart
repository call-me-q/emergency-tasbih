import 'package:flutter/material.dart';
import 'package:zikr/const.dart';

class TamatSoftware extends StatelessWidget {
  const TamatSoftware({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset('image-path'),
        RichText(text: const TextSpan(children: [TextSpan(text: appName)]))
      ],
    );
  }
}
