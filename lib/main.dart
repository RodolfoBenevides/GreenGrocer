import 'package:flutter/material.dart';
import 'package:greengrocer/src/pages/auth/register_page.dart';

import 'src/pages/auth/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.white70,
      ),
      home: const SingInPage(),
      routes: {
        "/register": (context) => RegisterPage(),
      },
    );
  }
}
