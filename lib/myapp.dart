import 'package:flutter/material.dart';

import 'login_page.dart';

ThemeData _theme() {
  return ThemeData(
    primarySwatch: Colors.pink,
    brightness: Brightness.light,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: _theme(),
        initialRoute: '/',
        routes: {
          '/': (context) => const LoginPage(),
        });
  }
}
