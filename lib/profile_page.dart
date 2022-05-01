import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

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
                    children: [
                      const Text(
                        "Hi! I'm Edgar!",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontFamily: "cursive",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        "I'm a programmer!\nI like Holiday",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: "sans-serif-medium",
                            fontWeight: FontWeight.w300),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      const Divider(
                        height: 1.5,
                        color: Colors.white,
                        indent: 40,
                        endIndent: 40,
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ClipOval(
                            child: SizedBox(
                              width: 80,
                              height: 80,
                              child: MaterialButton(
                                onPressed: () {},
                                child: const Icon(Icons.email),
                              ),
                            ),
                          ),
                          ClipOval(
                            child: SizedBox(
                              width: 80,
                              height: 80,
                              child: MaterialButton(
                                onPressed: () {},
                                child: const Icon(Icons.email),
                              ),
                            ),
                          ),
                          ClipOval(
                            child: SizedBox(
                              width: 80,
                              height: 80,
                              child: MaterialButton(
                                onPressed: () {},
                                child: const Icon(Icons.email),
                              ),
                            ),
                          )
                        ],
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
