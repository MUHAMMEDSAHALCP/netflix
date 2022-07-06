import 'package:flutter/material.dart';
import 'package:netflix_app/presentation/screens/downloads/downloads.screen.dart';
import 'package:netflix_app/presentation/screens/fast_laugh/fast_laugh_screen.dart';
import 'package:netflix_app/presentation/screens/home/home_screen.dart';
import 'package:netflix_app/presentation/screens/main/widgets/bottom_nav.dart';
import 'package:netflix_app/presentation/screens/new%20_and_hot/new_and_hot.dart';
import 'package:netflix_app/presentation/screens/search/search_screen.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  final _pages = [
    HomeScreen(),
    NewAndHotScreen(),
    FastLaughScreen(),
    SearchScreen(),
    DownloadScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int newValue, _) {
            return _pages[newValue];
          },
        ),
        bottomNavigationBar: const BottomNavigationWidget(),
      ),
    );
  }
}
