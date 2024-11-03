import 'package:flutter/material.dart';
import 'package:zikr/gen/strings.g.dart';

class SettingsButton extends StatelessWidget {
  const SettingsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(
              side: const BorderSide(
                  width: 1, color: Color.fromRGBO(255, 255, 255, 0.2)),
              minimumSize: const Size.fromHeight(45)),
          onPressed: () {
            print('fs');
          },
          child: Text(
            t.home.buttons.settings,
            style: const TextStyle(
              color: Color.fromRGBO(255, 255, 255, 0.2),
            ),
          )),
    );
  }
}
