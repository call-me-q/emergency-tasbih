import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:just_audio/just_audio.dart';
import 'package:vibration/vibration.dart';
import 'package:zikr/bloc/cubits/counter.dart';
import 'package:zikr/bloc/cubits/settings.dart';
import 'package:zikr/const.dart';

part './counter_text.dart';
part './pointer_handler.dart';

class DzikrArea extends HookWidget {
  const DzikrArea({super.key});

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<bool> longPressTriggered = useState<bool>(false);

    final counterCubit = context.read<CounterCubit>();
    final settingsCubit = context.read<SettingsCubit>();
    Timer? longPressTimer;

    final pointerHandler = PointerHandler(
      counterCubit: counterCubit,
      settingsCubit: settingsCubit,
    );

    void handlePointerDown() {
      longPressTimer = Timer(
        const Duration(milliseconds: longPressDuration),
        () {
          pointerHandler.longPress();
          longPressTriggered.value = true;
        },
      );
    }

    void handlePointerUp() {
      longPressTimer?.cancel();
      longPressTimer = null;

      if (!longPressTriggered.value) {
        pointerHandler.tapOrSwipe();
      }
      longPressTriggered.value = false;
    }

    return Listener(
      onPointerDown: (_) => handlePointerDown(),
      onPointerUp: (_) => handlePointerUp(),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.transparent,
        child: const Column(
          children: [
            Expanded(
              child: Center(
                child: CounterTextWidget(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
