import 'package:flutter/material.dart';
import 'package:gamma/Constant.dart';

import '../common widgets/widgets.dart';

class Transactions extends StatefulWidget {
  const Transactions({Key? key}) : super(key: key);

  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primarycolor,
      appBar: AppBar(
        elevation: 0,
        title: const Text('Transactions history'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: ListView(
          children: [
            option('Deposit history'),
            const DeHistory(),
            const DeHistory(),
            const DeHistory(),
            const DeHistory(),
            const DeHistory(),
            const SizedBox(
              height: 20,
            ),
            option('Withdraw history'),
            const Draw(),
            const Draw(),
            const Draw(),
            const Draw(),
            const Draw(),
            const Draw(),
            const Draw(),
          ],
        ),
      ),
    );
  }
}
