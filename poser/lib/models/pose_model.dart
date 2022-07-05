import 'package:flutter/material.dart';
import 'package:poser/models/user_model.dart';

class PoseModel {
  final String id;
  final List<UserModel> sharers;
  final String title;
  final List<PoseModel> veraz;
  final List<PoseModel> mendaz;
  final int veraz_count;
  final int mendaz_count;
  final String url;

  const PoseModel({
    required this.id,
    required this.sharers,
    required this.title,
    required this.veraz,
    required this.mendaz,
    required this.veraz_count,
    required this.mendaz_count,
    required this.url,
  });
}
