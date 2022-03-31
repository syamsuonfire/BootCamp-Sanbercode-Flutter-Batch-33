import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.fromLTRB(36.0, 80.0, 36.0, 0.0),
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
                    "Hilmy",
                    style: TextStyle(fontSize: 36.0),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 60.0),
              child: Container(
                padding: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Colors.blue.shade200,
                    width: 2.0,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 10.0,
                    ),
                    Icon(Icons.search),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text("Search"),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 90.0),
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
    );
  }
}
