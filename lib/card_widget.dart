import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  CardWidget({super.key, required this.index, required this.data});

  List colors_data = [
    {"color": Colors.blueAccent},
    {"color": Colors.deepPurple},
    {"color": Colors.grey},
    {"color": Colors.white},
    {"color": Colors.lightBlueAccent},
    {"color": const Color.fromARGB(255, 54, 69, 76)},
  ];

  List icons_img = [
    {"icon": Icons.abc},
    {"icon": Icons.abc_rounded},
    {"icon": Icons.abc_sharp},
    {"icon": Icons.account_balance_wallet},
    {"icon": Icons.arrow_back_ios},
    {"icon": Icons.app_blocking_sharp},
  ];

  final int index;
  final int data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      // child: GridView.builder(
      //   itemCount: 6,
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 2,
      //   ),
      //   itemBuilder: (context, index) {
      //     return Padding(
      //       padding: const EdgeInsets.all(8.0),
      child: Card(
        color: colors_data[index]["color"],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        elevation: 8,
        margin: EdgeInsets.all(8),
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Icon(Icons.keyboard_double_arrow_right)],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(icons_img[data]["data"]),
                SizedBox(
                  height: 10,
                ),
                Text('ABC'),
              ],
            ),
          ],
        ),
      ),
    );
  }
  //),
  //);
}
//}
