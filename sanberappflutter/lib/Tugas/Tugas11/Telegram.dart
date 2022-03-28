import 'package:flutter/material.dart';
import 'DrawerScreen.dart';

import 'Models/Chart_model.dart';

class Telegram extends StatefulWidget {
  const Telegram({Key? key}) : super(key: key);

  @override
  _TelegramState createState() => _TelegramState();
}

class _TelegramState extends State<Telegram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Telegram"),
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          )
        ],
      ),
      drawer: const DrawerScreen(),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage(items[index].profileUrl!),
            ),
            title: Text(
              items[index].name!,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(items[index].message!),
            trailing: Text(items[index].time!),
          );
        },
        separatorBuilder: (context, index) {
          return const Divider();
        },
        itemCount: items.length,
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.create, color: Colors.white),
        backgroundColor: const Color(0xFF65a9e0),
        onPressed: () {},
      ),
    );
  }
}
