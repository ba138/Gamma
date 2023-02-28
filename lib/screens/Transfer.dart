import 'package:flutter/material.dart';
import 'package:gamma/Constant.dart';
import 'package:gamma/common%20widgets/widgets.dart';
import 'package:gamma/screens/notification.dart';

class Transfer extends StatefulWidget {
  const Transfer({Key? key}) : super(key: key);

  @override
  State<Transfer> createState() => _TransferState();
}

class _TransferState extends State<Transfer> {
  String dropdownValue = 'Thorium';
  String dropdownValue1 = 'Thorium';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transfer'),
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
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 0),
        child: ListView(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                option('From'),
                const SizedBox(
                  height: 20,
                ),
                Container(
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
                      value: dropdownValue1,
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: ff,
                        size: 24,
                      ),
                      elevation: 16,
                      onChanged: (String? newvalue) {
                        setState(() {
                          dropdownValue1 = newvalue!;
                        });
                      },
                      items: <String>[
                        'Thorium',
                        'Bitcoin',
                        'Helium',
                        'Chalks',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem(
                            value: value, child: Text(value));
                      }).toList(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                option('To'),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
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
                          'Thorium',
                          'Bitcoin',
                          'Helium',
                          'Chalks',
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
                option('Amount'),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 13.5,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: containercol,
                      border: Border.all(color: ff, width: 1)),
                  child: Center(
                    child: TextField(
                        style: TextStyle(
                          color: ff,
                        ),
                        onChanged: (value) {
                          //Do something with the user input.
                        },
                        decoration: Input('Enter your amount')),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                option('Exchange'),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 10,
                      width: MediaQuery.of(context).size.width / 1.5,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                        color: containercol,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Write('0.0143', ff, 16, 'Inter'),
                            Write('0.55554', secondarycolor, 16, 'Inter'),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 10,
                      width: 88,
                      decoration: BoxDecoration(
                          color: secondarycolor,
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          )),
                      child: Center(
                        child: Write('BTC', ff, 20, 'Inter'),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 120,
                ),
                CostomButton(
                  fun: () {},
                  buttoninfo: 'Exchange',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
