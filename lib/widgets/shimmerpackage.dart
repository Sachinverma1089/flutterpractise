import 'package:flutter/material.dart';
import 'package:practiseapp/main.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerEffect extends StatelessWidget {
  const ShimmerEffect({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          "Shimmer Effect",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Container(
            child: Shimmer.fromColors(
                direction: ShimmerDirection.ttb,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        trailing: Text("Hello ji"),
                        subtitle: Text('OHhh'),
                      ),
                    );
                  },
                  itemCount: 9,
                ),
                baseColor: Colors.grey.shade100,
                highlightColor: Colors.white)),
      ),
    );
  }
}
