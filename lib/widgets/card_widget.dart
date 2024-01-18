import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  CardWidget(
      {Key? key,
      required this.index,
      required this.data,
      required this.txtData})
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
    {"img": Icons.lock},
    {"img": Icons.circle},
    {"img": Icons.auto_graph},
    {"img": Icons.help_center},
    {"img": Icons.person_2},
    {"img": Icons.info_rounded},
  ];

  List texts = [
    {"txt": "Wallet"},
    {"txt": "Notifications"},
    {"txt": "Price"},
    {"txt": "Help"},
    {"txt": "Accounts"},
    {"txt": "About"},
  ];

  final int index;
  final int data;
  final int txtData;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.0, // Set the aspect ratio to 1.0 for a square shape
      child: Card(
        color: colorsData[index]["color"],
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        //margin: EdgeInsets.all(8),
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Icon(
                    Icons.keyboard_double_arrow_right,
                    size: 30,
                  ),
                )
              ],
            ),
            Positioned(
              bottom: 8,
              left: 8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    iconsImg[data]["img"],
                    color: Colors.black,
                    size: 20,
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    texts[txtData]['txt'],
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
