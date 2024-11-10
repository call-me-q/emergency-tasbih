import 'package:flutter/material.dart';
import 'package:zikr/widgets/parts/dzikr_area/dzikr_area.dart';
import 'package:zikr/widgets/parts/setting_sheet/setting_sheet.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Stack(
          children: [DzikrArea(), SettingSheet()],
        ),
      ),
    );
  }
}
