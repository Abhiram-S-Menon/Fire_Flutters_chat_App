import 'package:chatapp/message_screen.dart';
import 'package:flutter/material.dart';
import 'package:chatapp/chatList.dart';

class chatBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          heading_buttons(),
          Expanded(
            child: ListView.builder(
              itemCount: chatdata.length,
              itemBuilder: (context, index) => Card(
                elevation: 0,
                child: SizedBox(
                  height: 100,
                    child: InkWell(
                      onTap: () {
                        print('Navigated');
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (BuildContext context) {
                            return messageScreen(index);
                          }),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage(chatdata[index].image),
                                radius: 30,
                              ),
                              if (chatdata[index].isActive)
                                Icon(
                                  Icons.circle,
                                  color: Colors.green,
                                  size: 15,
                                ),
                            ],
                          ),
                          SizedBox(width: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                chatdata[index].name,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                width: 200,
                                child: Opacity(
                                  opacity: 0.54,
                                  child: Text(
                                    chatdata[index].lastMessage,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Opacity(
                              opacity: 0.65, child: Text(chatdata[index].time))
                        ],
                      ),
                    ),
                  
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class heading_buttons extends StatelessWidget {
  const heading_buttons({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Row(children: [
          SizedBox(width: 10),
          FlatButton(
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            color: Colors.white,
            child: Text(
              'Chats',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
          ),
          SizedBox(width: 25),
          FlatButton(
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            color: Colors.green.shade700,
            child: Text(
              'Active',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
          ),
        ]),
      ),
    );
  }
}
