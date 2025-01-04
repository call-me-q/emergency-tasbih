part of '../components.dart';

class DzikrDetector extends StatelessWidget {
  const DzikrDetector({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {},
      behavior: HitTestBehavior.opaque,
      child: BlocBuilder(builder: builder),
    );
  }
}
