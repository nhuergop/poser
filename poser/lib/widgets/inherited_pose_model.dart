import 'package:flutter/material.dart';
import 'package:poser/models/pose_model.dart';

class InheritedPoseModel extends InheritedWidget {
  final PoseModel poseData;

  InheritedPoseModel({
    Key? key,
    required this.poseData,
    required Widget child,
  }) : super(key: key, child: child);

  static InheritedPoseModel of(BuildContext context) {
    final InheritedPoseModel? result =
        context.dependOnInheritedWidgetOfExactType<InheritedPoseModel>();
    assert(result != null, 'No InheritedPoseModel found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(InheritedPoseModel old) {
    return poseData != old.poseData;
  }
}
