import 'package:flutter/material.dart';
import 'package:sanberappflutter/tugas/tugas13/drawer_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Halaman Home"),
        ),
        drawer: DrawerScreen13(),
        body: Center(
          child: Text("Halman Homescreen"),
        ));
  }
}
