import 'package:farmingapp/Screens/onboardingscreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static String routeName = 'SplashScreen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
     _navigatetoOnboard();
  }

 _navigatetoOnboard() async {
   await Future.delayed(Duration(milliseconds: 10000));
  Navigator.pushNamedAndRemoveUntil(
       context, OnboardScreen.routeName, (route) => false);
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 4, 56, 6) ,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        //  Spacer(),
          Center(
              child: Image.asset(
            'assets/images/splash.png',
          )),
         const SizedBox(height: 50,),
         // const CircularProgressIndicator(
        //    color: Colors.white,
        //  )
        ],
      ),
    );
  }
}
