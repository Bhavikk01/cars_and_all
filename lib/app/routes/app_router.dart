import 'package:cars_and_all/main.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'app_routes.dart';


class AppRouter {
  GoRouter get router => _router;

  final _router = GoRouter(routes: [
    GoRoute(
        path: AppRoutes.main.path,
        name: AppRoutes.main.name,
        builder: (context, state) => const MyApp(),
        routes: []),
  ]);
}
