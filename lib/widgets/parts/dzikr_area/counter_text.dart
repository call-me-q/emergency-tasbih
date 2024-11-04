part of 'dzikr_area.dart';

class CounterTextWidget extends StatelessWidget {
  const CounterTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, int>(
      builder: (context, state) => Text(
        state.toString(),
        style: const TextStyle(fontSize: 96, color: Colors.white),
      ),
    );
  }
}
