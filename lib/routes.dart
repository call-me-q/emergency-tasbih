import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:zikr/widgets/pages/home.dart';
import 'package:zikr/widgets/pages/credits.dart';

final List<GoRoute> routes = [
  GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) => const HomePage()),
  GoRoute(
      path: '/credits',
      builder: (BuildContext context, GoRouterState state) =>
          const CreditsPage())
];
