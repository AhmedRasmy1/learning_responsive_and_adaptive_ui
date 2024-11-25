import 'package:flutter/material.dart';

void main() {
  runApp(const ResponsiveAndAdaptiveUI());
}

class ResponsiveAndAdaptiveUI extends StatelessWidget {
  const ResponsiveAndAdaptiveUI({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.amberAccent,
        body: Center(
            child: Column(
          children: [
            Container(
              color: Colors.red,
              height: height * 0.2,
              width: 100,
            ),
            Container(
              color: Colors.white,
              height: height * 0.2,
              width: 100,
            ),
            Container(
              color: Colors.black,
              height: height * 0.2,
              width: 100,
            ),
          ],
        )),
      ),
    );
  }
}
