import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:slimy_card/slimy_card.dart';

void main() {
  runApp(const MaterialApp(home: MyCardWidget()));
}

class MyCardWidget extends StatefulWidget {
  const MyCardWidget({Key? key}) : super(key: key);

  @override
  State<MyCardWidget> createState() => _MyCardWidgetState();
}

class _MyCardWidgetState extends State<MyCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(height: 50),
          SlimyCard(
            topCardWidget: topCardWidget(),
            bottomCardWidget: bottomCardWidget(),
          )
        ],
      ),
    );
  }
}

Widget topCardWidget() {
  return Text(
    'My name is Tosin Ezekiel',
    style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.white.withOpacity(.85),
    ),
  );
}

Widget bottomCardWidget() {
  return Text('A professional flutter developer',
      style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white.withOpacity(.85)));
}
