import 'package:flutter/material.dart';

import '../Constant.dart';
import '../common widgets/widgets.dart';
import 'done.dart';

class DebaitCard extends StatefulWidget {
  const DebaitCard({Key? key}) : super(key: key);

  @override
  State<DebaitCard> createState() => _DebaitCardState();
}

class _DebaitCardState extends State<DebaitCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primarycolor,
      appBar: AppBar(
        title: const Text('Card Detail'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Write('Add Debit & Credit Card Details', ff, 20, 'Inter'),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                option('Card Holder Name'),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 14,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: containercol,
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: ff, width: 1)),
                  child: Center(
                    child: TextField(
                      style: TextStyle(fontSize: 14, color: ff),
                      onChanged: (value) {},
                      decoration: Input('Enter your name'),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                option('Card Number'),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 14,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: containercol,
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: ff, width: 1)),
                  child: Center(
                    child: TextField(
                      style: TextStyle(fontSize: 14, color: ff),
                      onChanged: (value) {},
                      decoration: Input('Enter card number'),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        option('Expiries'),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 40,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 14,
                          width: MediaQuery.of(context).size.width / 2.5,
                          decoration: BoxDecoration(
                              color: containercol,
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(color: ff, width: 1)),
                          child: Center(
                            child: TextField(
                              style: TextStyle(fontSize: 14, color: ff),
                              onChanged: (value) {},
                              decoration: Input('04-April-2022'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        option('CVV'),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 40,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 14,
                          width: MediaQuery.of(context).size.width / 2.5,
                          decoration: BoxDecoration(
                              color: containercol,
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(color: ff, width: 1)),
                          child: Center(
                            child: TextField(
                              style: TextStyle(fontSize: 14, color: ff),
                              onChanged: (value) {},
                              decoration: Input('1234'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 15,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: MediaQuery.of(context).size.height / 14,
                      width: MediaQuery.of(context).size.width / 2.5,
                      decoration: BoxDecoration(
                          color: containercol,
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: ff, width: 1)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.qr_code_scanner,
                            color: ff,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Write('Scan', ff, 16, 'Inter'),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 15,
                ),
                CostomButton(
                  fun: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Done(
                                  title:
                                      'Thanks, you have successfully deposite',
                                )));
                  },
                  buttoninfo: 'Continue',
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
