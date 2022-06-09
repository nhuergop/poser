import 'package:flutter/material.dart';
import 'package:poser/demo_values/demo_pose.dart';
import 'package:poser/pages/pose_card.dart';
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
        automaticallyImplyLeading: true,
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
      body: ListView.builder(
        itemCount: DemoValues.poses.length,
        itemBuilder: (BuildContext context, int index) {
          return PoseListView(poseData: DemoValues.poses[index]);
        },
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
