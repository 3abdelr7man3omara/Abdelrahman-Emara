import 'package:flutter/material.dart';
import 'package:online_shop/Screens/sign-in.dart';
import 'package:online_shop/Screens/sign-up.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    bool hoveredOn = true;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 137, 42, 226),
        title: const Text(
          "Online Shop",
        ),
        centerTitle: true,
        titleTextStyle: const TextStyle(
            fontFamily: "myfont",
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white),
      ),
      body: Container(
        color: const Color.fromARGB(255, 137, 42, 226),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Start Your Premium Online Shopping",
              style: TextStyle(color: Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width / 2.5,
                    height: MediaQuery.of(context).size.height / 2.5,
                    child: Image.asset(
                        "assets/images/ff757431-d0c0-49de-ace8-d8b3b07deb6a.jpeg")),
                Container(
                    width: MediaQuery.of(context).size.width / 2.5,
                    height: MediaQuery.of(context).size.height / 2.5,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Image.network(
                        "https://i.pinimg.com/736x/6c/00/fc/6c00fc495c3cb03711da23945dc5ad81.jpg")),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: const Color.fromARGB(255, 137, 42, 226),
                  ),
                  onHover: (value) {
                    hoveredOn = false;
                    setState(() {});
                  },
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Sign_up()));
                  },
                  child: const Text('sign-up'),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: hoveredOn
                        ? const Color.fromARGB(255, 137, 42, 226)
                        : const Color.fromARGB(255, 137, 42, 226),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Sign_in()));
                  },
                  child: const Text('sign-in'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
