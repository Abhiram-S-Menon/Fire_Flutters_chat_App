import 'package:chatapp/chatBody.dart';
import 'package:flutter/material.dart';

class chatPage extends StatefulWidget {
  @override
  _chatPageState createState() => _chatPageState();
}

class _chatPageState extends State<chatPage> {
  void changeIndex(int index)
  {
    setState(() {
          _cureentindex=index;
        });
    
  }
  int _cureentindex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: designAppBar(),
      body: chatBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.person_add_alt_1_rounded),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:_cureentindex,
        selectedItemColor: Colors.green,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.messenger,
            ),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.people_alt,
            ),
            label: 'People',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.call,
            ),
            label: 'Call',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundImage: AssetImage('assets/dp.png'),
              radius: 21,
            ),
            label: 'Profile',
          ),
        ],
        onTap: changeIndex,
        type: BottomNavigationBarType.fixed,
      ),
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
