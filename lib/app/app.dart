import 'package:cars_and_all/app/routes/app_router.dart';
import 'package:cars_and_all/app/routes/app_routes.dart';
import 'package:cars_and_all/app/utils/size_utils.dart';
import 'package:cars_and_all/shared/theme/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';

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
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          getPages: AppRouter.router,
          initialRoute: AppRoutes.homeNav,
          theme: theme,
          // darkTheme: AppThemes.themeDark,
          themeMode: ThemeMode.light,
        );
      }
    );
  }
}
