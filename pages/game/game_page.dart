import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GamePage extends StatelessWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var r = Random();
    var answer = r.nextInt(100);

    return Scaffold(
      appBar: AppBar(
        title: Text('GUESS THE NUMBER'),
      ),
      body: Container(
        color: Colors.lightGreen,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Icon(
                  Icons.person,
                  size: 80.0,
                  color: Colors.blue,
                ),
                Column(
                  children: [
                    Text(
                      'กรวรรษ พวงแก้ว',
                      style: TextStyle(
                        fontSize: 25.0,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star_outlined,
                          size: 20.0,
                          color: Colors.blue,
                        ),
                        Icon(
                          Icons.star_outlined,
                          size: 20.0,
                          color: Colors.blue,
                        ),
                        Icon(
                          Icons.star_outlined,
                          size: 20.0,
                          color: Colors.blue,
                        ),
                        Icon(
                          Icons.star_outlined,
                          size: 20.0,
                          color: Colors.blue,
                        ),
                        Icon(
                          Icons.star_half_outlined,
                          size: 20.0,
                          color: Colors.blue,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '$answer',
                  style: TextStyle(
                    fontSize: 100.0,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
              child: ElevatedButton(
                onPressed: () {},
                child: Text('RANDOM'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
