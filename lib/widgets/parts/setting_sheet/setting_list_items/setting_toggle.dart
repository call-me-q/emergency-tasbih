part of '../setting_sheet.dart';

class SettingToggle extends StatelessWidget {
  final String text;
  final Function(bool value) onToggle;
  final Function(SettingsState value) settingState;

  const SettingToggle(
      {super.key,
      required this.text,
      required this.onToggle,
      required this.settingState});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(
        builder: (BuildContext context, SettingsState state) {
      return SwitchListTile(
        title: SettingText(text: text),
        value: settingState(state),
        onChanged: (bool value) {
          onToggle(value);
        },
      );
    });
  }
}
