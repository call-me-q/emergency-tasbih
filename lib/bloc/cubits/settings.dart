import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:zikr/states/setting_state.dart';

class SettingsCubit extends HydratedCubit<SettingsState> {
  SettingsCubit() : super(const SettingsState());

  void toggleSound() => emit(state.copyWith(useSound: !state.useSound));

  void toggleVibration() =>
      emit(state.copyWith(useVibration: !state.useVibration));

  void toggleDirection() =>
      emit(state.copyWith(leftToRight: !state.leftToRight));

  void updateLimit(int limit) => emit(state.copyWith(limit: limit));

  @override
  SettingsState fromJson(Map<String, dynamic> json) =>
      SettingsState.fromJson(json);

  @override
  Map<String, dynamic> toJson(SettingsState state) => state.toJson();
}
