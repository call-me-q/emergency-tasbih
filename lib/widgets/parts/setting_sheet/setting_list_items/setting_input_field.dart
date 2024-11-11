part of '../setting_sheet.dart';

class SettingInputField extends StatelessWidget {
  final String text;
  final Function(String value) onChanged;
  final Function(SettingsState value) settingState;

  const SettingInputField(
      {super.key,
      required this.text,
      required this.onChanged,
      required this.settingState});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SettingText(text: text),
          BlocBuilder<SettingsCubit, SettingsState>(
              builder: (BuildContext context, SettingsState state) {
            return TextField(
              controller: TextEditingController(text: settingState(state)),
              maxLength: 5,
              decoration: const InputDecoration(border: OutlineInputBorder()),
              onChanged: (String value) {
                onChanged(value);
              },
            );
          })
        ],
      ),
    );
  }
}
