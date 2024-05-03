import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Widget"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 150,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    blurRadius: 10,
                    color: Colors.grey.shade800,
                    spreadRadius: 5.0)
              ],
              image: DecorationImage(
                image: NetworkImage(
                  'https://static.vecteezy.com/system/resources/previews/027/806/381/original/doraemon-cute-free-vector.jpg',
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(20)),
        ),
      ),
    );
  }
}
