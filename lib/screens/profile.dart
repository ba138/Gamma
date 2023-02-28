import 'package:flutter/material.dart';
import 'package:gamma/Constant.dart';
import 'package:gamma/common%20widgets/widgets.dart';
import 'package:gamma/screens/home.dart';
import 'package:gamma/screens/notification.dart';
import 'package:gamma/screens/tranding.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notifications_active))
        ],
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
                  onPressed: () {},
                  icon: Icon(
                    Icons.settings,
                    color: secondarycolor,
                    size: 34,
                  )),
            ],
          ),
        ),
      ),
      backgroundColor: primarycolor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 9,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: containercol, borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 14),
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        image: const DecorationImage(
                            image: AssetImage('images/girl.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Write('Rachael Morio', ff, 14, 'Inter'),
                        Write('rachaelmorio666@gmail.com', secondarycolor, 12,
                            'Inter'),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.edit,
                        color: ff,
                      ))
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 46,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 2.7,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: containercol,
              ),
              child: Padding(
                  padding: const EdgeInsets.only(
                      left: 8, right: 8, top: 20, bottom: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Detail(
                        data: Icons.history,
                        name: 'History',
                        width: 227,
                      ),
                      Detail(
                        data: Icons.playlist_add,
                        name: 'New List',
                        width: 217,
                      ),
                      Detail(
                          data: Icons.security, name: 'Security', width: 220),
                      Detail(
                          data: Icons.help_outline_rounded,
                          name: 'Help and Support',
                          width: 158),
                      Detail(
                          data: Icons.content_paste_rounded,
                          name: 'Terms and Conditions',
                          width: 129),
                      Detail(data: Icons.logout, name: 'Logout', width: 227)
                    ],
                  )),
            )
          ],
        ),
      )),
    );
  }
}
