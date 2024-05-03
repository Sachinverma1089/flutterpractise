import 'dart:math';

import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet Widget"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Show bottom Sheet"),
          onPressed: () {
            showModalBottomSheet(
                backgroundColor: Theme.of(context).primaryColor,
                isDismissible: false,
                enableDrag: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                context: context,
                builder: (context) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        title: Text("Orange"),
                        subtitle: Text("Orange fruits liked by karan"),
                      ),
                      ListTile(
                        title: Text("Apple"),
                        subtitle: Text("Orange fruits liked by Delta"),
                      ),
                      ListTile(
                        title: Text("Grapes"),
                        subtitle: Text("Orange fruits liked by Gama"),
                      ),
                      ListTile(
                        title: Text("Banana"),
                        subtitle: Text("Orange fruits liked by Beta"),
                      ),
                      ListTile(
                        title: Text("Litchi"),
                        subtitle: Text("Orange fruits liked by Alpha"),
                      ),
                    ],
                  );
                });
          },
        ),
      ),
    );
  }
}
