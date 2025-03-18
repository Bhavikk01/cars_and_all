import 'package:cars_and_all/app/routes/app_router.dart';
import 'package:cars_and_all/app/utils/size_utils.dart';
import 'package:cars_and_all/shared/theme/app_theme.dart';
import 'package:cars_and_all/shared/theme/theme_helper.dart';
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
    return Sizer(
      builder: (context,orientation,screenType) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routeInformationParser: widget.router.router.routeInformationParser,
          routerDelegate: widget.router.router.routerDelegate,
          routeInformationProvider: widget.router.router.routeInformationProvider,
          theme: theme,
          // darkTheme: AppThemes.themeDark,
          themeMode: ThemeMode.light,
          // theme: ThemeData( useMaterial3: true),
        );
      }
    );
  }
}
