part of 'setting_sheet.dart';

class SettingList extends StatelessWidget {
  const SettingList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.list(children: [
      SettingToggle(
        text: 'Use Sound',
        onToggle: (bool value) {
          context.read<SettingsCubit>().toggleSound();
        },
      ),
      SettingToggle(
        text: 'Use Vibration',
        onToggle: (bool value) {
          context.read<SettingsCubit>().toggleVibration();
        },
      ),
      SettingToggle(
        text: 'Use Left To Right Format',
        onToggle: (bool value) {
          context.read<SettingsCubit>().toggleLTR();
        },
      ),
    ]);
  }
}
