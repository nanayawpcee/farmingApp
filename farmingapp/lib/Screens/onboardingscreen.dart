//import 'package:elearningapp/Screens/SignUp/signupscreen.dart';
//import 'package:elearningapp/components/onboardContent.dart';
//import 'package:elearningapp/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../components/onboardcontent.dart';

class OnboardScreen extends StatefulWidget {
  static String routeName = 'OnboardScreen';

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  late PageController _pageController;

  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _navigateToSignUpPage() {
    if (_pageIndex < onboard_data.length - 1) {
      // Navigate to the next page
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    } else {
      //Navigator.pushNamedAndRemoveUntil(
      //  context, SignUpScreen.routeName, (route) => false);
      //
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 40,
                      width: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.green),
                          color: Colors.white),
                      child: const Center(
                        child: Text(
                          "Skip",
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            letterSpacing: 2.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _pageIndex = index;
                    });
                  },
                  itemCount: onboard_data.length,
                  itemBuilder: (context, index) => Onboard(
                    image: onboard_data[index].image,
                    title: onboard_data[index].title,
                    description: onboard_data[index].description,
                    pageIndex: _pageIndex,
                  ),
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                ...List.generate(
                    onboard_data.length,
                    (index) => const Padding(
                          padding: EdgeInsets.all(8),
                          child: DotIndicator(),
                        ))
              ]),
              const SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _pageIndex == 0
                      ?  Container():
                      Container(
                          height: 40,
                          width: 172,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color.fromARGB(255, 214, 211, 211)),
                          child: const Center(
                            child: Text(
                              "Back",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey),
                            ),
                          ),
                        ),
                     
                  SizedBox(
                    height: 40,
                    width: 172,
                    child: GestureDetector(
                      onTap: _navigateToSignUpPage,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.green),
                        child: Center(
                          child: Text(
                            _pageIndex < onboard_data.length - 1
                                ? "Next"
                                : "Get Started",
                            style: const TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          )),
    ));
  }
}

class Onboard extends StatelessWidget {
  const Onboard({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.pageIndex,
  });

  final String image, title, description;
  final int pageIndex;

  @override
  Widget build(BuildContext context) {
    // final int pageCount = onboard_data.length;
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(12.0),
        ),
        // const Spacer(),
        const SizedBox(
          height: 60,
        ),
        SvgPicture.asset(
          image,
          height: 200,
        ),
        SizedBox(
          height: 40,
        ),
        Text(
          title,
          style: const TextStyle(
              color: Colors.green, fontSize: 28, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          description,
          style: Theme.of(context).copyWith().textTheme.bodyLarge,
          textAlign: TextAlign.justify,
        ),
      ],
    );
  }
}
