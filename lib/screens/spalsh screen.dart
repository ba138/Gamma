import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:gamma/Constant.dart';
import 'package:gamma/screens/login.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    delay();
  }

  void delay() async {
    await Future.delayed(const Duration(seconds: 7));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const Login()));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primarycolor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 10,
              width: MediaQuery.of(context).size.width / 8,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('images/splash.png'),
              )),
            ),
            Center(
              child: TextLiquidFill(
                boxHeight: MediaQuery.of(context).size.height / 8,
                text: 'Gamma',
                textStyle: const TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 30,
                ),
                waveColor: secondarycolor,
                waveDuration: const Duration(seconds: 4),
                boxBackgroundColor: primarycolor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
