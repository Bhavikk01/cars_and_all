import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app/app.dart';
import 'app/routes/app_router.dart';
import 'app/data/dl_container.dart' as di;


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final AppRouter router = AppRouter();
  await di.init();
  runApp(
    ProviderScope(
      child: App(
        router: router,
      ),
    ),
  );
}
