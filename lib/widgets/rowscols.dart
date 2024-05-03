import 'package:flutter/material.dart';

class RowsCols extends StatelessWidget {
  const RowsCols({super.key});
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Rows and Columns"),
      ),
      body: Container(
        color: Colors.black,
        height: h,
        width: w,
        // child: Row(
        //     // direction: Axis.vertical,
        //     // alignment: WrapAlignment.end,
        //     // mainAxisAlignment: MainAxisAlignment.start,
        //     // crossAxisAlignment: CrossAxisAlignment.center,
        //     children: [
        //       Container(height: 60, width: 60, color: Colors.red),
        //       Container(height: 60, width: 60, color: Colors.blue),
        //       Container(height: 60, width: 60, color: Colors.green),
        //       Container(height: 60, width: 60, color: Colors.orange),
        //       Container(height: 60, width: 60, color: Colors.white),
        //     ]),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(height: 60, width: 60, color: Colors.red),
              Container(height: 60, width: 60, color: Colors.blue),
              Container(height: 60, width: 60, color: Colors.green),
              Container(height: 60, width: 60, color: Colors.orange),
              Container(height: 60, width: 60, color: Colors.white),
            ]),
      ),
    );
  }
}
