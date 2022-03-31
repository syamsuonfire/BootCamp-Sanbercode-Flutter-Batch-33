import 'package:flutter/material.dart';
import 'package:sanberappflutter/Tugas/Tugas13/Dashboard.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.fromLTRB(45.0, 80.0, 45.0, 30.0),
          child: Column(
            children: [
              Text(
                "Sanber Flutter",
                style: TextStyle(
                  color: Colors.blue.shade500,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Image.asset(
                "assets/img/flutter.png",
                height: 120,
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue.shade300,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Username",
                  ),
                ),
              ),
              SizedBox(height: 15.0),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue.shade300,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Password",
                  ),
                  obscureText: true,
                ),
              ),
              SizedBox(height: 8.0),
              TextButton(
                onPressed: () {},
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(
                      color: Colors.blue.shade500,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 3.0),
              Container(
                child: ElevatedButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "Login",
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Dashboard();
                        },
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 2.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Does not have account?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          color: Colors.blue.shade500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                        width: 10.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Image.asset(
                      "assets/img/Paris.jpeg",
                      width: 120,
                      height: 100,
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                        width: 10.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Image.asset(
                      "assets/img/London.jpeg",
                      width: 120,
                      height: 100,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
