import 'package:flutter/material.dart';
import 'package:flutteryefer/app/view/home/home_page.dart';
import 'package:flutteryefer/app/view/splash/splash_page.dart';
import 'package:flutteryefer/app/view/task/task_list_page.dart';

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    const primary = Color(0XFF40B7AD);
    const textColor = Color(0XFF4A4A4A);
    const backgroundColor = Color(0xFFF5F5F5);
    return MaterialApp(
      title: 'Fluter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: primary),
        scaffoldBackgroundColor: backgroundColor,
        textTheme: Theme.of(context).textTheme.apply(
          fontFamily: 'Poppins',
          bodyColor: textColor,
          displayColor: textColor,
        ),
        useMaterial3: true,
      ),
      home: SplashPage(),
    );
  }
}