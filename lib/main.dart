import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app/app.dart';
import 'app/routes/app_router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final AppRouter router = AppRouter();
  runApp(
    ProviderScope(
      child: App(
        router: router,
      ),
    ),
  );
}
