import 'package:flutter/material.dart';
import 'package:poser/models/pose_model.dart';
import 'package:poser/models/user_model.dart';
import 'package:poser/pages/pose_detail.dart';
import 'package:poser/widgets/inherited_pose_model.dart';

class PoseCard extends StatelessWidget {
  const PoseCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _screen = MediaQuery.of(context).size;

    final PoseModel poseData = InheritedPoseModel.of(context).poseData;

    final List<UserModel> sharers_list = poseData.sharers;
    String sharers = ' ';
    final String title = poseData.title;
    final int veraz_count = poseData.veraz_count;
    final int mendaz_count = poseData.mendaz_count;
    final String url = poseData.url;

    String getSharersList() {
      for (var sharer in sharers_list) {
        if (sharer == sharers_list[0]) {
          sharers = sharers + sharer.name;
        } else {
          sharers = sharers + ', ' + sharer.name;
        }
      }
      return sharers;
    }

    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) {
          return PoseDetail(
            poseData: poseData,
          );
        }));
      },
      child: Card(
        color: Theme.of(context).primaryColorLight,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: _screen.height / 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [Text('shared by' + getSharersList())]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Text(
                        title,
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
                          '${veraz_count}',
                          style: TextStyle(color: Colors.green),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(Icons.cancel_outlined,
                            color: Colors.red), // Icons.cancel
                        Text(
                          '${mendaz_count}',
                          style: TextStyle(color: Colors.red),
                        )
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(url,
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
    );
  }
}
