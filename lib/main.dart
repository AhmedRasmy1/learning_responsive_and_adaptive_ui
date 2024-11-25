import 'package:flutter/material.dart';

void main() {
  runApp(const ResponsiveAndAdaptiveUI());
}

var imagesUrl = [
  'https://th.bing.com/th?q=Flutter+Icon.png&w=120&h=120&c=1&rs=1&qlt=90&cb=1&dpr=1.4&pid=InlineBlock&mkt=en-XA&cc=EG&setlang=en&adlt=strict&t=1&mw=247',
  'https://th.bing.com/th?q=Flutter+Icon.png&w=120&h=120&c=1&rs=1&qlt=90&cb=1&dpr=1.4&pid=InlineBlock&mkt=en-XA&cc=EG&setlang=en&adlt=strict&t=1&mw=247',
  'https://th.bing.com/th?q=Flutter+Icon.png&w=120&h=120&c=1&rs=1&qlt=90&cb=1&dpr=1.4&pid=InlineBlock&mkt=en-XA&cc=EG&setlang=en&adlt=strict&t=1&mw=247',
  'https://th.bing.com/th?q=Flutter+Icon.png&w=120&h=120&c=1&rs=1&qlt=90&cb=1&dpr=1.4&pid=InlineBlock&mkt=en-XA&cc=EG&setlang=en&adlt=strict&t=1&mw=247',
];

class ResponsiveAndAdaptiveUI extends StatelessWidget {
  const ResponsiveAndAdaptiveUI({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 250,
                ),
                IntrinsicHeight(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.red,
                          child: const Column(
                            children: [
                              SizedBox(
                                height: 50,
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              SizedBox(
                                height: 50,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                color: Colors.blue,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                color: Colors.brown,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ExpnadeedAndFlexible extends StatelessWidget {
  const ExpnadeedAndFlexible({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: imagesUrl.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
        ),
        itemBuilder: (context, index) {
          return FittedBox(child: Image.network(imagesUrl[index]));
        });
  }
}

class AcceptRatio extends StatelessWidget {
  const AcceptRatio({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
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
