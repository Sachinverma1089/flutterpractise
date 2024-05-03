import 'dart:math';

import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Buttons"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //textButton
            TextButton(
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.all(50)),
                  // overlayColor: MaterialStateProperty.all(Colors.black),
                  elevation: MaterialStateProperty.all(20),
                  backgroundColor: MaterialStateProperty.all(Colors.yellow)),
              child: Text(
                "ClickHere",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              onPressed: () {},
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 300,
              child: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)))),
                onPressed: () {
                  print("clicked");
                },
                child: Text(
                  "Click Here",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
