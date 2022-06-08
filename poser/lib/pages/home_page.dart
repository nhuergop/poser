import 'package:flutter/material.dart';
import 'package:poser/pages/poses_listview.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        leading: Builder(builder: (context) {
          return IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {},
            tooltip: 'Profile',
          );
        }),
        title: const Text('Poser'),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.comment),
            tooltip: 'Give your opinion',
          )
        ],
      ),
      body: PoseListView(),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: IconButton(
                icon: const Icon(Icons.account_circle),
                onPressed: () {},
              ),
              label: 'Profile'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
