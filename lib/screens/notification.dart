import 'package:flutter/material.dart';
import 'package:gamma/common%20widgets/widgets.dart';
import 'package:gamma/screens/home.dart';
import 'package:gamma/screens/profile.dart';
import 'package:gamma/screens/tranding.dart';

import '../Constant.dart';

class Bell extends StatefulWidget {
  const Bell({Key? key}) : super(key: key);

  @override
  State<Bell> createState() => _BellState();
}

class _BellState extends State<Bell> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primarycolor,
      appBar: AppBar(
        title: const Text('Notification'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
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
                            builder: (BuildContext context) => const Home()));
                  },
                  icon: Icon(
                    Icons.home_filled,
                    size: 34,
                    color: ff,
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
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications,
                    color: secondarycolor,
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 16),
          child: ListView(
            padding: const EdgeInsets.only(top: 0),
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Note(
                    image: 'images/price.png',
                    name: 'Price Alert',
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Note(
                    image: 'images/news.png',
                    name: 'Breaking news',
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Note(
                    image: 'images/price.png',
                    name: 'Price Alert',
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Note(
                    image: 'images/news.png',
                    name: 'Breaking news',
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Note(
                    image: 'images/price.png',
                    name: 'Price Alert',
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Note(
                    image: 'images/news.png',
                    name: 'Breaking news',
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Note(
                    image: 'images/price.png',
                    name: 'Price Alert',
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Note(
                    image: 'images/news.png',
                    name: 'Breaking news',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
