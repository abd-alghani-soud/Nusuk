import 'package:flutter/material.dart';
import 'package:nusuk/core/constants/my_colors.dart';

class AlsunnanPage extends StatelessWidget {
  const AlsunnanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('السنن', style: TextStyle(color: MyColors.accent)),
        backgroundColor: MyColors.primary,
      ),
    );
  }
}
