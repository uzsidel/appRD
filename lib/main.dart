import 'package:flutter/material.dart';
import 'package:fl_components/theme/app_theme.dart';
import 'package:fl_components/router/app_routers.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner:
            false, //quita la linea que aparece en el emulador de debug
        title: 'Material App',
        initialRoute: AppRouter.initialRoute,
        routes: AppRouter.getAppRoutes(),
        onGenerateRoute: AppRouter.onGenerateRoute,
        theme: AppTheme.lightTheme);
  }
}
