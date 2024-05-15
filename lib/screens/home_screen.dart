import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          children: [
            makepage(),
            Container(
              decoration: const BoxDecoration(color: Colors.amberAccent),
            ),
            Container(
              decoration: const BoxDecoration(color: Colors.deepOrange),
            ),
          ],
        ),
      ),
    );
  }

  Widget makepage() {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/images/pic1.jpg",
              ),
              fit: BoxFit.cover)),
      child: Container(
        decoration: BoxDecoration(
            gradient:
                LinearGradient(begin: Alignment.bottomCenter, stops: const [
          0.1,
          0.9
        ], colors: [
          Colors.black.withOpacity(0.5),
          Colors.black.withOpacity(0.1),
        ])),
        child: const Column(
          children: [
            Text(
              "1",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
