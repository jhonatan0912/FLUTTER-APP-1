import 'package:flutter/material.dart';

// main function is the first thing that run when we start the debugging process
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonName = 'Click';
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // remove debug banner

      // scaffold its like the canvas on javascript
      home: Scaffold(
        // navbar -> AppBar
        appBar: AppBar(
          title: const Text('Navbar title'), //Navbar title
        ),
        // Body
        body: Center(
          child: currentIndex == 0
              ? Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Colors.black, //background app color
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start, // main => X
                    crossAxisAlignment: CrossAxisAlignment.center, // cross => Y
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            foregroundColor:
                                Colors.white, // foreground => text color
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
                )
              // Image.asset(name)
              // Image.file(file)
              // Image.memory(bytes)
              // Image.network(src)
              : Image.network(
                  'https://images4.alphacoders.com/127/1271728.jpg'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Settings',
              icon: Icon(Icons.settings),
            ),
            BottomNavigationBarItem(
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
