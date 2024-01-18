import 'package:dummy_app/widgets/card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class alignedLayout extends StatelessWidget {
  alignedLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AlignedGridView.count(
          scrollDirection: Axis.vertical,
          //crossAxisSpacing: 6,
          //mainAxisSpacing: 6,
          crossAxisCount: 2,
          itemCount: 6,
          itemBuilder: (context, index) {
            return CardWidget(
              index: index,
              data: index,
              txtData: index,
            );
            //ClipRRect(
            //borderRadius: BorderRadius.circular(10),
            // child: CardWidget(index: icons_img,),

            // Image.network(
            //   'https://source.unsplash.com/random?sig=$index',
            //   fit: BoxFit.cover,
            // ),
          }),
    );
  }
}

//lib/images${index + 1}.jpeg
//https://source.unsplash.com/random?sig=$index