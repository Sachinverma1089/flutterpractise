import 'package:flutter/material.dart';

class SnackbarWidget extends StatelessWidget {
  const SnackbarWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Snackbar"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final snackbar = SnackBar(
              action: SnackBarAction(
                label: 'undo',
                onPressed: () {},
              ),

              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              behavior: SnackBarBehavior.floating,
              // padding: EdgeInsets.all(20),
              duration: const Duration(milliseconds: 3000),
              // backgroundColor: Colors.red,
              content: Text("You have clicked a buttorn"),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackbar);
          },
          child: Text("Show snackbar"),
        ),
      ),
    );
  }
}
