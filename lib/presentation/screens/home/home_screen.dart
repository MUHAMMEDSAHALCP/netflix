import 'package:flutter/material.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/screens/home/widgets/number_title_card.dart';
import 'package:netflix_app/presentation/widgets/main_title_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 500,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  "https://image.tmdb.org/t/p/w440_and_h660_face/1g0dhYtq4irTY1GPXvft6k4YLjm.jpg",
                ),
              ),
            ),
          ),
          kSizedBoxHeight,
          const MainTitleCard(
            title: "Released in the past",
          ),
          kSizedBoxHeight,
          const MainTitleCard(
            title: "Tranding now",
          ),
          kSizedBoxHeight,
          const NumberTiltleCard(),
          kSizedBoxHeight,
          const MainTitleCard(
            title: "Tense Dramas",
          ),
          kSizedBoxHeight,
          const MainTitleCard(
            title: "Sounth Indian Cenima",
          ),
        ],
      ),
    );
  }
}
