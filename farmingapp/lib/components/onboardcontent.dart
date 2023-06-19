import 'package:flutter/material.dart';

class OnboardContent {
  final String image, title, description;

  OnboardContent(
      {required this.image, required this.title, required this.description,});
}

final List<OnboardContent> onboard_data = [
  OnboardContent(
      image: "assets/svgs/farmOb1.svg",
      title: "Do farming the right way with us",
      description:
          "lorem cat kin is te pase in cip so plate im witsinte fenseen yemun qwesy lemt imfint croppy basee finteder mindert .lorem cat kin is te pase in cip so plate im witsinte fenseen yemun qwesy lemt imfint croppy basee finteder mindert "),
  OnboardContent(
      image: "assets/svgs/farmOb2.svg",
      title: "Gain accurate information on how to increase your crop yield",
      description:
          "lorem cat kin is te pase in cip so plate im witsinte fenseen yemun qwesy lemt imfint croppy basee finteder mindert .lorem cat kin is te pase in cip so plate im witsinte fenseen yemun qwesy lemt imfint croppy basee finteder mindert "),
  OnboardContent(
      image: "assets/svgs/farmOb3.svg",
      title: "Purchase your farm product right here",
      description:
          "lorem cat kin is te pase in cip so plate im witsinte fenseen yemun qwesy lemt imfint croppy basee finteder mindert .lorem cat kin is te pase in cip so plate im witsinte fenseen yemun qwesy lemt imfint croppy basee finteder mindert "),
];

class DotIndicator extends StatelessWidget {
  const DotIndicator({super.key, this.isActive = false});

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      width: 30,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 3),
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(12),
           color: isActive ?  Colors.grey :  Colors.green),
    );
  }
}


