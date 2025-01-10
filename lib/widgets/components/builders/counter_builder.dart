part of '../components.dart';

class CounterBuilder extends StatelessWidget {
  const CounterBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, int>(
      listener: (BuildContext context, int state) {
        if (context.read<SettingsCubit>().state.checkpoint == state) {
          context.read<CounterCubit>().reset();
        }
      },
      listenWhen: (previous, current) => previous != current,
      builder: (BuildContext context, int state) => Text(state.toString()),
    );
  }
}
