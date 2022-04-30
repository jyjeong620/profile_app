import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Colors.black,
          child: Stack(
            children: [
              FractionallySizedBox(
                heightFactor: 0.5,
                child: Image.asset(
                  "assets/images/background.jpeg",
                  // fit: BoxFit.cover,
                ),
              ),
              FractionallySizedBox(),
              ClipOval()
            ],
          ),
        ),
      ),
    );
  }
}
