import 'package:flutter/material.dart';

/*
Scaffold adalah widget dalam Flutter yang menyediakan kerangka kerja dasar untuk membangun aplikasi Flutter yang lengkap dengan mengintegrasikan widget-widget umum seperti AppBar, Drawer, BottomNavigationBar, dan lain-lain.

  Scaffold memiliki beberapa properti penting, antara lain:
    - AppBar: Properti ini digunakan untuk membuat bar aplikasi yang berisi judul, ikon, dan menu.
    - Body: Properti ini digunakan untuk menampilkan konten utama dari aplikasi.
    - FloatingActionButton: Properti ini digunakan untuk menampilkan tombol mengambang yang dapat digunakan untuk melakukan tindakan tertentu.
    - BottomNavigationBar: Properti ini digunakan untuk menampilkan bar navigasi bawah yang berisi daftar tab.
    - Drawer: Properti ini digunakan untuk menampilkan menu geser yang berisi daftar item.

*  */

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
      body: const Center(
        child: Text("Hello World!"),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
