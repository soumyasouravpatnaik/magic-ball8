import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(
      MaterialApp(
        home: Ball()
      ),
    );


class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int randValue = 1;
  @override
  Widget build(BuildContext context) {
    return Container(child: Scaffold(
        appBar: AppBar(
          title: Text('Magic Ball 5'),
          backgroundColor: Colors.red,
        ),
        body:

        Container(
          color: Colors.blueAccent,
          child: Center(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(onPressed: () {
                    setState(() {
                      randValue = random();
                    });

                    print(randValue);
                  }, child: Image.asset('images/ball$randValue.png')),
                ),

              ],
            ),
          ),
        )
    ),
    );
  }
}

int random(){
  var rng = new Random();
  return rng.nextInt(5) + 1;
}