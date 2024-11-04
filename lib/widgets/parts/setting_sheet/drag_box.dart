part of 'setting_sheet.dart';

class DragBox extends StatelessWidget {
  const DragBox({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).hintColor,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          height: 4,
          width: 40,
          margin: const EdgeInsets.symmetric(vertical: 10),
        ),
      ),
    );
  }
}
