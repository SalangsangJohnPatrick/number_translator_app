import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
      title: "Number Translator",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("Number Generator and Translator",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF190019),
                )),
            backgroundColor: const Color(0xFFFBE4D8),
          ),
          body: const GeneratorTranslator(),
          )
        )
      );
}

class GeneratorTranslator extends StatefulWidget {
  const GeneratorTranslator({super.key});

  @override
  State<GeneratorTranslator> createState() => GeneratorTranslatorState();
}

class GeneratorTranslatorState extends State<GeneratorTranslator> {
  Random randNum = Random();
  int number = 0;
  String translate = "";
  var frenchNum = [
    "un",
    "deux",
    "trois",
    "quatre",
    "cinq",
    "six",
    "sept",
    "huit",
    "neuf",
    "dix"
  ];
  var germanNum = [
    "eins",
    "zwei",
    "drei",
    "vier",
    "fünf",
    "sechs",
    "sieben",
    "acht",
    "neun",
    "zehn"
  ];

  void frenchTranslate() {
    translate = frenchNum[number - 1];
  }

  void germanTranslate() {
    translate = germanNum[number - 1];
  }

  void numberGenerator() {
    number = randNum.nextInt(10) + 1;
  }

  @override
  Widget build(BuildContext context) {
    Color textColor = const Color(0xFF190019);

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFDFB6B2),
                   Color(0xFF854F6C), 
                   Color(0xFF522B5B),
                   Color(0xFF2B124C)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget> [
            Container(
              height: 80,
              width: 325,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: const Color(0xFFFBE4D8),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("$number",
                      style:
                        TextStyle(fontSize: 25, color: textColor)),
                ],
              ),
            ),

            Container(
              height: 50,
              width: 300,
              alignment: Alignment.center,
              margin: const EdgeInsets.all(0.5),
              decoration: BoxDecoration(
                  color: const Color(0xFFFBE4D8),
                  borderRadius: BorderRadius.circular(20.0)),
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                      style: ButtonStyle(
                        overlayColor:
                            MaterialStateProperty.resolveWith<Color?>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.focused) ||
                                states.contains(MaterialState.pressed)) {
                              return const Color(0xFFDFB6B2);
                            }
                            return null;
                          },
                        ),
                        fixedSize: MaterialStateProperty.resolveWith((states) {
                          if (states.contains(MaterialState.pressed)) {
                            return const Size(300, 50);
                          }
                          return null;
                        }),
                        shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
                          (Set<MaterialState> states) {
                            final borderRadius = BorderRadius.circular(20.0); // Fixed border radius
                            return RoundedRectangleBorder(borderRadius: borderRadius);
                          },
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          numberGenerator();
                        });
                      },
                      child: Text("Generate Random Number",
                          style: TextStyle(
                              fontSize: 20.0,
                              color: textColor,
                              fontWeight: FontWeight.bold)))
                ],
              ),
            ),

            Container(
              height: 80,
              width: 325,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: const Color(0xFFFBE4D8),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(translate,
                      style:
                        TextStyle(fontSize: 25, color: textColor)),
                ],
              ),
            ),

            Container(
              height: 50,
              width: 250,
              alignment: Alignment.center,
              margin: const EdgeInsets.all(0.5),
              decoration: BoxDecoration(
                  color: const Color(0xFFFBE4D8),
                  borderRadius: BorderRadius.circular(20.0)),
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                      style: ButtonStyle(
                        overlayColor:
                            MaterialStateProperty.resolveWith<Color?>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.focused) ||
                                states.contains(MaterialState.pressed)) {
                              return const Color(0xFFDFB6B2);
                            }
                            return null;
                          },
                        ),
                        fixedSize: MaterialStateProperty.resolveWith((states) {
                          if (states.contains(MaterialState.pressed)) {
                            return const Size(250, 50);
                          }
                          return null;
                        }),
                        shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
                          (Set<MaterialState> states) {
                            final borderRadius = BorderRadius.circular(20.0); // Fixed border radius
                            return RoundedRectangleBorder(borderRadius: borderRadius);
                          },
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          frenchTranslate();
                        });
                      },
                      child: Text("French Translate",
                          style: TextStyle(
                              fontSize: 20.0,
                              color: textColor,
                              fontWeight: FontWeight.bold)))
                ],
              ),
            ),

            Container(
              height: 50,
              width: 250,
              alignment: Alignment.center,
              margin: const EdgeInsets.all(0.5),
              decoration: BoxDecoration(
                  color: const Color(0xFFFBE4D8),
                  borderRadius: BorderRadius.circular(20.0)),
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                      style: ButtonStyle(
                        overlayColor:
                            MaterialStateProperty.resolveWith<Color?>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.focused) ||
                                states.contains(MaterialState.pressed)) {
                              return const Color(0xFFDFB6B2);
                            }
                            return null;
                          },
                        ),
                        fixedSize: MaterialStateProperty.resolveWith((states) {
                          if (states.contains(MaterialState.pressed)) {
                            return const Size(250, 50);
                          }
                          return null;
                        }),
                        shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
                          (Set<MaterialState> states) {
                            final borderRadius = BorderRadius.circular(20.0); // Fixed border radius
                            return RoundedRectangleBorder(borderRadius: borderRadius);
                          },
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          germanTranslate();
                        });
                      },
                      child: Text("German Translate",
                          style: TextStyle(
                              fontSize: 20.0,
                              color: textColor,
                              fontWeight: FontWeight.bold)))
                ],
              ),
            ),
            const Text("Developed by JP Salangsang",
                style: TextStyle(fontSize: 15, color: Color(0xFFFBE4D8)))
          ],
        ),
      )
    );
  }
}