import 'package:flutter/material.dart';
import 'package:social_app_ui_kit/constants.dart';
import 'package:social_app_ui_kit/screens/log_reg_home/log_reg_home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Social App UI Kit',
      theme: ThemeData(
        fontFamily: 'Montserrat',
        scaffoldBackgroundColor: AppConsts.appBlackColor,
        primarySwatch: Colors.red,
      ),
      home: const LogRegHomeScreen(),
    );
  }
}
