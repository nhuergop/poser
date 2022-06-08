import 'package:flutter/material.dart';

class PoseDetail extends StatefulWidget {
  PoseDetail({Key? key}) : super(key: key);

  @override
  State<PoseDetail> createState() => _PoseDetailState();
}

class _PoseDetailState extends State<PoseDetail> {
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
    );
  }
}
