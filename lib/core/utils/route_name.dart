import 'package:fitnessworld/features/comprehensive_fitness_assessment_screen/presentation/screen/screen_eight.dart';
import 'package:fitnessworld/features/comprehensive_fitness_assessment_screen/presentation/screen/screen_eighteen.dart';
import 'package:fitnessworld/features/comprehensive_fitness_assessment_screen/presentation/screen/screen_eleven.dart';
import 'package:fitnessworld/features/comprehensive_fitness_assessment_screen/presentation/screen/screen_fifteen.dart';
import 'package:fitnessworld/features/comprehensive_fitness_assessment_screen/presentation/screen/screen_five.dart';
import 'package:fitnessworld/features/comprehensive_fitness_assessment_screen/presentation/screen/screen_four.dart';
import 'package:fitnessworld/features/comprehensive_fitness_assessment_screen/presentation/screen/screen_fourteen.dart';
import 'package:fitnessworld/features/comprehensive_fitness_assessment_screen/presentation/screen/screen_nine.dart';
import 'package:fitnessworld/features/comprehensive_fitness_assessment_screen/presentation/screen/screen_one.dart';
import 'package:fitnessworld/features/comprehensive_fitness_assessment_screen/presentation/screen/screen_seven.dart';
import 'package:fitnessworld/features/comprehensive_fitness_assessment_screen/presentation/screen/screen_seventeen.dart';
import 'package:fitnessworld/features/comprehensive_fitness_assessment_screen/presentation/screen/screen_six.dart';
import 'package:fitnessworld/features/comprehensive_fitness_assessment_screen/presentation/screen/screen_sixteen.dart';
import 'package:fitnessworld/features/comprehensive_fitness_assessment_screen/presentation/screen/screen_ten.dart';
import 'package:fitnessworld/features/comprehensive_fitness_assessment_screen/presentation/screen/screen_thirteen.dart';
import 'package:fitnessworld/features/comprehensive_fitness_assessment_screen/presentation/screen/screen_three.dart';
import 'package:fitnessworld/features/comprehensive_fitness_assessment_screen/presentation/screen/screen_twelve.dart';
import 'package:fitnessworld/features/comprehensive_fitness_assessment_screen/presentation/screen/screen_two.dart';
import 'package:fitnessworld/features/profile_setting_help_center_screen/presentation/screen/profile_screen_four.dart';
import 'package:fitnessworld/features/profile_setting_help_center_screen/presentation/screen/profile_screen_one.dart';
import 'package:fitnessworld/features/profile_setting_help_center_screen/presentation/screen/profile_screen_three.dart';
import 'package:fitnessworld/features/profile_setting_help_center_screen/presentation/screen/profile_screen_two.dart';
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
  static String screenFour="/ScreenFour";
  static String screenFive="/ScreenFive";
  static String screenSix="/ScreenSix";
  static String screenSeven="/ScreenSeven";
  static String screenEight="/ScreenEight";
  static String screenNine="/ScreenNine";
  static String screenTen="/ScreenTen";
  static String screenEleven="/ScreenEleven";
  static String screenTwelve="/ScreenTwelve";
  static String screenThirteen="/ScreenThirteen";
  static String screenFourteen="/ScreenFourteen";
  static String screenFifteen="/ScreenFifteen";
  static String screenSeventeen="/ScreenSeventeen";
  static String screenSixteen="/ScreenSixteen";
  static String screenEighteen="/ScreenEighteen";
  static String profileScreenOne="/ProfileScreenOne";
  static String profileScreenTwo="/ProfileScreenTwo";
  static String profileScreenThree="/ProfileScreenThree";
  static String profileScreenFour="/ProfileScreenFour";







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
  RouteHelper.screenThree:(context)=> const ScreenThree(),
  RouteHelper.screenFour:(context)=> const ScreenFour(),
  RouteHelper.screenFive:(context)=> const ScreenFive(),
  RouteHelper.screenSix:(context)=> const ScreenSix(),
  RouteHelper.screenSeven:(context)=> const ScreenSeven(),
  RouteHelper.screenEight:(context)=> const ScreenEight(),
  RouteHelper.screenNine:(context)=>  const ScreenNine(),
  RouteHelper.screenTen:(context)=>  const ScreenTen(),
  RouteHelper.screenEleven:(context)=>  const ScreenEleven(),
  RouteHelper.screenTwelve:(context)=>  const ScreenTwelve(),
  RouteHelper.screenThirteen:(context)=>  const ScreenThirteen(),
  RouteHelper.screenFourteen:(context)=>  const ScreenFourteen(),
  RouteHelper.screenFifteen:(context)=>  const ScreenFifteen(),
  RouteHelper.screenSeventeen:(context)=>  const ScreenSeventeen(),
  RouteHelper.screenSixteen:(context)=>  const ScreenSixteen(),
  RouteHelper.screenEighteen:(context)=>   const ScreenEighteen(),
  RouteHelper.profileScreenOne:(context)=>   const ProfileScreenOne(),
  RouteHelper.profileScreenTwo:(context)=>   const ProfileScreenTwo(),
  RouteHelper.profileScreenThree:(context)=>   const ProfileScreenThree(),
  RouteHelper.profileScreenFour:(context)=>   const ProfileScreenFour(),


};
  }
}