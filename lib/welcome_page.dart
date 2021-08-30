import 'package:chatapp/sign_in.dart';
import 'package:flutter/material.dart';

class welcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/welcome_image.png',
          ),
          SizedBox(height: 50),
          Text(
            'Welcome',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          Spacer(flex: 2),
          TextButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Skip',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                Icon(Icons.arrow_forward),
              ],
            ),
            onPressed: () {
              print('Navigated');
              Navigator.push(
                context,
                MaterialPageRoute(builder: (BuildContext context) {
                  return SignInPage();
                }),
              );
            },
          )
        ],
      ),
    );
  }
}
