import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:zikr/bloc/cubits/counter.dart';
import 'package:zikr/gen/strings.g.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zikr/routes.dart';

final providers = [
  BlocProvider(create: (BuildContext context) => CounterCubit())
];

const seedColor = Color.fromARGB(255, 33, 32, 34);

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: providers,
        child: MaterialApp.router(
          locale: TranslationProvider.of(context).flutterLocale, // use provider
          supportedLocales: AppLocaleUtils.supportedLocales,
          localizationsDelegates: GlobalMaterialLocalizations.delegates,
          title: 'Zikr',
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.black,
            colorScheme: ColorScheme.fromSeed(seedColor: seedColor),
            useMaterial3: true,
          ),
          routerConfig: GoRouter(routes: routes, initialLocation: '/'),
        ));
  }
}
