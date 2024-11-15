part of 'dzikr_area.dart';

class CounterTextWidget extends StatelessWidget {
  const CounterTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, int>(
      listener: (BuildContext context, int state) {},
      builder: (BuildContext context, int state) => Text(
        state.toString(),
        style: const TextStyle(
            fontSize: 120, color: Colors.white, fontWeight: FontWeight.w500),
      ),
    );
  }
}
