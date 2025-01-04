import 'dart:io';

import 'package:emergency_tasbih/config.dart';
import 'package:emergency_tasbih/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'android_app.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      return AndroidApp(
        title: config.appName,
        backgroundPrimaryColor: config.backgroundPrimaryColor,
        routerConfig: GoRouter(routes: $appRoutes, initialLocation: '/'),
      );
    }
    return const Placeholder();
  }
}
