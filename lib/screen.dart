import 'package:dummy_app/aligned_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MyScreen extends StatelessWidget {
  const MyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('AppBar'),
      //   centerTitle: true,
      //   leading: Icon(
      //     Icons.arrow_back,
      //   ),
      // ),
//
      body: Container(
        //margin: EdgeInsets.all(8),
        color: Colors.black,
        //height: 200,
// column,flexbox,expanded,stack,SCSV - controversial
        //   child: Padding(
        //     padding: const EdgeInsets.all(10.0),
        //     child: Column(
        //       children: [
        //         Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //           children: [
        //             Icon(Icons.arrow_back_ios_new_rounded),
        //             Icon(Icons.notification_add),
        //           ],
        //         ),
        //         SizedBox(
        //           height: 20,
        //         ),
        //         Center(
        //           child: Text(
        //             'Settings',
        //             style: TextStyle(
        //               color: Colors.black,
        //               fontSize: 28,
        //               fontWeight: FontWeight.bold,
        //             ),
        //           ),
        //         ),
        //         SizedBox(
        //           height: 20,
        //         ),
        //         Container(
        //           child: alignedLayout(),
        //         ),
        //         //alignedLayout(),
        //         //margin: const EdgeInsets.all(12),
        //       ],
        //     ),
        //   ),
        // ),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.white,
                ),
                Icon(
                  Icons.notification_add,
                  color: Colors.white,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'PINTEREST',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: alignedLayout(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
