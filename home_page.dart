import 'package:flutter/material.dart';
import 'snack.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  static List<Snack> _snacks = [
    Snack(name: 'Chocolate Chip Cookies', imageUrl: 'https://picsum.photos/200'),
    Snack(name: 'Brownies', imageUrl: 'https://picsum.photos/200'),
    Snack(name: 'Cupcakes', imageUrl: 'https://picsum.photos/200'),
    Snack(name: 'Donuts', imageUrl: 'https://picsum.photos/200'),
    Snack(name: 'Fruit Salad', imageUrl: 'https://picsum.photos/200'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: ListView.builder(
        itemCount: _snacks.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
  leading: Image.network(_snacks[index].imageUrl),
  title: Text(_snacks[index].name),
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SnackDetailScreen(snack: _snacks[index])),
    );
  },
),

          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
