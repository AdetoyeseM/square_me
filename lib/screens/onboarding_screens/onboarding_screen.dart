// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:square__me/screens/authentications/auth_selections.dart';
import 'package:square__me/screens/constants/colors.dart';
import 'package:square__me/screens/text_decorations/text_decoration.dart';
import 'package:square__me/screens/widgets/navigations.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Map<String, String>> onboardingData = [
    {
      'image': 'assets/images/pngs/onboarding_1.png',
      'title': 'Fast and easy payments to anyone.',
      'description': 'Receive funds sent to you in seconds.',
    },
    {
      'image': 'assets/images/pngs/onboarding_2.png',
      'title': 'A super secure way to pay your bills',
      'description': 'Pay your bills with the cheapest rates in town.',
    },
    {
      'image': 'assets/images/pngs/onboarding_3.png',
      'title': 'Spend your money easily without any complications',
      'description': '',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: onboardingData.length,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              return OnboardingPage(
                image: onboardingData[index]['image']!,
                title: onboardingData[index]['title']!,
                description: onboardingData[index]['description']!,
              );
            },
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 1.6,
            left: 20.0,
            right: 20.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(
                onboardingData.length,
                (index) => buildIndicator(index),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.6,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(.1),
                    Colors.black.withOpacity(.3),
                    Colors.black.withOpacity(.5),
                    Colors.black.withOpacity(.7),
                    Colors.black.withOpacity(.9),
                    Colors.black,
                  ])),
            ),
          ),
          Positioned(
            bottom: 30,
            left: 20.0,
            right: 20.0,
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              TextButton(
                child: Text(
                  "Skip",
                  style: appTextStyle(color: SquareColors.white),
                ),
                onPressed: () {
                  navigateReplaceToPage(const AuthSelections());
                },
              ),
              const Spacer(),
              ElevatedButton(
                  style: const ButtonStyle(),
                  onPressed: () {
                    _currentPage !=2 ? _pageController.nextPage(duration: const Duration(milliseconds: 600),
                              curve: Curves.easeInOut): navigateReplaceToPage(const AuthSelections());
                  },
                  child: Text(
                    "Next",
                    style:
                        appTextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ))
            ]),
          ),
        ],
      ),
    );
  }

  Widget buildIndicator(int index) {
    return Container(
      width: 101.0 / 3,
      height: 5.0,
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2.5),
        shape: BoxShape.rectangle,
        color: _currentPage == index ? Colors.white : SquareColors.appGrey,
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const OnboardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            image,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 180.0,
            left: 20.0,
            right: 20.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 16.0),
                Text(
                  description,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
