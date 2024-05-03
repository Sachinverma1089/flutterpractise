import 'package:flutter/material.dart';

class EncryptionString extends StatefulWidget {
  const EncryptionString({super.key});

  @override
  State<EncryptionString> createState() => _EncryptionStringState();
}

class _EncryptionStringState extends State<EncryptionString> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text(
        "Encryption",
      ),
    ));
  }
}
