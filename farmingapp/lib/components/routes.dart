import 'package:flutter/cupertino.dart';

import '../Screens/onboardingscreen.dart';
import '../Screens/splashscreen.dart';

Map<String, WidgetBuilder> routes = {

  SplashScreen.routeName :(context) => SplashScreen(),
  OnboardScreen.routeName :(context) => OnboardScreen(),
//  SignUpScreen.routeName :(context) => SignUpScreen()
};
