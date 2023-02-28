import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:gamma/Constant.dart';
import 'package:gamma/common%20widgets/textField.dart';
import 'package:gamma/screens/finger.dart';
import 'package:gamma/screens/onboarding.dart';
import 'package:gamma/screens/registeration.dart';

import '../common widgets/widgets.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  late final String password;
  late final String email;
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primarycolor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: ListView(padding: const EdgeInsets.only(top: 0.0), children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 56,
                ),
                Center(child: Write('Gamma', secondarycolor, 20.0, 'Inter')),
                SizedBox(
                  height: MediaQuery.of(context).size.width / 8,
                ),
                Center(
                  child: Write('Please create your new account', Colors.white,
                      18.0, 'Inter'),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 16),
                Write('Phone Number', Colors.white, 16, 'Inter'),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 56,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height / 18,
                          width: MediaQuery.of(context).size.width / 4,
                          decoration: BoxDecoration(
                            color: containercol,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: CountryListPick(
                              appBar: AppBar(
                                backgroundColor: Colors.blue,
                                title: const Text('Select your country code'),
                              ),
                              theme: CountryTheme(
                                isShowFlag: false,
                                isShowTitle: false,
                                isShowCode: true,
                                isDownIcon: true,
                                showEnglishName: true,
                              ),
                              initialSelection: '+92',
                              useUiOverlay: true,
                              useSafeArea: true),
                        ),
                      ],
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 18,
                      width: MediaQuery.of(context).size.width / 1.6,
                      decoration: BoxDecoration(
                        color: containercol,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: TextInputField(
                        textEditingController: _emailController,
                        textInputType: TextInputType.text,
                        hintText: 'Enter Your Email',
                        isPass: true,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 56,
                ),
                Write('Password', ff, 16, 'Inter'),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 56,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 18,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: containercol,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: TextInputField(
                    textEditingController: _passwordController,
                    textInputType: TextInputType.text,
                    hintText: 'Enter You password',
                    isPass: true,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 65,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                        onTap: () {},
                        child: Write('Forget Password?', ff, 14, 'Inter')),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                CostomButton(
                  fun: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const Onboarding()));
                  },
                  buttoninfo: 'Continue',
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 56,
                ),
                const Line(),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 25,
                ),
                Center(child: Write('Continue with', ff, 14, 'Inter')),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                Decetion(
                    title: 'Set Face Detection',
                    image: 'images/Ellipse 8.png',
                    press: () {}),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                Decetion(
                    title: 'Set Finger print',
                    image: 'images/finger.png',
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const Fingerprint()));
                    }),
                const SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Write('Don’t have an account ?', ff, 16, 'Inter'),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const Register()));
                        },
                        child: Write('Sigin', secondarycolor, 18, 'Inter')),
                  ],
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
