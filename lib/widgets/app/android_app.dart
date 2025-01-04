part of 'app.dart';

class AndroidApp extends StatelessWidget {
  final String title;
  final Color backgroundPrimaryColor;
  final GoRouter routerConfig;

  const AndroidApp(
      {super.key,
      required this.title,
      required this.backgroundPrimaryColor,
      required this.routerConfig});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: title,
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundPrimaryColor,
      ),
      routerConfig: routerConfig,
    );
  }
}
