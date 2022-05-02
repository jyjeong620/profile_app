import 'package:flutter/material.dart';
import 'package:profile_app/avatar.dart';
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
              _createBackground(),
              _createContents(),
              _createAvatar(),
            ],
          ),
        ),
      ),
    );
  }
  Widget _createBackground() {
    return FractionallySizedBox(
      heightFactor: 0.5,
      child: Image.asset(
        "assets/images/background.png",
        // fit: BoxFit.cover,
      ),
    );
  }

  Widget _createContents() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: FractionallySizedBox(
        heightFactor: 0.5,
        child: Column(
          children: [
            const SizedBox(height: 70),
            _createIntroduce(),
            const SizedBox(height: 10),
            _createMessage(),
            const SizedBox(height: 20),
            const Divider(
              height: 1.5,
              color: Colors.white,
              indent: 10,
              endIndent: 10,
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipOval(
                  child: SizedBox(
                    width: 70,
                    height: 70,
                    child: MaterialButton(
                      onPressed: () {},
                      child: Image.asset("assets/images/blog.png")
                    ),
                  ),
                ),
                ClipOval(
                  child: SizedBox(
                    width: 70,
                    height: 70,
                    child: MaterialButton(
                      onPressed: () {},
                        child: Image.asset("assets/images/github.png")
                    ),
                  ),
                ),
                ClipOval(
                  child: SizedBox(
                    width: 70,
                    height: 70,
                    child: MaterialButton(
                        onPressed: () {},
                        child: Image.asset("assets/images/email.png")
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _createIntroduce() {
    return const Text(
      "Hi! I'm Edgar!",
      style: TextStyle(
        color: Colors.white,
        fontSize: 50,
        fontFamily: "cursive",
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget _createMessage() {
    return const Text(
      "I'm a programmer!\nI like Holiday",
      style: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontFamily: "sans-serif-medium",
          fontWeight: FontWeight.w300),
      textAlign: TextAlign.center,
    );
  }

  Widget _createAvatar() {
    return const Align(
      child: Avatar(),
    );
  }
}
