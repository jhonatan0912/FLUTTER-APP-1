import 'package:flutter/material.dart';

// main function is the first thing that run when we start the debugging process
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
        body: const Text('Body text'),
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
        ),
      ),
    );
  }
}
