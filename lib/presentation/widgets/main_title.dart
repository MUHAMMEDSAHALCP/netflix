import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors.dart';

class MainTitle extends StatelessWidget {
  const MainTitle({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: kWhiteColor,
      ),
    );
  }
}
