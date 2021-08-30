import 'package:chatapp/chatBody.dart';
import 'package:flutter/material.dart';

class chatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: designAppBar(),
      body: chatBody(),
    );
  }

  AppBar designAppBar() {
    return AppBar(
      elevation: 0,
      title: Text(
        'Chit Chat',
        style: TextStyle(
          fontSize: 24,
        ),
      ),
      backgroundColor: Colors.green,
      actions: [
        Icon(
          Icons.search,
          size: 30,
        ),
      ],
    );
  }
}
