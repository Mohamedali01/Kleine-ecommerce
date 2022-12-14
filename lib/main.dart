import 'package:chat/app/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/auth/view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: fontFamily),
      home: SplashScreen(),
    );
  }
}
