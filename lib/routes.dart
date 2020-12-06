import 'package:flutter/widgets.dart';
import 'package:pwmw/main.dart';
import 'package:pwmw/views/introduce_pwmw/introPwmw.dart';
// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
//  SplashScreen.routeName: (context) => SplashScreen(),
//  SignInScreen.routeName: (context) => SignInScreen(),
//  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
//  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
//  SignUpScreen.routeName: (context) => SignUpScreen(),
//  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
//  OtpScreen.routeName: (context) => OtpScreen(),
  MyHomePage.routeName: (context) => MyHomePage(),
  IntroPwmw.routeName: (context) => IntroPwmw()
};
