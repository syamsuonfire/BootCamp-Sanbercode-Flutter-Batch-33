// ignore_for_file: no_logic_in_create_state

import 'package:flutter/material.dart';
import 'package:sanberappflutter/quiz3/home/model.dart';

class HomescreenPages extends StatefulWidget {
  final String value;
  HomescreenPages({
    Key? key,
    required String this.value,
  }) : super(key: key);

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<HomescreenPages> {
  _HomescreenState();
  late int harga = 0;

  int _grandTotal = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40.0),
                      child: Image.network(
                        "https://avatars.githubusercontent.com/u/52710807?v=4",
                        height: 80,
                        width: 80,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(widget.value),
                  ],
                ),
                Row(
                  children: [
                    //## soal 4
                    //Tulis Coding disini
                    Text(_grandTotal.toString()),

                    //sampai disini
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.add_shopping_cart)
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            //#soal 3 silahkan buat coding disini
            //untuk container boleh di pake/dimodifikasi
            Container(
                height: MediaQuery.of(context).size.height / 1.5,
                color: Colors.amber,
                child: GridView.builder(
                    itemCount: items.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.all(8),
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey)),
                        child: Column(
                          children: [
                            Image.network(items[index].profileUrl),
                            Text(items[index].name),
                            Container(
                              height: 30,
                              width: 80,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(color: Colors.blue),
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    _grandTotal += items[index].price;
                                  });
                                  // print(items[index].price.toString() +
                                  //     harga.toString());
                                },
                                child: Text(items[index].price.toString(),
                                    style: TextStyle(color: Colors.white)),
                              ),
                            )
                          ],
                        ),
                      );
                    }) //silahkan dilanjutkan disini
                ),

            //sampai disini soal 3
          ],
        ),
      ),
    );
  }

  Widget myWidget(BuildContext context) {
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          itemCount: 300,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: Colors.amber,
              child: Center(child: Text('$index')),
            );
          }),
    );
  }
}
