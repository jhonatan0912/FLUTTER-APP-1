import 'package:flutter/material.dart';

// main function is the first thing that run when we start the debugging process
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonName = 'Click';
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // remove debug banner
      debugShowCheckedModeBanner: false,

      // scaffold its like the canvas on javascript
      home: Scaffold(
        // navbar -> AppBar
        appBar: AppBar(
          //Navbar title
          title: const Text('Navbar title'),
        ),
        // Body
        body: Center(
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Row(
              // main => X
              // cross => Y
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      // foreground => text color
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.amberAccent),
                  onPressed: () {
                    setState(() {
                      buttonName = 'Pressed';
                    });
                  },
                  child: Text(buttonName),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      buttonName = 'Pressed';
                    });
                  },
                  child: Text(buttonName),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            const BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            const BottomNavigationBarItem(
              label: 'Settings',
              icon: Icon(Icons.settings),
            ),
            const BottomNavigationBarItem(
                label: 'Favorite',
                icon: Icon(
                  Icons.favorite,
                  color: Colors.pink,
                  size: 24,
                  semanticLabel: 'Favorite',
                ))
          ],
          currentIndex: currentIndex,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
