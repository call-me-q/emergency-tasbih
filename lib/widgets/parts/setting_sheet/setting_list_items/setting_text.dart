part of '../setting_sheet.dart';

class SettingText extends StatelessWidget {
  const SettingText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
    );
  }
}
