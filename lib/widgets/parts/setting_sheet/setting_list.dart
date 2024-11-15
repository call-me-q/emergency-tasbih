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
      // SettingToggle(
      //   text: 'Use Left To Right Format',
      //   settingState: (SettingsState state) => state.leftToRight,
      //   onToggle: (bool value) {
      //     context.read<SettingsCubit>().toggleLTR();
      //   },
      // ),
      const Divider(
        thickness: 0.5,
        color: Colors.white54,
      ),
      SettingInputField(
          text: 'Set Checkpoint',
          keyboardType: const TextInputType.numberWithOptions(
            decimal: true, // Allow decimal numbers
          ),
          settingState: (SettingsState state) => state.checkpoint.toString(),
          onChanged: (String value) {
            if (value.isEmpty || !value.contains(RegExp(r'[0-9]'))) {
              return;
            }
            int parsedValue = int.parse(value);
            context.read<SettingsCubit>().updateCheckpoint(parsedValue);
          })
    ]);
  }
}
