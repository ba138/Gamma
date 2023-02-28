import 'package:flutter/material.dart';
import 'package:gamma/Constant.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gamma/screens/Transfer.dart';
import 'package:gamma/screens/deposite.dart';
import 'package:gamma/screens/profile.dart';
import 'notification.dart';
import 'package:gamma/screens/tranding.dart';
import 'package:gamma/screens/withDraw.dart';
import 'history.dart';
import '../common widgets/widgets.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height / 14,
        width: MediaQuery.of(context).size.width,
        color: containercol,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => const Bell()));
                  },
                  icon: Icon(
                    Icons.home_filled,
                    size: 34,
                    color: secondarycolor,
                  )),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const Tranding()));
                  },
                  icon: Icon(
                    Icons.addchart_outlined,
                    color: ff,
                    size: 34,
                  )),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => const Bell()));
                  },
                  icon: Icon(
                    Icons.notifications,
                    color: ff,
                    size: 34,
                  )),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const Profile()));
                  },
                  icon: Icon(
                    Icons.settings,
                    color: ff,
                    size: 34,
                  )),
            ],
          ),
        ),
      ),
      backgroundColor: primarycolor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: ListView(
          padding: const EdgeInsets.only(top: 0),
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const Profile()));
                      },
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            image: const DecorationImage(
                                image: AssetImage('images/girl.jpg'),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Write('Rachael Morio', ff, 16, 'Inter'),
                        const SizedBox(
                          height: 8,
                        ),
                        Write('Welcome to Gamma!', secondarycolor, 16, 'Inter'),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search,
                          color: ff,
                          size: 30,
                        )),
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const Bell()));
                        },
                        icon: Icon(
                          Icons.notifications_active,
                          color: ff,
                          size: 30,
                        )),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 28,
                ),
                Write('Total Balance', ff, 16, 'Inter'),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                Write('7,803.4 USD', secondarycolor, 24, 'Inter'),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MainRow(
                        tap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const Transfer()));
                        },
                        ico: FontAwesomeIcons.moneyBillTransfer,
                        title: 'Transfer'),
                    MainRow(
                        tap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const WithDraw()));
                        },
                        ico: Icons.money,
                        title: 'Withdraw'),
                    MainRow(
                        tap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const Deposite()));
                        },
                        ico: Icons.account_balance_wallet_outlined,
                        title: 'Deposit'),
                    MainRow(
                        tap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (buildContext) =>
                                      const Transactions()));
                        },
                        ico: Icons.history,
                        title: 'History'),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () {},
                        child: Write('My Assets', ff, 18, 'Inter')),
                    GestureDetector(
                        onTap: () {}, child: Write('See all', ff, 12, 'Inter'))
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 38,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BtContainer(
                        image: 'images/Frame 1.png',
                        percentage: '1.76%',
                        btc: '0.7BTC',
                        dollar: '62,300\$'),
                    BtContainer(
                        image: 'images/Frame 1.png',
                        percentage: '1.76%',
                        btc: '0.7BTC',
                        dollar: '62,300\$'),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 36,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Write('News', ff, 18, 'Inter'),
                    Write('Today', ff, 12, 'Inter')
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 36,
                ),
                const News(),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 36,
                ),
                const News(),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 36,
                ),
                const News(),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 36,
                ),
                const News(),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 36,
                ),
                const News(),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 36,
                ),
                const News(),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
