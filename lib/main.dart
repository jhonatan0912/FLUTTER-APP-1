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
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                buttonName = 'Pressed';
              });
            },
            child: Text(buttonName),
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
        ),
      ),
    );
  }
}
