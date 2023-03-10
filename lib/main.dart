import 'package:flutter/material.dart';
import 'package:heridas_yadi/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Heridas',
      initialRoute: "login",
      routes: appRoutes,
    );
  }
}
