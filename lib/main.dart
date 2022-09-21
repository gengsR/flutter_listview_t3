import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'MyApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red),
              ),
            ),
            Image.network(
                "https://www.dapurkintamani.com/wp-content/uploads/2021/10/seblak-kuah-ceker.webp"),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(7),
              child: const Text(
                'Seblak Barokah',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              height: 50,
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(10),
              color: Colors.red,
              child: const Text(
                'Menu',
                style: TextStyle(fontSize: 25),
              ),
            ),
            const Berita(),
            const Berita(),
            const Berita(),
            const Berita(),
          ],
        )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}

class Berita extends StatelessWidget {
  const Berita({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.red),
      ),
      // margin: const EdgeInsets.all(2.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(2.0),
                width: 180,
                child: Column(
                  children: <Widget>[
                    Image.network(
                        "https://awsimages.detik.net.id/community/media/visual/2022/02/21/resep-seblak-bakso-super-pedas_43.jpeg?w=1200")
                  ],
                ),
              ),
              Container(
                height: 116,
                width: 228,
                padding: const EdgeInsets.all(10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red),
                ),
                child: const Text('Seblak Toping Bakso RP. 10.000'),
              ),
            ],
          ),
          Container(
            height: 35,
            alignment: Alignment.centerLeft,
          ),
        ],
      ),
    );
  }
}
