import 'package:flutter/material.dart';
import 'package:zikr/bloc/cubits/counter.dart';
import 'package:zikr/pages/home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        child: MaterialApp(
          title: 'Zikr',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: seedColor),
            useMaterial3: true,
          ),
          home: const HomePage(),
        ));
  }
}
