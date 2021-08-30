import 'package:flutter/cupertino.dart';

class chat{
  String name;
  String lastMessage;
  String image;
  String time;
  bool isActive;
  chat({this.name,this.lastMessage,this.image,this.time,this.isActive});
  List chatdata =[
    chat(name:'Lalettan',
         lastMessage: 'Ithente puthiya Rayban glass',
         time: '2 days ago',
         isActive: false
    ),
      chat(name:'mammukka',
         lastMessage: 'Sense venam, sensibility venam, sensitivity venam',
         time: '2 days ago',
         isActive: false
    ),
      chat(name:'Fahadh',
         lastMessage: 'shammi hero aada hero',
         time: '2 days ago',
         isActive: false
    ),
      chat(name:'Suresh Gopi',
         lastMessage: 'Ormayundo Ee Mukham?',
         time: '2 days ago',
         isActive: false
    ),
      chat(name:'Shashi Tharoor',
         lastMessage: 'Exasperating farrago of distortions floccinaucinihilipilification',
         time: '2 days ago',
         isActive: false
    ),
    chat(name:'Rajani Kanth',
         lastMessage: 'Kanna, panni than kootama varum aana Singam single than varum',
         time: '2 days ago',
         isActive: false
    ),
  ];

}