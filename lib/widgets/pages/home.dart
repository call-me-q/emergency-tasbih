import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zikr/bloc/cubits/counter.dart';
import 'package:zikr/widgets/parts/counter_text.dart';
import 'package:zikr/widgets/parts/settings_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onLongPress: () {
            context.read<CounterCubit>().reset();
          },
          onTap: () {
            context.read<CounterCubit>().increment();
          },
          onPanEnd: (details) {
            context.read<CounterCubit>().increment();
          },
          child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.transparent,
              child: const Column(
                children: [
                  Expanded(
                      child: Center(
                    child: CounterTextWidget(),
                  )),
                  SettingsButton()
                ],
              )),
        ),
      ),
    );
  }
}
