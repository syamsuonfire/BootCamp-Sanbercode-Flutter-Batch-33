import 'package:flutter/material.dart';
import 'package:sanberappflutter/Tugas/Tugas15/DrawerScreen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Home Page"),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          )
        ],
      ),
      drawer: DrawerScreen(),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.fromLTRB(36.0, 36.0, 36.0, 36.0),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.notifications),
                    SizedBox(width: 15.0),
                    Icon(Icons.add_shopping_cart),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome,",
                      style: TextStyle(
                        color: Colors.blue.shade500,
                        fontSize: 36.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Akbar",
                      style: TextStyle(fontSize: 36.0),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50.0,
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
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Recommended Place",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Image.asset(
                          "assets/img/Monas.png",
                          width: 150,
                          height: 150,
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Image.asset(
                          "assets/img/Roma.png",
                          width: 150,
                          height: 150,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "assets/img/Berlin.png",
                          width: 150,
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Image.asset(
                          "assets/img/Tokyo.png",
                          width: 150,
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
