import 'package:flutter/material.dart';
import 'package:gamma/Constant.dart';
import 'carddetail.dart';
import '../common widgets/widgets.dart';

enum Detail { paypal, debit, non }

class Deposite extends StatefulWidget {
  const Deposite({Key? key}) : super(key: key);

  @override
  State<Deposite> createState() => _DepositeState();
}

class _DepositeState extends State<Deposite> {
  late Detail detail = Detail.non;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primarycolor,
        appBar: AppBar(
          title: const Text('Deposit'),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: ListView(
          padding: const EdgeInsets.only(top: 0),
          children: [
            SafeArea(
                child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Coins(
                                col: containercol,
                                image: 'images/coin1.png',
                                name: 'BTC'),
                            Coins(
                                col: ff,
                                image: 'images/coin2.png',
                                name: 'DOGE'),
                            Coins(
                                col: containercol,
                                image: 'images/coin3.png',
                                name: 'Tether'),
                            Coins(
                                col: containercol,
                                image: 'images/coin4.png',
                                name: 'BUSD'),
                            Coins(
                                col: containercol,
                                image: 'images/coin5.png',
                                name: 'ETH')
                          ],
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        option('Choice one amount'),
                        const SizedBox(
                          height: 24,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Price(
                              amount1: '5\$',
                              amount2: '20\$',
                            ),
                            Price(
                              amount1: '10\$',
                              amount2: '25\$',
                            ),
                            Price(
                              amount1: '15\$',
                              amount2: '30\$',
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 34,
                        ),
                        option('Payment Method'),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 34,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              detail = Detail.paypal;
                            });
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height / 10,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: containercol),
                            child: Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(left: 20),
                                  height: 30,
                                  width: 30,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('images/card.png'),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                Write('Debit or Credit card', ff, 16, 'Inter'),
                                const SizedBox(
                                  width: 100,
                                ),
                                Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    color: detail == Detail.paypal
                                        ? secondarycolor
                                        : inactive,
                                    borderRadius: BorderRadius.circular(16),
                                    border: Border.all(
                                        color: secondarycolor, width: 1),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 34,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              // selectedcolor(Press.buy);
                              detail = Detail.debit;
                            });
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height / 10,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: containercol),
                            child: Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(left: 8),
                                  height: 50,
                                  width: 50,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('images/paypal.png'),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                                Write('Paypal', ff, 16, 'Inter'),
                                const SizedBox(
                                  width: 196,
                                ),
                                Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    color: detail == Detail.debit
                                        ? secondarycolor
                                        : inactive,
                                    borderRadius: BorderRadius.circular(16),
                                    border: Border.all(color: secondarycolor),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 34,
                        ),
                        option('Address'),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 34,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 10,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: containercol),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, right: 8),
                            child: Center(
                              child: Write(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit.Sem ornare at ultricies ac odio ipsum. ',
                                  ff,
                                  14,
                                  'Inter'),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 34,
                        ),
                        option('Minimum deposit: 0.001 BTC'),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 34,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 40),
                          child: CostomButton(
                              fun: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            DebaitCard()));
                              },
                              buttoninfo: 'Continue'),
                        ),
                      ],
                    ))),
          ],
        ));
  }
}
