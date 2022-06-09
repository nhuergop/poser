import 'package:flutter/material.dart';
import 'package:poser/models/pose_model.dart';
import 'package:poser/pages/pose_card.dart';
import 'package:poser/widgets/inherited_pose_model.dart';

class PoseListView extends StatelessWidget {
  final PoseModel poseData;

  const PoseListView({Key? key, required this.poseData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InheritedPoseModel(poseData: poseData, child: PoseCard());
  }
}
