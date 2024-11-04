import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zikr/models/index.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final SharedPreferences _sharedPreferences;

  SettingsBloc(this._sharedPreferences) : super(SettingsInitial()) {
    on<UpdateSettingsEvent>((event, emit) {
      _sharedPreferences.setBool('useSound', event.useSound);
      _sharedPreferences.setBool('useVibrate', event.useVibrate);
      _sharedPreferences.setBool('leftToRight', event.leftToRight);
      _sharedPreferences.setInt('limit', event.limit);
      emit(SettingsUpdated(
        useSound: event.useSound,
        useVibrate: event.useVibrate,
        leftToRight: event.leftToRight,
        limit: event.limit,
      ));
    });

    on<LoadSettingsEvent>((event, emit) async {
      final useSound = _sharedPreferences.getBool('useSound') ?? false;
      final useVibrate = _sharedPreferences.getBool('useVibrate') ?? false;
      final leftToRight = _sharedPreferences.getBool('leftToRight') ?? false;
      final limit = _sharedPreferences.getInt('limit') ?? 10;

      emit(SettingsLoaded(
        useSound: useSound,
        useVibrate: useVibrate,
        leftToRight: leftToRight,
        limit: limit,
      ));
    });
  }
}
