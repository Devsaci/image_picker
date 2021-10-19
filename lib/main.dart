import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("109. Image Picker"),
      ),
      body: const Center(
        child: Text("No Image selected"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_a_photo),
        onPressed: () {
          var ad = AlertDialog(
              title: Text("Chose Picture From "),
            content: Container(
              height: 150,
              color: Colors.amber,
            ),
          );
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return ad;
              });
          },
      ),
    );
  }
}
