import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:fitnessworld/features/splash_screen/presentation/screen/splash_screen_one.dart';
import 'package:fitnessworld/features/workout_training_screen/presentation/screen/workout_traning_page_two.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Fitness World",
      initialRoute: RouteHelper.communityPageSeven,
      routes: RouteHelper.getRoute(),
    );
  }
}
