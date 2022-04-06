import 'package:flutter/material.dart';
import 'package:sanberappflutter/tugas/tugas_13/drawer_screen.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search Page"),
        centerTitle: true,
      ),
      drawer: DrawerScreen(),
      body: Center(
        child: Text("Search Page"),
      ),
    );
  }
}
