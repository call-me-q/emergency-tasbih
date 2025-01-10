import 'package:emergency_tasbih/cubits/cubits.dart';
import 'package:emergency_tasbih/widgets/app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory:
          await getApplicationDocumentsDirectory()); // We're not building it for web

  runApp(MultiBlocProvider(providers: provider, child: App()));
}

List<BlocProvider> provider = [
  BlocProvider<SettingsCubit>(
      create: (BuildContext context) => SettingsCubit()),
  BlocProvider<CounterCubit>(create: (BuildContext context) => CounterCubit()),
  BlocProvider<CheckpointCubit>(
      create: (BuildContext context) => CheckpointCubit()),
];
