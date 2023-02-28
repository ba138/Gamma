import 'package:flutter/material.dart';
import 'package:gamma/Constant.dart';
import 'package:animate_do/animate_do.dart';

class Done extends StatelessWidget {
  Done({required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primarycolor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 3,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: containercol,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 80,
                        ),
                        Write(title, ff, 16, 'Inter'),
                        // Write('', ff, 16, 'Inter'),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: secondarycolor),
                          child: MaterialButton(
                            elevation: 0.0,
                            height: 46,
                            onPressed: () {},
                            child: Write('Done', ff, 14, 'Inter'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 110,
                    child: FadeInLeft(
                      duration: const Duration(milliseconds: 600),
                      child: Container(
                        height: 100,
                        width: 94,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/thum.png'))),
                      ),
                    ),
                  ),
                  // FadeInDownBig(
                  //   duration: const Duration(milliseconds: 600),
                  //   child: const Image(
                  //     image: AssetImage('images/slideman.png'),
                  //   ),
                  // ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
