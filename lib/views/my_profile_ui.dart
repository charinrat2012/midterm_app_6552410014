import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Use const constructor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'kaew',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Use const constructor
      appBar: AppBar(
        title: const Text('แก้ว'), // Use const constructor
      ),
      body: Column(
        children: <Widget>[
          // First page
          Container(
            child: Column(
              children: <Widget>[
                Image.asset('assets/images/profile.jpg'),
                const Text('charinrat'),
                const Text('ID: 6552410014'),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                  label: const Text('Follow Me'),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // ไปที่หน้าถัดไป
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondPage()),
              );
            },
            child: Text('ค้นหา'),
          ),
          // Second page
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              children: List.generate(24, (index) {
                return GestureDetector(
                  onTap: () {},
                  child: Image.asset('assets/images/animal${index + 1}.jpg'),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}


