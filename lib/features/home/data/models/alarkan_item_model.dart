import 'package:flutter/material.dart';

class AlarkanItemModel {
  final String number;
  final String title;
  final String description;
  final IconData icon;
  final String? image;

  AlarkanItemModel({
    this.image,
    required this.number,
    required this.title,
    required this.description,
    required this.icon,
  });
}
