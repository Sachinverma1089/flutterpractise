import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack Widget"),
        backgroundColor: Colors.green,
      ),
      body: Stack(
        children: [
          Positioned(
            child: Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.red,
                  image: DecorationImage(
                      image: AssetImage('assets/sunset.jpg'),
                      fit: BoxFit.cover)),
            ),
          ),
          Positioned(
              child: Container(
            height: 100,
            width: 100,
            color: Colors.yellow,
          )),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.yellow,
            ),
          )
        ],
      ),
    );
  }
}
