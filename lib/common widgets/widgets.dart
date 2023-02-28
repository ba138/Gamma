import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Constant.dart';

class News extends StatelessWidget {
  const News({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 6,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: containercol,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Container(
              height: MediaQuery.of(context).size.height / 8,
              width: MediaQuery.of(context).size.width / 3.2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  image: const DecorationImage(
                      image: AssetImage('images/bar.jpg'), fit: BoxFit.cover)),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Write('Lorem ipsum dolor sit amet, ', ff, 12, 'Inter'),
              const SizedBox(
                height: 6,
              ),
              Write('adipiscing In turpis ut lectus,cell ', ff, 12, 'Inter'),
              const SizedBox(
                height: 6,
              ),
              Write('Lorem ipsum dolor sit', ff, 12, 'Inter'),
              const SizedBox(
                height: 10,
              ),
              Write('15:43', ff, 10, 'Inter')
            ],
          )
        ],
      ),
    );
  }
}

class BtContainer extends StatelessWidget {
  BtContainer(
      {required this.image,
      required this.percentage,
      required this.btc,
      required this.dollar});
  final String image;
  final String percentage;
  final String btc;
  final String dollar;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165,
      width: 165,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: containercol,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 6, right: 6, top: 10, bottom: 10),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                          image: AssetImage('images/coin.png'))),
                ),
                const SizedBox(
                  width: 6,
                ),
                Write('Bitcoin', Colors.amber, 12, 'Inter'),
                const SizedBox(
                  width: 44,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Write(percentage, ff, 12, 'Inter')],
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 25,
            ),
            Container(
              height: 27,
              width: 67,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(image))),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Write(btc, ff, 12, 'Inter'),
                Write(dollar, btccolor, 12, 'Inter')
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MainRow extends StatelessWidget {
  MainRow({required this.tap, required this.ico, required this.title});
  final Function() tap;
  final IconData ico;
  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Container(
        height: 56,
        width: 77,
        decoration: BoxDecoration(
          color: containercol,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(
              ico,
              color: ff,
            ),
            Write(title, ff, 10, 'Inter')
          ],
        ),
      ),
    );
  }
}

class Field extends StatelessWidget {
  Field({required this.about, required this.input});
  final String about;
  final String input;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Write(about, ff, 16, 'Inter'),
            SizedBox(
              height: MediaQuery.of(context).size.height / 56,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 18,
              width: 344,
              decoration: BoxDecoration(
                color: containercol,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: TextField(
                  style: TextStyle(color: ff),
                  onChanged: (value) {
                    //Do something with the user input.
                  },
                  decoration: Input(input)),
            ),
          ],
        )
      ],
    );
  }
}

class CostomButton extends StatelessWidget {
  CostomButton({required this.fun, required this.buttoninfo});
  final Function() fun;
  String buttoninfo;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 18,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: secondarycolor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: MaterialButton(
        onPressed: fun,
        child: Write(buttoninfo, ff, 16, 'Inter'),
      ),
    );
  }
}

class Line extends StatelessWidget {
  const Line({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 1,
          width: MediaQuery.of(context).size.width / 2.5,
          color: ff,
        ),
        Write('OR', ff, 14, 'Inter'),
        Container(
          height: 1,
          width: MediaQuery.of(context).size.width / 2 - 22,
          color: ff,
        ),
      ],
    );
  }
}

class Decetion extends StatelessWidget {
  Decetion({required this.title, required this.image, required this.press});
  final String title;
  final String image;
  final Function() press;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 18,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: buttoncolor,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Center(child: Write(title, ff, 16, 'Inter')),
        ),
        GestureDetector(
          onTap: press,
          child: Container(
            height: MediaQuery.of(context).size.height / 16,
            width: MediaQuery.of(context).size.width / 6,
            decoration: BoxDecoration(
                color: ff,
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(image: AssetImage(image))),
          ),
        )
      ],
    );
  }
}

