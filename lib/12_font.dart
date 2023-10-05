import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = "Flutter Code Sample";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'First Screen',
          style: TextStyle( fontFamily: 'Roboto'),
        ),
      ),
      body: Center(
        // child: Image.network(
        //   'https://picsum.photos/200/300',
        //   width: 200,
        //   height: 200,
        // ),
        child: Image.asset(
          'assets/android.png',
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}
