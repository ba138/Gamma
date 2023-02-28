import 'package:flutter/material.dart';
import 'package:gamma/Constant.dart';
import 'package:gamma/common%20widgets/widgets.dart';
import 'package:gamma/screens/done.dart';

import 'notification.dart';

class WithDraw extends StatefulWidget {
  const WithDraw({Key? key}) : super(key: key);

  @override
  State<WithDraw> createState() => _WithDrawState();
}

class _WithDrawState extends State<WithDraw> {
  String dropdownValue = 'Ethereum';
  late int number;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WithDraw'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => const Bell()));
              },
              icon: const Icon(Icons.notifications_active))
        ],
      ),
      backgroundColor: primarycolor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: ListView(
          padding: const EdgeInsets.only(top: 0.0),
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 5,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: containercol,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Write('Available balance', ff, 16, 'Inter'),
                      Write('\$7,803.4 USD', ff, 24, 'Inter'),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                option('WithDraw'),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    // margin: const EdgeInsets.all(24),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: ff,
                        width: 1,
                      ),
                      color: containercol,
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        isExpanded: true,
                        dropdownColor: primarycolor,
                        style: TextStyle(
                          color: ff,
                        ),
                        value: dropdownValue,
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: ff,
                          size: 24,
                        ),
                        elevation: 16,
                        onChanged: (String? newvalue) {
                          setState(() {
                            dropdownValue = newvalue!;
                          });
                        },
                        items: <String>[
                          'Ethereum',
                          'Bitcoin',
                          'Helium',
                          'Chalas'
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem(
                              value: value, child: Text(value));
                        }).toList(),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                option('How Much?'),
                const SizedBox(
                  height: 20,
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
                      decoration: Input('Enter amount'),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                option('Password'),
                const SizedBox(
                  height: 20,
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
                      decoration: Input('Enter your password'),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                CostomButton(
                    fun: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => Done(
                                    title:
                                        'You have successfully Withdraw your cash',
                                  )));
                    },
                    buttoninfo: 'WithDraw')
              ],
            ),
          ],
        ),
      )),
    );
  }
}
