import 'package:flutter/material.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (context, int newIndex, _) {
          return BottomNavigationBar(
            currentIndex: newIndex,
            onTap: (value) {
              indexChangeNotifier.value = value;
            },
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.black,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.collections),
                label: "New & Hot",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.emoji_emotions),
                label: "Fast laughs",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "search",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.download),
                label: "downloads",
              ),
            ],
          );
        });
  }
}
