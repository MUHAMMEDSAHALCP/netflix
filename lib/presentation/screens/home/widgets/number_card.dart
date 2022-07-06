import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors.dart';

class NumberCard extends StatelessWidget {
  final int index;
  const NumberCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 40,
              height: 150,
            ),
            Container(
              height: 250,
              width: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "https://www.themoviedb.org/t/p/w220_and_h330_face/3H1WFCuxyNRP35oiL2qqwhAXxc0.jpg",
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          top: 13,
          bottom: -80,
          child: BorderedText(
            strokeWidth: 10,
            strokeColor: kWhiteColor,
            child: Text(
              "${index + 1}",
              style: const TextStyle(
                fontSize: 90,
                color: kBlackColor,
              ),
            ),
          ),
        )
      ],
    );
  }
}
