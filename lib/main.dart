import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
_selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: ListView(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.blue,
                        height: 100,
                        child: const Center(child: Text('Row Item 1')),
                      ),
                    ),
Container(
                      color: Colors.yellow,
                      child: const Center(child: Text('Grid Item 2')),
                    ),
                  ],
                ),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Text('Aligned Text'),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Padded Text'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Elevated Button'),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('Outlined Button'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Text Button'),
                ),
                Transform.rotate(
                  angle: 0.1,
                  child: Container(
                    color: Colors.purple,
child: const Text('Transformed Container'),
                  ),
                ),
                ConstrainedBox(
                  constraints: const BoxConstraints(
                    minHeight: 100,
                    minWidth: 100,
                  ),
                  child: Container(
                    color: Colors.orange,
                    child: const Text('Constrained Box'),
                  ),
                ),
                FittedBox(
                  child: Container(
                    color: Colors.cyan,
                    child: const Text('Fitted Box'),
                  ),
                ),
                RotatedBox(
                  quarterTurns: 1,
                  child: Container(
                    color: Colors.teal,
                    child: const Text('Rotated Box'),
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 100,
                  child: Container(
color: Colors.pink,
                    child:const Text('Sized Box'),
                  ),
                ),
                Image.asset('assets/image1.jpg', width: 100, height: 100),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

