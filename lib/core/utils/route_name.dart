import 'package:fitnessworld/features/comprehensive_fitness_assessment_screen/presentation/screen/screen_one.dart';
import 'package:fitnessworld/features/comprehensive_fitness_assessment_screen/presentation/screen/screen_two.dart';
import 'package:fitnessworld/features/sing_in_sign_up_screen/presentation/screen/reset_password_page.dart';
import 'package:fitnessworld/features/sing_in_sign_up_screen/presentation/screen/sign_in_page.dart';
import 'package:fitnessworld/features/sing_in_sign_up_screen/presentation/screen/sign_up_page.dart';
import 'package:fitnessworld/features/splash_screen/presentation/screen/splash_screen_four.dart';
import 'package:fitnessworld/features/splash_screen/presentation/screen/splash_screen_one.dart';
import 'package:fitnessworld/features/splash_screen/presentation/screen/splash_screen_three.dart';
import 'package:fitnessworld/features/splash_screen/presentation/screen/splash_screen_two.dart';
import 'package:fitnessworld/features/welcome_screen/presentation/screen/welcome_screen_five.dart';
import 'package:fitnessworld/features/welcome_screen/presentation/screen/welcome_screen_four.dart';
import 'package:fitnessworld/features/welcome_screen/presentation/screen/welcome_screen_one.dart';
import 'package:fitnessworld/features/welcome_screen/presentation/screen/welcome_screen_six.dart';
import 'package:fitnessworld/features/welcome_screen/presentation/screen/welcome_screen_three.dart';
import 'package:fitnessworld/features/welcome_screen/presentation/screen/welcome_screen_two.dart';
import 'package:flutter/material.dart';

import '../../features/comprehensive_fitness_assessment_screen/presentation/screen/screen_three.dart';
import '../../features/sing_in_sign_up_screen/presentation/screen/password_sent_screen.dart';

class RouteHelper{
  static String onBoardingScreenOne="/";
  static String onBoardingScreenTwo="/splashScreen_Two";
  static String splashScreenThree="/splashScreen_Three";
  static String splashScreenFour="/splashScreen_four";
  static String welcomeScreenOne="/welcomeScreen_One";
  static String welcomeScreenTwo="/welcomeScreen_Two";
  static String welcomeScreenThree="/welcomeScreen_Three";
  static String welcomeScreenFour="/welcomeScreen_Four";
  static String welcomeScreenFive="/welcomeScreen_Five";
  static String welcomeScreenSix="/welcomeScreen_Sive";
  static String signInPage="/signInPage";
  static String signUpPage="/signUpPage";
  static String resetPasswordPage="/reset_passwordPage";
  static String passwordSentScreen="/password_SentScreen";
  static String screenOne="/screenOne";
  static String screenTwo="/ScreenTwo";
  static String screenThree="/ScreenThree";







  static Map<String,WidgetBuilder>getRoute(){
return{
  RouteHelper.onBoardingScreenOne:(context)=>const SplashScreenOne(),
  RouteHelper.onBoardingScreenTwo:(context)=>const SplashScreenTwo(),
  RouteHelper.splashScreenThree:(context)=>const SplashScreenThree(),
  RouteHelper.splashScreenFour:(context)=>const SplashScreenFour(),
  RouteHelper.welcomeScreenOne:(context)=>const WelcomeScreenOne(),
  RouteHelper.welcomeScreenTwo:(context)=>const WelcomeScreenTwo(),
  RouteHelper.welcomeScreenThree:(context)=>const WelcomeScreenThree(),
  RouteHelper.welcomeScreenFour:(context)=>const WelcomeScreenFour(),
  RouteHelper.welcomeScreenFive:(context)=>const WelcomeScreenFive(),
  RouteHelper.welcomeScreenSix:(context)=>const WelcomeScreenSix(),
  RouteHelper.signInPage:(context)=>const SignInPage(),
  RouteHelper.signUpPage:(context)=>const SignUpPage(),
  RouteHelper.resetPasswordPage:(context)=>const ResetPasswordPage(),
  RouteHelper.passwordSentScreen:(context)=>const PasswordSentScreen(),
  RouteHelper.screenOne:(context)=>const ScreenOne(),
  RouteHelper.screenTwo:(context)=>const ScreenTwo(),
  RouteHelper.screenThree:(context)=>const ScreenThree(),


};
  }
}