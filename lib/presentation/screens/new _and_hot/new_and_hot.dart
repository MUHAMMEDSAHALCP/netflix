import 'package:flutter/material.dart';
import 'package:netflix_app/presentation/widgets/appbar_widget.dart';

class NewAndHotScreen extends StatelessWidget {
  const NewAndHotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(double.infinity, 40),
          child: AppBarWidget(
            title: "New & Hot",
          )),
      body: Center(
        child: Text(" NewAndHot Screen"),
      ),
    );
  }
}
