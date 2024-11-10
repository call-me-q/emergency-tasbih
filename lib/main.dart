import 'package:condora_automatic_getter_storage_directory/condora_automatic_getter_storage_directory.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:zikr/app.dart';
import 'package:zikr/gen/strings.g.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized(); // add this
  LocaleSettings.useDeviceLocale();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await condoraAutomaticGetterStorageDirectory(
      webStorageDirectory: HydratedStorage.webStorageDirectory,
    ),
  );
  runApp(TranslationProvider(child: const App()));
}
