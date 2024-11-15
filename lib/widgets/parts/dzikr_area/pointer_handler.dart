part of './dzikr_area.dart';

class PointerHandler {
  final CounterCubit counterCubit;
  final SettingsCubit settingsCubit;
  final _player = AudioPlayer(); // Create a player

  PointerHandler({
    required this.counterCubit,
    required this.settingsCubit,
  }) {
    _initAudio();
  }

  Future<void> _initAudio() async {
    await _player.setUrl('assets/audio/switch.mp3');
  }

  void tapOrSwipe() async {
    counterCubit.increment();
    if (settingsCubit.state.useSound) {
      await _player.play();
      await _player.stop();
    }
    if (settingsCubit.state.useVibration &&
        await Vibration.hasVibrator() == true) {
      Vibration.vibrate(duration: 90);
    }
  }

  void longPress() async {
    counterCubit.reset();

    if (settingsCubit.state.useVibration &&
        await Vibration.hasVibrator() == true) {
      Vibration.vibrate(duration: 300);
    }
  }
}
