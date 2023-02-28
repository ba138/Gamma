import 'package:flutter/material.dart';
import 'package:gamma/Constant.dart';
import 'package:gamma/screens/home.dart';
import 'package:gamma/screens/notification.dart';
import 'package:gamma/screens/profile.dart';
import 'package:fl_chart/fl_chart.dart';

enum Press {
  buy,
  sell,
  non,
}

class Tranding extends StatefulWidget {
  const Tranding({Key? key}) : super(key: key);

  @override
  State<Tranding> createState() => _TrandingState();
}

class _TrandingState extends State<Tranding> {
  Color buycolor = inactive;
  Color sellcolor = inactive;

  String dropdownValue = 'Trading Markets';
  final Color leftBarColor = const Color(0xff53fdd7);
  final Color rightBarColor = const Color(0xffff5182);
  final double width = 7;

  late List<BarChartGroupData> rawBarGroups;
  late List<BarChartGroupData> showingBarGroups;

  int touchedGroupIndex = -1;

  late Press press = Press.non;
  String dropdownValue1 = 'Tranding Hours';

  @override
  void initState() {
    super.initState();
    final barGroup1 = makeGroupData(0, 5, 12);
    final barGroup2 = makeGroupData(1, 16, 12);
    final barGroup3 = makeGroupData(2, 18, 5);
    final barGroup4 = makeGroupData(3, 20, 16);
    final barGroup5 = makeGroupData(4, 17, 6);
    final barGroup6 = makeGroupData(5, 19, 1.5);
    final barGroup7 = makeGroupData(6, 10, 1.5);

    final items = [
      barGroup1,
      barGroup2,
      barGroup3,
      barGroup4,
      barGroup5,
      barGroup6,
      barGroup7,
    ];

    rawBarGroups = items;

    showingBarGroups = rawBarGroups;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tranding'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notifications_active))
        ],
      ),
      backgroundColor: primarycolor,
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
                    Navigator.pop(
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
                  onPressed: () {},
                  icon: Icon(
                    Icons.addchart_outlined,
                    color: secondarycolor,
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
      body: SafeArea(
          child: ListView(
        padding: const EdgeInsets.only(top: 0),
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                Write('7,803.4 USD', secondarycolor, 24, 'Inter'),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 100,
                ),
                Write('\$987,332 +9%', ff, 16, 'Intetr'),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                Center(
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color: const Color(0xff2c4260),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const <Widget>[
                                SizedBox(
                                  width: 75,
                                ),
                                Center(
                                  child: Text(
                                    'Tranding',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 22),
                                  ),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Center(
                                  child: Text(
                                    'Markets',
                                    style: TextStyle(
                                        color: Color(0xff77839a), fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 38,
                            ),
                            Expanded(
                              child: BarChart(
                                BarChartData(
                                  maxY: 20,
                                  barTouchData: BarTouchData(
                                      touchTooltipData: BarTouchTooltipData(
                                        tooltipBgColor: Colors.grey,
                                        getTooltipItem: (_a, _b, _c, _d) =>
                                            null,
                                      ),
                                      touchCallback:
                                          (FlTouchEvent event, response) {
                                        if (response == null ||
                                            response.spot == null) {
                                          setState(() {
                                            touchedGroupIndex = -1;
                                            showingBarGroups =
                                                List.of(rawBarGroups);
                                          });
                                          return;
                                        }

                                        touchedGroupIndex =
                                            response.spot!.touchedBarGroupIndex;

                                        setState(() {
                                          if (!event
                                              .isInterestedForInteractions) {
                                            touchedGroupIndex = -1;
                                            showingBarGroups =
                                                List.of(rawBarGroups);
                                            return;
                                          }
                                          showingBarGroups =
                                              List.of(rawBarGroups);
                                          if (touchedGroupIndex != -1) {
                                            var sum = 0.0;
                                            for (var rod in showingBarGroups[
                                                    touchedGroupIndex]
                                                .barRods) {
                                              sum += rod.toY;
                                            }
                                            final avg = sum /
                                                showingBarGroups[
                                                        touchedGroupIndex]
                                                    .barRods
                                                    .length;

                                            showingBarGroups[
                                                    touchedGroupIndex] =
                                                showingBarGroups[
                                                        touchedGroupIndex]
                                                    .copyWith(
                                              barRods: showingBarGroups[
                                                      touchedGroupIndex]
                                                  .barRods
                                                  .map((rod) {
                                                return rod.copyWith(toY: avg);
                                              }).toList(),
                                            );
                                          }
                                        });
                                      }),
                                  titlesData: FlTitlesData(
                                    show: true,
                                    rightTitles: AxisTitles(
                                      sideTitles: SideTitles(showTitles: false),
                                    ),
                                    topTitles: AxisTitles(
                                      sideTitles: SideTitles(showTitles: false),
                                    ),
                                    bottomTitles: AxisTitles(
                                      sideTitles: SideTitles(
                                        showTitles: true,
                                        getTitlesWidget: bottomTitles,
                                        reservedSize: 42,
                                      ),
                                    ),
                                    leftTitles: AxisTitles(
                                      sideTitles: SideTitles(
                                        showTitles: true,
                                        reservedSize: 28,
                                        interval: 1,
                                        getTitlesWidget: leftTitles,
                                      ),
                                    ),
                                  ),
                                  borderData: FlBorderData(
                                    show: false,
                                  ),
                                  barGroups: showingBarGroups,
                                  gridData: FlGridData(show: false),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: press == Press.buy ? secondarycolor : inactive,
                          border: Border.all(color: ff, width: 1)),
                      child: MaterialButton(
                        height: 46,
                        onPressed: () {
                          setState(() {
                            // selectedcolor(Press.buy);
                            press = Press.buy;
                          });
                        },
                        child: Write('Buy', ff, 12, 'Inter'),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color:
                              press == Press.sell ? secondarycolor : inactive,
                          border: Border.all(color: ff, width: 1)),
                      child: MaterialButton(
                        height: 46,
                        onPressed: () {
                          setState(() {
                            // selectedcolor(Press.sell);
                            press = Press.sell;
                          });
                        },
                        child: Write('Sell', ff, 12, 'Inter'),
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Container(
                    width: 186,
                    margin: const EdgeInsets.all(24),
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
                          'Trading Markets',
                          'Buy and Sell',
                          'Profit and Loss',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem(
                              value: value, child: Text(value));
                        }).toList(),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    width: 186,
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
                          'Tranding Hours',
                          'Bitcoin',
                          'Helium',
                          'Chalas',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem(
                              value: value, child: Text(value));
                        }).toList(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }

  Widget leftTitles(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff7589a2),
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    String text;
    if (value == 0) {
      text = '18K';
    } else if (value == 10) {
      text = '27K';
    } else if (value == 19) {
      text = '36K';
    } else {
      return Container();
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 0,
      child: Text(text, style: style),
    );
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff7589a2),
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    Widget text;
    switch (value.toInt()) {
      case 0:
        text = const Text(
          'Mn',
          style: style,
        );
        break;
      case 1:
        text = const Text(
          'Te',
          style: style,
        );
        break;
      case 2:
        text = const Text(
          'Wd',
          style: style,
        );
        break;
      case 3:
        text = const Text(
          'Tu',
          style: style,
        );
        break;
      case 4:
        text = const Text(
          'Fr',
          style: style,
        );
        break;
      case 5:
        text = const Text(
          'St',
          style: style,
        );
        break;
      case 6:
        text = const Text(
          'Sn',
          style: style,
        );
        break;
      default:
        text = const Text(
          '',
          style: style,
        );
        break;
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 16,
      child: text,
    );
  }

  BarChartGroupData makeGroupData(int x, double y1, double y2) {
    return BarChartGroupData(barsSpace: 4, x: x, barRods: [
      BarChartRodData(
        toY: y1,
        color: leftBarColor,
        width: width,
      ),
      BarChartRodData(
        toY: y2,
        color: rightBarColor,
        width: width,
      ),
    ]);
  }

  Widget makeTransactionsIcon() {
    const width = 4.5;
    const space = 3.5;
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: width,
          height: 10,
          color: Colors.white.withOpacity(0.4),
        ),
        const SizedBox(
          width: space,
        ),
        Container(
          width: width,
          height: 28,
          color: Colors.white.withOpacity(0.8),
        ),
        const SizedBox(
          width: space,
        ),
        Container(
          width: width,
          height: 42,
          color: Colors.white.withOpacity(1),
        ),
        const SizedBox(
          width: space,
        ),
        Container(
          width: width,
          height: 28,
          color: Colors.white.withOpacity(0.8),
        ),
        const SizedBox(
          width: space,
        ),
        Container(
          width: width,
          height: 10,
          color: Colors.white.withOpacity(0.4),
        ),
      ],
    );
  }

  Widget myInputChip = InputChip(
    onPressed: () {},
    label: Semantics(
      hint: 'Example Hint',
      child: const Text('My Input Chip'),
    ),
  );
}
