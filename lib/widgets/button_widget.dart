import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  const ButtonWidget({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 15),
      child: ElevatedButton(
        style: ButtonStyle(
          // Set minimumSize to control the width of the button
          minimumSize: MaterialStateProperty.all(Size(200, 60)),
          //maximumSize: MaterialStateProperty.all(Size(0, 5)),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
        ),
        onPressed: () {},
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Icon(icon),
          SizedBox(width: 20),
          Text(text),
        ]),
      ),
    );
  }
}
