import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gamma/Constant.dart';
import 'package:gamma/screens/home.dart';

import '../common widgets/widgets.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primarycolor,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 6,
          ),
          Container(
            height: 262.79,
            width: 450,
            child: Stack(
              children: [
                FadeInDownBig(
                  duration: const Duration(milliseconds: 600),
                  child: const Image(
                    image: AssetImage('images/slideman.png'),
                  ),
                ),
                Positioned(
                  left: 90,
                  top: 22,
                  height: 52,
                  width: 190,
                  child: FadeInUp(
                    child: FadeIn(
                        duration: const Duration(milliseconds: 200),
                        child: Images(imo: 'images/slide1.png')),
                  ),
                ),
                const SizedBox(
                  height: 38,
                ),
                Positioned(
                    left: 150,
                    top: 120,
                    height: 52,
                    width: 190,
                    child: FadeInRight(
                        duration: const Duration(milliseconds: 400),
                        child: Images(imo: ('images/slide2.png')))),
                const SizedBox(
                  height: 36,
                ),
                Positioned(
                  left: 85,
                  top: 200,
                  height: 52,
                  width: 190,
                  child: FadeInLeft(
                      duration: const Duration(milliseconds: 400),
                      child: Images(imo: 'images/slide3.png')),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 30,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Write('Crypto', ff, 20, 'Inter'),
              DefaultTextStyle(
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Inter',
                  color: ff,
                ),
                child: AnimatedTextKit(
                  animatedTexts: [
                    WavyAnimatedText(' currency',
                        speed: const Duration(milliseconds: 200)),
                    WavyAnimatedText(' Trading',
                        speed: const Duration(milliseconds: 200)),
                  ],
                  isRepeatingAnimation: false,
                  onTap: () {
                    if (kDebugMode) {
                      print("Tap Event");
                    }
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 30,
          ),
          Write('crypto, is any form of currency that,', ff, 16, 'Inter'),
          Write(' exists digitally or virtually and uses,', ff, 16, 'Inter'),
          Write('cryptography to secure transactions.', ff, 16, 'Inter'),
          SizedBox(
            height: MediaQuery.of(context).size.height / 8,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: CostomButton(
              fun: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Home()));
              },
              buttoninfo: 'Get started',
            ),
          ),
        ],
      ),
    );
  }
}

class Images extends StatelessWidget {
  Images({required this.imo});
  final String imo;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(imo),
      )),
    );
  }
}
