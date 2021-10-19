import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Message'),
      ),
      body: Center(
          child: Text(
        "WELCOME! There's no message yet!",
        style: TextStyle(
            color: Colors.black, fontSize: 50, fontWeight: FontWeight.bold),
      )),
    );
  }
}

