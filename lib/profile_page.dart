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
              Align(
                alignment: Alignment.bottomCenter,
                child: FractionallySizedBox(
                  heightFactor: 0.35,
                  child: Column(
                    children: const [
                      Text(
                        "Hi! I'm Edgar!",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontFamily: "cursive",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        "I'm a programmer!\nI like Holiday",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: "sans-serif-medium",
                            fontWeight: FontWeight.w300),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20),
                      Divider(
                        height: 1.5,
                        color: Colors.white,
                        indent: 40,
                        endIndent: 40,
                      ),
                    ],
                  ),
                ),
              ),
              const ClipOval()
            ],
          ),
        ),
      ),
    );
  }
}
