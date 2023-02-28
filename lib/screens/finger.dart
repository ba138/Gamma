import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gamma/Constant.dart';
import 'package:gamma/screens/login.dart';
import 'package:gamma/screens/onboarding.dart';

import '../common widgets/widgets.dart';

class Fingerprint extends StatefulWidget {
  const Fingerprint({Key? key}) : super(key: key);

  @override
  State<Fingerprint> createState() => _FingerprintState();
}

class _FingerprintState extends State<Fingerprint>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this, duration: const Duration(seconds: 5), upperBound: 100);
    animation = CurvedAnimation(parent: controller, curve: Curves.decelerate);
    controller.forward();
    controller.addListener(() {
      setState(() {
        if (kDebugMode) {
          print(controller.value);
        }
      });
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primarycolor,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const Login()));
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: ff,
                    )),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 4,
                ),
                Write('Finger Scan', ff, 20, 'Inter'),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 10,
            ),
            Write('Place Your Finger', ff, 18, 'Inter'),
            SizedBox(
              height: MediaQuery.of(context).size.height / 46,
            ),
            Write('please use your fingerprint for verification', ff, 14,
                'Inter'),
            SizedBox(
              height: MediaQuery.of(context).size.height / 18,
            ),
            Container(
              height: 223,
              width: 223,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('images/finger.png'),
                fit: BoxFit.cover,
              )),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 18,
            ),
            Write('${controller.value.toInt()}%', ff, 24, 'Inter'),
            SizedBox(
              height: MediaQuery.of(context).size.height / 46,
            ),
            Write('scan source', ff, 12, 'Inter'),
            SizedBox(
              height: MediaQuery.of(context).size.height / 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: CostomButton(
                fun: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const Onboarding()));
                },
                buttoninfo: 'Continue',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
