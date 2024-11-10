part of 'setting_sheet.dart';

class AppBar extends StatelessWidget {
  final bool isMinimized;
  const AppBar({super.key, required this.isMinimized});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Text(
        isMinimized ? 'Drag to close settings' : 'Drag to open settings',
        style: TextStyle(
            color: isMinimized ? Colors.white : Colors.white38, fontSize: 20),
      ),
      primary: false,
      pinned: true,
      backgroundColor: Colors.transparent,
      centerTitle: true,
    );
  }
}
