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
            const Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "1/",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 40),
                      ),
                      TextSpan(
                        text: "4",
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
                const Text(
                  "BANGLADESH",
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
                const Text(
                  "The huge delta region at the confluence of the Ganges and Brahmaputra River systems -- now referred to as Bangladesh -- was a loosely incorporated outpost of various empires for much of the first millennium A.D. Muslim conversions and settlement in the region began in the 10th century, primarily from Arab and Persian traders and preachers.",
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
