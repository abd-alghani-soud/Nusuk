import 'package:flutter/material.dart';

class MenuItemModel {
  final String title;
  final String imageUrl;
  final Widget navigationPage;

  MenuItemModel({
    required this.title,
    required this.imageUrl,
    required this.navigationPage,
  });
}