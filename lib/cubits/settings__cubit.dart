part of 'cubits.dart';

class SettingsCubit extends HydratedCubit<SettingsState> {
  SettingsCubit() : super(const SettingsState());

  @override
  SettingsState fromJson(Map<String, dynamic> json) =>
      SettingsState.fromJson(json);

  void toggleLTRFormat() =>
      emit(state.copyWith(leftToRightFormat: !state.leftToRightFormat));

  void toggleSound() => emit(state.copyWith(useSound: !state.useSound));

  void toggleVibration() =>
      emit(state.copyWith(useVibration: !state.useVibration));

  @override
  Map<String, dynamic> toJson(SettingsState state) => state.toJson();

  void updateCheckpoint(int checkpoint) =>
      emit(state.copyWith(checkpoint: checkpoint));
}
