import 'package:flutter/material.dart';

import '../../../../core/constants/my_colors.dart';

class PillarsPage extends StatelessWidget {
  const PillarsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الأركان', style: TextStyle(color: MyColors.accent)),
        backgroundColor: MyColors.primary,
      ),
    );
  }
}
