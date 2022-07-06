import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 145,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: const DecorationImage(
          image: NetworkImage(
            "https://www.themoviedb.org/t/p/w220_and_h330_face/mbsRGqJtdKcVbjQxkrfzKCAkYoU.jpg",
          ),
        ),
      ),
    );
  }
}
