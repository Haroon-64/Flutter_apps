import 'package:flutter/material.dart';

class Prefs extends StatelessWidget {
  const Prefs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text(
              "strength ",
              style: TextStyle(color: Colors.grey),
            ),
            const Text("2"),
            Image.asset(
              'assets/img/o7.png',
              // color: Colors.brown[500],
              // colorBlendMode: BlendMode.multiply,  remove non png thing
              width: 25,
              height: 25,
            ),
            const SizedBox(
              width: 50, // add space between elements
            )
          ],
        ),
        Row(
          children: [
            const Text("suggar ", style: TextStyle(color: Colors.grey)),
            const Text("2"),
            Image.asset( 
              'assets/img/oh.png',
              width: 25,
              // height: 100, // layout should not overflow in such use scrollable parts or expanded widget (grows to take rest of avialible space)

            ),
            const SizedBox(
              width: 50,
            )
          ],
        )
      ],
    );
  }
}
