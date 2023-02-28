import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gamma/Constant.dart';
import 'package:gamma/firebase/auth.dart';
import 'package:gamma/screens/onboarding.dart';

import '../common widgets/textField.dart';
import '../common widgets/widgets.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _firstController = TextEditingController();
  final TextEditingController _lastController = TextEditingController();
  final TextEditingController _conformController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _passwordController.dispose();
    _emailController.dispose();
    _firstController.dispose();
    _lastController.dispose();
    _conformController.dispose();
    _phoneController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primarycolor,
      body: ListView(padding: const EdgeInsets.only(top: 0), children: [
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Write('First name', ff, 16, 'Inter'),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 56,
                        ),
                        Container(
                            height: MediaQuery.of(context).size.height / 18,
                            width: MediaQuery.of(context).size.width / 2.5,
                            decoration: BoxDecoration(
                              color: containercol,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: TextInputField(
                              textInputType: TextInputType.text,
                              hintText: 'Enter your name',
                              textEditingController: _firstController,
                            )),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Write('Last name', ff, 16, 'Inter'),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 56,
                        ),
                        Container(
                            height: MediaQuery.of(context).size.height / 18,
                            width: MediaQuery.of(context).size.width / 2.5,
                            decoration: BoxDecoration(
                              color: containercol,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: TextInputField(
                              textInputType: TextInputType.text,
                              hintText: 'Enter your name',
                              textEditingController: _lastController,
                            )),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 56,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 18,
                  width: MediaQuery.of(context).size.width / 1,
                  decoration: BoxDecoration(
                    color: containercol,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: TextInputField(
                    textEditingController: _emailController,
                    textInputType: TextInputType.text,
                    hintText: 'Enter Your Email',
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 56,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 18,
                  width: MediaQuery.of(context).size.width / 1,
                  decoration: BoxDecoration(
                    color: containercol,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: TextInputField(
                    textEditingController: _phoneController,
                    textInputType: TextInputType.text,
                    hintText: 'Enter Your Phone Number',
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 56,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 18,
                  width: MediaQuery.of(context).size.width / 1,
                  decoration: BoxDecoration(
                    color: containercol,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: TextInputField(
                    textEditingController: _passwordController,
                    textInputType: TextInputType.text,
                    hintText: 'Enter Your password',
                    isPass: true,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 56,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 18,
                  width: MediaQuery.of(context).size.width / 1,
                  decoration: BoxDecoration(
                    color: containercol,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: TextInputField(
                    textEditingController: _conformController,
                    textInputType: TextInputType.text,
                    hintText: 'Conform your password',
                    isPass: true,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 36,
                ),
                InkWell(
                  onTap: () async {
                    String res = await AuthMethod().signUpUser(
                        phoneNumber: _phoneController.text,
                        email: _emailController.text,
                        first: _firstController.text,
                        second: _lastController.text,
                        conform: _conformController.text,
                        password: _passwordController.text);
                    if (kDebugMode) {
                      print(res);
                    }
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height / 18,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: secondarycolor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Write('Continue', Colors.white, 12, 'Poppins'),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 56,
                ),
                const Line(),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 25,
                ),
                Center(
                  child: Write('Continue with', ff, 14, 'Inter'),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                Decetion(
                    title: 'Google', image: 'images/google.png', press: () {}),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                Decetion(
                    title: 'Facebook',
                    image: 'images/facebook.png',
                    press: () {}),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
