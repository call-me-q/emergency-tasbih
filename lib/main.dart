import 'package:flutter/material.dart';
import 'package:zikr/app.dart';
import 'package:zikr/gen/strings.g.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // add this
  LocaleSettings.useDeviceLocale();
  runApp(TranslationProvider(child: const App()));
}
