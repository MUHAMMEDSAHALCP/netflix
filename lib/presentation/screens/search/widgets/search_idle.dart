import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/widgets/main_title.dart';

final List imageUrl = [
  "https://www.themoviedb.org/t/p/w250_and_h141_face/gG9fTyDL03fiKnOpf2tr01sncnt.jpg"
];

class SearchIdelWidget extends StatelessWidget {
  const SearchIdelWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kSizedBoxHeight,
        const MainTitle(title: "Top Searches"),
        kSizedBoxHeight,
        Expanded(
          child: ListView.separated(
              itemBuilder: (context, index) => const TopSearchItemTile(),
              separatorBuilder: (context, index) => kSizedBoxHeight,
              itemCount: 10),
        )
      ],
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          width: size.width * 0.33,
          height: size.height / 12,
          decoration: BoxDecoration(
            color: kWhiteColor,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imageUrl[0]),
            ),
          ),
        ),
        kSizedBoxWidth,
        const Text(
          "Movie Name",
          style: TextStyle(fontSize: 18),
        ),
        const Spacer(),
        const CircleAvatar(
          radius: 25,
          backgroundColor: kWhiteColor,
          child: CircleAvatar(
            radius: 24,
            backgroundColor: kBlackColor,
            child: Icon(
              CupertinoIcons.play_fill,
              color: kWhiteColor,
            ),
          ),
        )
      ],
    );
  }
}
