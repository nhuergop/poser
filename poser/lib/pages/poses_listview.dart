import 'package:flutter/material.dart';

class PoseListView extends StatefulWidget {
  PoseListView({Key? key}) : super(key: key);

  @override
  State<PoseListView> createState() => _PoseListViewState();
}

class _PoseListViewState extends State<PoseListView> {
  @override
  Widget build(BuildContext context) {
    Size _screen = MediaQuery.of(context).size;

    return ListView(
      children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: _screen.height / 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [Text('shared by @jon and 173 others')]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Text(
                          'Research finds overpopulation could be the biggest threat to humanity. More birth control could be needed.',
                          maxLines: 3,
                          overflow: TextOverflow.visible,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: (3 * _screen.height) / 100),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons
                                .check_circle_outline_rounded, // Icons.check_circle
                            color: Colors.green,
                          ),
                          Text(
                            '543',
                            style: TextStyle(color: Colors.green),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.cancel_outlined,
                              color: Colors.red), // Icons.cancel
                          Text(
                            '345',
                            style: TextStyle(color: Colors.red),
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text('spacebetweennews.com',
                          style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