class Bar extends StatelessWidget {
  Bar(
      {required this.name,
      required this.data,
      required this.data2,
      required this.function1,
      required this.function2});
  String name;
  IconData data;
  IconData data2;
  Function() function2;
  Function() function1;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: function1, icon: Icon(data, color: ff, size: 24)),

        Write(name, ff, 20, 'Inter'),
        IconButton(onPressed: function1, icon: Icon(data2, color: ff, size: 24))
        // IconButton(
        //
        //   Icon(data2,
        //     color: ff,
        //     size: 24,
        //   ), onPressed: () {  },
        //
        // ),
      ],
    );
  }
}

class Detail extends StatelessWidget {
  Detail({required this.data, required this.name, required this.width});
  IconData data;
  String name;
  double width;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          data,
          color: ff,
        ),
        const SizedBox(
          width: 10,
        ),
        Write(name, ff, 14, 'inter'),
        SizedBox(
          width: width,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Icon(
              Icons.arrow_forward,
              color: ff,
              size: 18,
            )
          ],
        )
      ],
    );
  }
}

class APP extends StatelessWidget {
  APP({required this.Title, required this.press});
  String Title;
  Function() press;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(Title),
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      actions: [
        IconButton(
            onPressed: press, icon: const Icon(Icons.notifications_active))
      ],
    );
  }
}

class Note extends StatelessWidget {
  Note({required this.image, required this.name});
  String image;
  String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 7,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: containercol),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(
              left: 8,
            ),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(image: AssetImage(image))),
          ),
          const SizedBox(
            width: 4,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Write(name, ff, 16, 'Inter'),
                  const SizedBox(
                    width: 100,
                  ),
                  Write('3 min ago', ff.withOpacity(0.6), 10, 'Inter'),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Write('Lorem ipsum dolor sit amet, consectetur ', ff, 12,
                      'Inter'),
                ],
              ),
              Write(
                  'adipiscing elit. Tempus hendrerit varius.', ff, 12, 'Inter')
            ],
          ),
          // Column(
          //   children: [
          //     Padding(
          //       padding: const EdgeInsets.only(top: 24),
          //       child:
          //     )
          //   ],
          // )
        ],
      ),
    );
  }
}

class Coins extends StatelessWidget {
  Coins({required this.col, required this.image, required this.name});
  Color col;
  String image;
  String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration:
              BoxDecoration(color: col, borderRadius: BorderRadius.circular(8)),
          child: Center(
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(image))),
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Write(name, ff, 14, 'Inter')
      ],
    );
  }
}

class Price extends StatelessWidget {
  Price({required this.amount1, required this.amount2});
  String amount1;
  String amount2;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: containercol,
          ),
          child: Center(child: Write(amount1, ff, 18, 'Inter')),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 50,
          width: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: containercol,
          ),
          child: Center(child: Write(amount2, ff, 18, 'Inter')),
        ),
      ],
    );
  }
}

class DeHistory extends StatelessWidget {
  const DeHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height / 14,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          children: [
            Icon(
              Icons.account_balance_wallet_outlined,
              color: ff,
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Write('Deposite cash', ff, 14, 'Inter'),
                Write('Visa 41325673', Colors.grey, 12, 'Inter')
              ],
            ),
            const SizedBox(
              width: 150,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Write('+675.11\$', Colors.green, 14, 'Inter'),
                Write('Yestarday', Colors.grey, 12, 'Inter')
              ],
            ),
          ],
        ));
  }
}

class Draw extends StatelessWidget {
  const Draw({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height / 14,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          children: [
            Icon(
              Icons.money,
              color: ff,
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Write('Withdraw cash', ff, 14, 'Inter'),
                Write('Visa 41325673', Colors.grey, 12, 'Inter')
              ],
            ),
            const SizedBox(
              width: 142,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Write('+675.11\$', Colors.red, 14, 'Inter'),
                Write('Yesterday', Colors.grey, 12, 'Inter')
              ],
            ),
          ],
        ));
  }
}
