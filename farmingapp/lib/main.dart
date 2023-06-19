import 'package:farmingapp/components/routes.dart';
import 'package:flutter/material.dart';

import 'Screens/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Farming App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: const Color.fromARGB(255, 14, 112, 17)
      ),
      initialRoute: SplashScreen.routeName,
      routes: routes,
       );
    
  }
}



