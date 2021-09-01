import 'package:flutter/material.dart';

class messageBody extends StatelessWidget {
  const messageBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 60,
        color: Colors.green,
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'English Translation',
                  style: TextStyle(fontSize: 21),
                ),
              ),
            ),
            Opacity(
              opacity: 0.54,
              child: Text(
                'To English',
                style: TextStyle(fontSize: 17),
              ),
            ),
            Opacity(opacity: 0.54, child: Icon(Icons.arrow_downward)),
          ],
        ),
      ),
    
    Spacer(),
      text_input()
    ]);
  }
}

class text_input extends StatelessWidget {
  const text_input({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
                margin: EdgeInsets.fromLTRB(20, 0, 0, 20),
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 3),
                        blurRadius: 5,
                        color: Colors.black38)
                  ],
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.sentiment_satisfied_alt_outlined,
                        color: Colors.black,
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Type Message',
                          hintStyle:
                              TextStyle(fontSize: 14.0, color: Colors.black),
                        ),
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.send,
                        color: Colors.black,
                      ),
                    )
                  ],
                )),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: FlatButton(
              onPressed: () {},
              child: Icon(Icons.mic, size: 30, color: Colors.white),
              shape: CircleBorder(),
            ),
          ),
        ],
      ),
    );
  }
}