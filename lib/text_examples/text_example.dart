import 'package:flutter/material.dart';

class TextExample extends StatelessWidget {
  const TextExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Examples in Flutter',
      home: TextExampleHome(),
    );
  }
}

class TextExampleHome extends StatelessWidget {
  const TextExampleHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Examples in Flutter'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'First Text Example',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                fontFamily: 'Allison',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Hello Text Controller',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35.0,
                color: Colors.blue,
                decoration: TextDecoration.combine(
                  [
                    TextDecoration.underline,
                    TextDecoration.overline,
                  ],
                ),
                decorationColor: Colors.red,
                decorationStyle: TextDecorationStyle.wavy,
                letterSpacing: 5.0,
                wordSpacing: 10.0,
                shadows: [
                  Shadow(
                    color: Colors.black,
                    blurRadius: 4.0,
                    offset: Offset(5, 1),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'More Style',
              style: TextStyle(
                fontSize: 60.0,
                fontWeight: FontWeight.normal,
                foreground: Paint()
                  ..color = Colors.red
                  ..strokeWidth = 3.0
                  ..style = PaintingStyle.stroke,
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'I am going to write something that will end with dots...',
              style: TextStyle(
                fontSize: 45.0,
                fontWeight: FontWeight.normal,
                foreground: Paint()
                  ..color = Colors.black
                  ..strokeWidth = 2.0
                  ..style = PaintingStyle.stroke,
              ),
              textAlign: TextAlign.left,
              maxLines: 2,
              // it means some more text are there waiting for you to be read
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
