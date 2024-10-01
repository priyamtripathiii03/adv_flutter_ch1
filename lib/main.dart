import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: HDlight,
      home: Scaffold(
        body: Center(
          child: Container(
            height: h / 1.2,
            width: double.infinity,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.white12, blurRadius: 0.5, spreadRadius: 0.8)
                ],
                border: Border.all(color: Colors.black26, width: 1),
                borderRadius: BorderRadius.circular(15)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Yo Man !',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'It\'s a simple example of ',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  'dark theme ',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      HDlight = ThemeData.light();
                    });
                  },
                  child: Container(
                    height: 80,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                        child: Text(
                      'Light Icon',
                      style: TextStyle(color: Colors.black, fontSize: 24),
                    )),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      HDlight = ThemeData.dark();
                    });
                  },
                  child: Container(
                    height: 80,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                        child: Text(
                      'Dark Icon',
                      style: TextStyle(color: Colors.black, fontSize: 24),
                    )),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

var HDlight = ThemeData.light();
