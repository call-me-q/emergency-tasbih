part of 'setting_sheet.dart';

class AppBar extends StatelessWidget {
  const AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
      title: Text('My App'),
      primary: false,
      pinned: true,
      centerTitle: false,
    );
  }
}
