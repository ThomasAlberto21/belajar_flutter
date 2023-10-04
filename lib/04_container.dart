import 'package:flutter/material.dart';

/*
Container adalah widget dalam Flutter yang digunakan untuk menampilkan konten yang dapat ditata dan diformat. Container memiliki beberapa properti yang dapat digunakan untuk mengontrol tampilan dan perilaku kontennya, antara lain:

  Container memiliki beberapa properti, antara lain:
    - width: Properti ini digunakan untuk menentukan lebar konten.
    - height: Properti ini digunakan untuk menentukan tinggi konten.
    - color: Properti ini digunakan untuk menentukan warna latar belakang konten.
    - margin: Properti ini digunakan untuk mengatur jarak antara konten dan tepi container.
    - padding: Properti ini digunakan untuk mengatur jarak antara konten dan tepi dalam container.
    - alignment: Properti ini digunakan untuk menentukan posisi konten di dalam container.
    - decoration: Properti ini digunakan untuk menerapkan dekorasi pada konten, seperti border, shadow, dan gradient.

*/

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
          padding: const EdgeInsets.all(10),
          alignment: Alignment.center,
          child: const Text(
            "Hello World",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          )),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
