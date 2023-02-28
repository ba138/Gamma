import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color buttoncolor = const Color(0xff1D293B);
Color ff = const Color(0xffFFFFFF);
Color primarycolor = const Color(0xff140F1F);
Color secondarycolor = const Color(0xff23A4CD);
Color btccolor = Colors.amber;
Color inactive = Colors.transparent;
Widget Write(String title, Color rang, double size, String fam) {
  return Text(
    title,
    style: TextStyle(
      fontFamily: fam,
      color: rang,
      fontSize: size,
    ),
  );
}

Color containercol = Color(0xff1D293B);

InputDecoration Input(String lable) {
  return InputDecoration(
    hintStyle: TextStyle(
      color: ff,
    ),
    border: InputBorder.none,
    hintText: lable,
    contentPadding:
        const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  );
}

// class Field extends StatelessWidget {
// Field({required this.type});
// final Function() type;
//   @override
//   Widget build(BuildContext context) {
//     return   Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Write('First name', ff, 16, 'Inter'),
//         SizedBox(
//           height: MediaQuery.of(context).size.height / 56,
//         ),
//         Container(
//           height: MediaQuery.of(context).size.height / 18,
//           width: MediaQuery.of(context).size.width / 2.5,
//           decoration: BoxDecoration(
//             color: containercol,
//             borderRadius: BorderRadius.circular(10.0),
//           ),
//           child: TextField(
//             onChanged: type,
//               // onChanged: (value) {
//               //   //Do something with the user input.
//               // },
//               decoration: Input('Enter Your name')),
//         ),
//       ],
//     );
//   }
// }
Widget option(String name) {
  return Row(
    children: [
      Write(name, ff, 16, 'Inter'),
    ],
  );
}
