import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:zikr/model/settings_state.dart';

class SettingsCubit extends HydratedCubit<SettingsState> {
  SettingsCubit() : super(const SettingsState());

  void toggleSound() => emit(state.copyWith(useSound: !state.useSound));

  void toggleVibration() =>
      emit(state.copyWith(useVibration: !state.useVibration));

  void toggleLTR() => emit(state.copyWith(leftToRight: !state.leftToRight));

  void updateCheckpoint(int checkpoint) =>
      emit(state.copyWith(checkpoint: checkpoint));

  @override
  SettingsState fromJson(Map<String, dynamic> json) =>
      SettingsState.fromJson(json);

  @override
  Map<String, dynamic> toJson(SettingsState state) => state.toJson();
}
