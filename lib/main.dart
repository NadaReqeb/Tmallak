import 'package:flutter/material.dart';
import 'package:tmallak/login_screen.dart';
import 'package:tmallak/router_helper.dart';
import 'package:tmallak/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
        return Directionality(textDirection: TextDirection.rtl, child: child!);
      },
      theme: ThemeData(
        fontFamily: 'Tajawal',
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      navigatorKey: RouterHelper.routerHelper.routerKey,    );
  }
}
