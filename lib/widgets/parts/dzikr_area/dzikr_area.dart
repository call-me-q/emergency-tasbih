import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zikr/bloc/cubits/counter.dart';

part './counter_text.dart';

class DzikrArea extends StatelessWidget {
  const DzikrArea({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
            ],
          )),
    );
  }
}
