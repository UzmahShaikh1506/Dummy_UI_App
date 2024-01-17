import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  CardWidget({Key? key, required this.index, required this.data})
      : super(key: key);

  List<Map<String, Color>> colorsData = [
    {"color": Colors.blueAccent},
    {"color": Colors.deepPurple},
    {"color": Colors.grey},
    {"color": Colors.white},
    {"color": Colors.lightBlueAccent},
    {"color": const Color.fromARGB(255, 54, 69, 76)},
  ];

  List<Map<String, IconData>> iconsImg = [
    {"img": Icons.abc},
    {"img": Icons.abc_rounded},
    {"img": Icons.abc_sharp},
    {"img": Icons.account_balance_wallet},
    {"img": Icons.arrow_back_ios},
    {"img": Icons.app_blocking_sharp},
  ];

  final int index;
  final int data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AspectRatio(
        aspectRatio: 1.0, // Set the aspect ratio to 1.0 for a square shape
        child: Card(
          color: colorsData[index]["color"],
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
                  Icon(iconsImg[data]["img"]),
                  SizedBox(
                    height: 10,
                  ),
                  Text('ABC'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
