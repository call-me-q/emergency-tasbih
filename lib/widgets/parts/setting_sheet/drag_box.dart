part of 'setting_sheet.dart';

class DragBox extends StatelessWidget {
  final bool isMinimized;

  const DragBox({super.key, required this.isMinimized});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: isMinimized ? Colors.white70 : Colors.white24,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          height: 4,
          width: 40,
          margin: const EdgeInsets.symmetric(vertical: 8),
        ),
      ),
    );
  }
}
