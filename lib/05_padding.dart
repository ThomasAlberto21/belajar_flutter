import 'package:flutter/material.dart';

// Padding dalam framework Flutter adalah jarak antara konten dan tepi dalam widget. Padding dapat digunakan untuk mengatur jarak antara konten dan tepi container, atau untuk mengatur jarak antara dua widget dalam container.

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
          title: const Text("First Screen"),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {},
            )
          ],
          leading: IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {},
          )),
      body: Container(
          width: 100,
          height: 100,
          color: Colors.blue,
          margin: const EdgeInsets.all(10),
          alignment: Alignment.center,
          child: Container(
            // Tambahkan properti padding
            padding: const EdgeInsets.all(20),
            child: const Text(
              "Hello World!",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          )),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
