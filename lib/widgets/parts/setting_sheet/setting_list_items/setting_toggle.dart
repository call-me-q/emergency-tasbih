part of '../setting_sheet.dart';

class SettingToggle extends StatelessWidget {
  final String text;
  final Function(bool value) onToggle;
  const SettingToggle({super.key, required this.text, required this.onToggle});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(
        builder: (BuildContext context, SettingsState state) {
      return SwitchListTile(
        title: SettingText(text: text),
        value: state.leftToRight,
        onChanged: (bool value) {
          onToggle(value);
        },
      );
    });
  }
}
