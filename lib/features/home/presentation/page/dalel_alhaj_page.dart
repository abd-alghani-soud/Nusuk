import 'package:flutter/material.dart';

import '../../../../core/constants/my_colors.dart';

class DalelAlhajPage extends StatelessWidget {
  const DalelAlhajPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('دليل الحج', style: TextStyle(color: MyColors.accent)),
        backgroundColor: MyColors.primary,
      ),
    );
  }
}
