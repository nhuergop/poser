import 'package:flutter/material.dart';
import 'package:poser/models/pose_model.dart';

class UserModel {
  final String id;
  final String name;
  final String email;
  // final String image;
  final int followers;
  final DateTime joined;
  // las poses para listarlas en perfil
  final List<PoseModel> poses;

  const UserModel({
    required this.id,
    required this.name,
    required this.email,
    // required this.image,
    required this.followers,
    required this.joined,
    required this.poses,
  });
}
