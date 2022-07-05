import 'package:poser/models/pose_model.dart';
import 'package:poser/models/user_model.dart';

class DemoValues {
  static final List<UserModel> users = [
    UserModel(
      id: "1",
      name: "Ishfar",
      email: "ishfar@gmail.com",
      followers: 123,
      joined: DateTime(2019, 4, 30),
      poses: [poses[2], poses[3]],
    ),
    UserModel(
      id: "2",
      name: "Ishrak",
      email: "ishrak@gmail.com",
      followers: 456,
      joined: DateTime(2018, 5, 30),
      poses: [poses[1], poses[3]],
    ),
    UserModel(
      id: "3",
      name: "Shakleen",
      email: "shakleen@gmail.com",
      followers: 789,
      joined: DateTime(2017, 6, 30),
      poses: [poses[2], poses[1]],
    ),
  ];

  static final List<PoseModel> poses = [
    PoseModel(
        id: "1",
        sharers: users,
        title:
            "Research finds overpopulation could be biggest threat to humanity. More birth control could be needed",
        veraz: [poses[2], poses[3]],
        mendaz: [poses[2], poses[3]],
        veraz_count: 733,
        mendaz_count: 1554,
        url: 'spacebetweennews.com'),
    PoseModel(
        id: "2",
        sharers: [users[1], users[0]],
        title: "Biden reportedly said not to support BLM anymore",
        veraz: [poses[1], poses[3]],
        mendaz: [poses[1], poses[3]],
        veraz_count: 321,
        mendaz_count: 654,
        url: 'nytimes.com'),
    PoseModel(
        id: "3",
        sharers: [users[2]],
        title: "ISS collided with massive asteroid. Everyone saved by Tesla",
        veraz: [poses[1], poses[2]],
        mendaz: [poses[1], poses[2]],
        veraz_count: 213,
        mendaz_count: 546,
        url: 'xataka.com'),
  ];
}
