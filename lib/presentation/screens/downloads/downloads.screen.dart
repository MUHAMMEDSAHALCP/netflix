import 'dart:math';
import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/widgets/appbar_widget.dart';

class DownloadScreen extends StatelessWidget {
  DownloadScreen({Key? key}) : super(key: key);

  final List widgetList = [
    const SmartDownloads(),
    Section2(),
    const Section3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 40),
        child: AppBarWidget(
          title: "Downloads",
        ),
      ),
      body: ListView.separated(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(10),
          itemBuilder: ((context, index) => widgetList[index]),
          separatorBuilder: (context, index) => const SizedBox(
                height: 20,
              ),
          itemCount: widgetList.length),
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: kBlueBolor,
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Text(
                "Set Up",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: kWhiteColor),
              ),
            ),
          ),
        ),
        kSizedBoxHeight,
        MaterialButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: kWhiteColor,
          onPressed: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Text(
              "See what you can download",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: kBlackColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Section2 extends StatelessWidget {
  Section2({Key? key}) : super(key: key);
  final List imageList = [
    "https://www.themoviedb.org/t/p/w440_and_h660_face/1g0dhYtq4irTY1GPXvft6k4YLjm.jpg",
    "https://www.themoviedb.org/t/p/w440_and_h660_face/7COPO5B9AOKIB4sEkvNu0wfve3c.jpg",
    "https://www.themoviedb.org/t/p/w440_and_h660_face/4zsihgkxMZ7MrflNCjkD3ySFJtc.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        const Text(
          "Introducing downloads for you.",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
        ),
        kSizedBoxHeight,
        const Text(
          "We'll download a personalised selection of\nmovie and shows for you, so there's\nalways somthing to watch on your\ndevice.",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 15, color: Colors.grey),
        ),
        SizedBox(
          height: size.height * 0.5,
          width: size.width,
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey.withOpacity(0.5),
                radius: size.width * 0.4,
              ),
              DownloadImageWidget(
                angle: 20,
                image: imageList[2],
                margin: const EdgeInsets.only(left: 130, bottom: 20),
                size: Size(size.width * 0.45, size.width * 0.50),
              ),
              DownloadImageWidget(
                angle: -20,
                image: imageList[1],
                margin: const EdgeInsets.only(bottom: 20, right: 130),
                size: Size(size.width * 0.45, size.width * 0.50),
              ),
              DownloadImageWidget(
                image: imageList[0],
                margin: const EdgeInsets.only(
                  top: 10,
                ),
                size: Size(size.width * 0.45, size.width * 0.60),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SmartDownloads extends StatelessWidget {
  const SmartDownloads({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.settings,
            color: kWhiteColor,
          ),
        ),
        const Text(
          "Smart Downloads",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

class DownloadImageWidget extends StatelessWidget {
  const DownloadImageWidget({
    Key? key,
    required this.image,
    this.angle = 0,
    required this.margin,
    required this.size,
  }) : super(key: key);

  final String image;
  final double angle;
  final EdgeInsets margin;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(image),
          ),
        ),
      ),
    );
  }
}
