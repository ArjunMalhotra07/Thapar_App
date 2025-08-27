import 'package:flutter/material.dart';
import 'package:thaparapp/injector.dart';
import 'package:thaparapp/routing/routing.dart';

void main() {
  init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: Routing.router,
    );
  }
}
