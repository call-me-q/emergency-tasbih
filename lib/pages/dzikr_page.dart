part of 'pages.dart';

class DzikrPage extends StatelessWidget {
  const DzikrPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: DzikrDetector()),
    );
  }
}
