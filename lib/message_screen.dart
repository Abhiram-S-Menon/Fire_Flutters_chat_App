import 'package:flutter/material.dart';
import 'package:chatapp/chatList.dart';

import 'message_screen2.dart';

class messageScreen extends StatelessWidget {
  final index;
  messageScreen(this.index);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.green,
          actions: [
            Icon(Icons.call, size: 30, color: Colors.white),
            SizedBox(width: 20),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
              child: Icon(Icons.videocam, size: 30, color: Colors.white),
            ),
          ],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(chatdata[index].image),
                radius: 20,
              ),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(chatdata[index].name, style: TextStyle(fontSize: 23)),
                  if (chatdata[index].isActive)
                    Opacity(
                      opacity: 0.7,
                      child: Text(
                        'Online',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
        body: messageBody(),
      ),
    );
  }
}


