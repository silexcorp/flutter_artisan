import 'package:flutter/material.dart';

class TabBarContact extends StatelessWidget {
  const TabBarContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      child: const Text(
        'Conact Page',
        style: TextStyle(
          fontFamily: "Allison",
          fontSize: 50,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
