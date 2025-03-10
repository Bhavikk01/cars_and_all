import 'package:cars_and_all/app/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class App extends ConsumerStatefulWidget {
  final AppRouter router;

  const App({super.key,required this.router});
  @override
  ConsumerState<App> createState() => _AppState();
}

class _AppState extends ConsumerState<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: widget.router.router.routeInformationParser,
      routerDelegate: widget.router.router.routerDelegate,
      routeInformationProvider: widget.router.router.routeInformationProvider,
      themeMode: ThemeMode.system,
      theme: ThemeData( useMaterial3: true),
    );
  }
}
