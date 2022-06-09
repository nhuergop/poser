import 'package:flutter/material.dart';
import 'package:poser/models/pose_model.dart';

class PoseDetail extends StatelessWidget {
  final PoseModel poseData;

  const PoseDetail({Key? key, required this.poseData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Poser'),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.comment),
            tooltip: 'Give your opinion',
          )
        ],
      ),
      body: Center(child: Text(poseData.title)),
    );
  }
}
