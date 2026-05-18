import 'package:flutter/material.dart';

import '../../../../core/constants/my_colors.dart';

class RitualsPage extends StatelessWidget {
  const RitualsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الفرائض', style: TextStyle(color: MyColors.accent)),
        backgroundColor: MyColors.primary,
      ),
    );
  }
}
