import 'package:flutter/material.dart';
import 'package:sanberappflutter/tugas/tugas13/main_app.dart';

class LoginScreen13 extends StatelessWidget {
  const LoginScreen13({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Login"),
      ),
      body: Center(
        child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(color: Colors.amber),
          child: TextButton(
            child: Text("Submit"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MainApp13()));
            },
          ),
        ),
      ),
    );
  }
}
