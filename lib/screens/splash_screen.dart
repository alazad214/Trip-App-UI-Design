import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Set<Map> languages = {
    {
      "language": "Java",
      "dis": "java is a very powerfull programmig language."
    },
    {
      "language": "kotlin",
      "dis": "java is a very powerfull programmig language."
    },
    {
      "language": "python",
      "dis": "java is a very powerfull programmig language."
    },
    {
      "language": "rubby",
      "dis": "java is a very powerfull programmig language."
    }
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Refressh indicator"),
        centerTitle: true,
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: RefreshIndicator(
            onRefresh: () => Future.delayed(Duration(seconds: 3)),
            child: ListView.builder(
                itemCount: languages.length,
                itemBuilder: (_, index) {
                  return ListTile(
                    title: Text(languages.elementAt(index)["language"]),
                    subtitle: Text(languages.elementAt(index)["dis"]),
                  );
                }),
          )),
    );
  }
}
