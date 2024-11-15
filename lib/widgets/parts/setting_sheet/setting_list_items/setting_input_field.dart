part of '../setting_sheet.dart';

class SettingInputField extends HookWidget {
  final String text;
  final Function(String value) onChanged;
  final Function(SettingsState value) settingState;
  final TextInputType? keyboardType;
  const SettingInputField(
      {super.key,
      required this.text,
      required this.onChanged,
      required this.settingState,
      this.keyboardType});

  @override
  Widget build(BuildContext context) {
    // Use a hook to initialize the TextEditingController only once
    final controller = useTextEditingController();
    return ListTile(
      title: SettingText(text: text),
      trailing: SizedBox(
        width: 80,
        height: 40,
        child: BlocBuilder<SettingsCubit, SettingsState>(
          builder: (BuildContext context, SettingsState state) {
            // Update the controller's text when the state changes
            controller.text = settingState(state);

            return TextField(
              keyboardType: keyboardType,
              textAlign: TextAlign.end,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w500),
              controller: controller,
              maxLength: 5,
              decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  counterText: '',
                  contentPadding: EdgeInsets.symmetric(vertical: 1)),
              onChanged: onChanged,
            );
          },
        ),
      ),
    );
  }
}
