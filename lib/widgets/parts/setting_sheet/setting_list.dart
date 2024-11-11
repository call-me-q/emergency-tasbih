part of 'setting_sheet.dart';

class SettingList extends StatelessWidget {
  const SettingList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.list(children: [
      SettingToggle(
        text: 'Use Sound',
        settingState: (SettingsState state) => state.useSound,
        onToggle: (bool value) {
          context.read<SettingsCubit>().toggleSound();
        },
      ),
      SettingToggle(
        text: 'Use Vibration',
        settingState: (SettingsState state) => state.useVibration,
        onToggle: (bool value) {
          context.read<SettingsCubit>().toggleVibration();
        },
      ),
      SettingToggle(
        text: 'Use Left To Right Format',
        settingState: (SettingsState state) => state.leftToRight,
        onToggle: (bool value) {
          context.read<SettingsCubit>().toggleLTR();
        },
      ),
      SettingInputField(
          text: 'Set Checkpoint',
          settingState: (SettingsState state) => state.checkpoint.toString(),
          onChanged: (String value) {
            context.read<SettingsCubit>().updateCheckpoint(int.parse(value));
          })
    ]);
  }
}
