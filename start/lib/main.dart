import 'package:flutter/material.dart'; // android styles
// ignore: unused_import
import 'package:learning/home.dart';

void main() {
  runApp(const MaterialApp(
      // dont have to rebuild consts
      home:
          Home() // text need to be placed in material ancestor (ex scaffold - base layout) for style
      )); //root widget App
}

// without build, things wont change on hot reloads

//contianer

// Container(
//           // take space required by default
//           color: Colors.blueGrey,
//           // width: 200,
//           // height: 100,
//           padding: const EdgeInsets.all(20),
//           margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
//           child: const Text(
//             "aaaaaa",
//             style: TextStyle(color: Colors.amber,
//             fontSize: 19,
//             decoration: TextDecoration.lineThrough,
//             fontStyle: FontStyle.italic,),

//           ), // child should be last args
//         ),

class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("data"),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        // width is as large as largest elemnt
        // align on main axis(direction of content-  vertical) by default
        mainAxisAlignment: MainAxisAlignment
            .center, // align on main axis(direction of content- vertical) by default
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: 100,
            color: Colors.pink,
            child: const Text("1"),
          ),
          Container(
            width: 200,
            color: Colors.yellow,
            child: const Text("2"),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween, // left to right
            children: [
              Container(
                width: 50,
                height: 100,
                color: Colors.blue,
                child: const Text("a"),
              ),
              Container(
                width: 50,
                color: Colors.red,
                child: const Text("b"),
              ),
              Container(
                width: 20,
                height: 66,
                color: Colors.orange,
                child: const Text("c"),
              ),
              Container(
                width: 50,
                color: Colors.cyan,
                child: const Text("d"),
              )
            ],
          ),
        ],
      ),
    );
  }
}
