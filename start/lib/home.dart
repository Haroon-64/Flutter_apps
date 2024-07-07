import 'package:flutter/material.dart';
import 'package:learning/prefs.dart';

class Home extends StatelessWidget {
  //stl
  const Home({super.key}); //constructor  key= id optional

  @override
  Widget build(BuildContext context) {
    // return widgets / tree            |  context -  location...
    return Scaffold(
        appBar: AppBar(
          // cant be const
          title: const Text(
            "wrap",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: const Color.fromARGB(122, 20, 83, 83),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.brown[100],
              padding: const EdgeInsets.all(10),
              child: const Text("cont1"),
            ),
            Container(
              color: Colors.brown[500],
              padding: const EdgeInsets.all(10),
              child: const Prefs(),
            ),
          ],
        )); // fill whole space - Placeholder
  }
}
