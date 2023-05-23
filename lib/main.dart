import 'dart:async';
import 'package:flutter/material.dart';
import 'package:program_valve/core/app/app.router.dart';
import 'package:program_valve/init_app.dart';
import 'package:stacked_services/stacked_services.dart';

void main() {
  runZonedGuarded<Future<void>>(() async {
    await initApp();
    runApp(const MyApp());
  }, (Object error, StackTrace stackTrace) {});
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Program Valve',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
    );
  }
}
