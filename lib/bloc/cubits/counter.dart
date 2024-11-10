import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vibration/vibration.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  Future<void> increment() async {
    if (await Vibration.hasVibrator() == true) {
      Vibration.vibrate(duration: 90);
    }
    emit(state + 1);
  }

  Future<void> reset() async {
    if (await Vibration.hasVibrator() == true) {
      Vibration.vibrate(duration: 500);
    }
    emit(0);
  }
}
