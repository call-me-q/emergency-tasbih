part of 'setting_sheet.dart';

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

class SettingList extends StatelessWidget {
  const SettingList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.list(children: [
      SwitchListTile(
        title: const SettingText(text: 'Use Sound'),
        value: false,
        onChanged: (bool value) {},
      ),
      SwitchListTile(
        title: const SettingText(text: 'Use Vibration'),
        value: true,
        onChanged: (bool value) {},
      ),
      SwitchListTile(
        title: const SettingText(text: 'Use Left to Right Format'),
        value: false,
        onChanged: (bool value) {},
      ),
    ]);
  }
}
