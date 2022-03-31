import 'package:flutter/material.dart';
import 'package:sanberappflutter/Tugas/Tugas13/DrawerScreen.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Page"),
        centerTitle: true,
      ),
      drawer: DrawerScreen(),
      body: Center(
        child: Text("Profile Page"),
      ),
    );
  }
}
