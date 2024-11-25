import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(const ResponsiveAndAdaptiveUI());
}

class ResponsiveAndAdaptiveUI extends StatelessWidget {
  const ResponsiveAndAdaptiveUI({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(body: ExpnadeedAndFlexible()),
      ),
    );
  }
}

class ExpnadeedAndFlexible extends StatelessWidget {
  const ExpnadeedAndFlexible({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Flexible(
          child: FittedBox(
            child: Icon(
              Icons.air_rounded,
              color: Colors.amber,
              size: 300,
            ),
          ),
        ),
        Container(
          color: Colors.red,
          height: 200,
        ),
        Container(
          color: Colors.black,
          height: 200,
        ),
        Container(
          color: Colors.amber,
          height: 200,
        ),
      ],
    );
  }
}

class CustomMediaQuery extends StatelessWidget {
  const CustomMediaQuery({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
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
        ),
      ),
    );
  }
}

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({super.key});

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  number = index + 1;
                  setState(() {});
                },
                child: Container(
                  color: Colors.amber,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text(
                      '${index + 1}',
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.blue,
            child: Center(
              child: Text(
                'You have selected $number',
                style: const TextStyle(fontSize: 20),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ListTileDetails(
                    number: index + 1,
                  ),
                ),
              );
            },
            child: Container(
              color: Colors.amber,
              margin: const EdgeInsets.all(10),
              child: ListTile(
                title: Text(
                  '${index + 1}',
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class ListTileDetails extends StatelessWidget {
  const ListTileDetails({super.key, required this.number});
  final int number;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListTile Details'),
      ),
      body: Center(
        child: Text(
          'You have selected $number',
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
