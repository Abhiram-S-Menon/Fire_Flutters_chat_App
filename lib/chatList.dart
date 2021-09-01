class chat {
  String name;
  String lastMessage;
  String image;
  String time;
  bool isActive;
  chat({this.name, this.lastMessage, this.image, this.time, this.isActive});
}

List chatdata = [
  chat(
      name: 'Lalettan',
      lastMessage: 'Ithente puthiya Rayban glass',
       image: 'assets/contact0.jpg',
      time: '5 min ago',
      isActive: true),
  chat(
      name: 'Mammukka',
      lastMessage: 'Sense venam, sensibility venam, sensitivity venam',
      image: 'assets/contact1.jpg',
      time: '30 min ago',
      isActive: false),
  chat(
    name: 'SRK',
    lastMessage: 'Picture Abhi baaki hai mere dost',
    image: 'assets/contact2.jpg',
    time: '2 hour ago',
    isActive: false,
  ),
  chat(
      name: 'Fahadh',
      lastMessage: 'Shammi hero aada hero',
      image: 'assets/contact3.jpg',
      time: '7 hour ago',
      isActive: true),
  chat(
      name: 'Suresh Gopi',
      lastMessage: 'Ormayundo Ee Mukham?',
      image: 'assets/contact4.jpg',
      time: '19 hour ago',
      isActive: false),
  chat(
      name: 'Shashi Tharoor',
      lastMessage:
          'Exasperating farrago of distortions floccinaucinihilipilification',
      image: 'assets/contact5.png',
      time: '1 days ago',
      isActive: true),
  chat(
      name: 'Rajani Kanth',
      lastMessage:
          'Kanna, panni than kootama varum aana Singam single than varum',
      image: 'assets/contact6.jpg',
      time: '2 days ago',
      isActive: false),
       chat(
    name: "Esther Howard",
    lastMessage: "Hello Abdullah! I am...",
    image: "assets/contact7.jpg",
    time: "5 days ago",
    isActive: true,
  ),
  chat(
    name: "Ralph Edwards",
    lastMessage: "Do you have update...",
    image: "assets/contact8.jpg",
    time: "5d ago",
    isActive: false,
  ),
  chat(
    name: "Nolan",
    lastMessage: "You’re welcome :)",
    image: "assets/contact9.jpg",
    time: "1 week ago",
    isActive: true,
  ),
  chat(
    name: "Modi",
    lastMessage: "Mere Pyare Deshvasiyom",
    image: "assets/contact10.jpg",
    time: "4 months ago",
    isActive: false,
  ),
  chat(
    name: "Robert",
    lastMessage: "Hope you are doing well...",
    image: "assets/contact11.jpg",
    time: "1 year ago",
    isActive: true,
  )
];
