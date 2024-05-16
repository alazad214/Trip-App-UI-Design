import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          children: [
            makepage("assets/images/pic1.jpg", "1", "Bangladesh",
                "bangladesh is a beautifull country. it has very large population"),
            makepage("assets/images/pic2.jpg", "2", "Pakistan",
                "bangladesh is a beautifull country. it has very large population"),
            makepage("assets/images/pic3.jpeg", "3", "India",
                "bangladesh is a beautifull country. it has very large population"),
          ],
        ),
      ),
    );
  }

  Widget makepage(image, pageno, title, dis) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                image,
              ),
              fit: BoxFit.cover)),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        decoration: BoxDecoration(
            gradient:
                LinearGradient(begin: Alignment.bottomCenter, stops: const [
          0.1,
          0.9
        ], colors: [
          Colors.black.withOpacity(0.5),
          Colors.black.withOpacity(0.1),
        ])),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                       TextSpan(
                        text: pageno,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 40),
                      ),
                      const TextSpan(
                        text: "/4",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent,
                            fontSize: 22),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                ),
                Row(
                  children: [
                    for (int i = 0; i < 3; i++)
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                      )
                  ],
                ),
                Text(
                  dis,
                  style: TextStyle(color: Colors.white70),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "READ MORE..",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
