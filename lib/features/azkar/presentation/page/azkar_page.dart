import 'package:flutter/material.dart';
import 'package:nusuk/core/constants/my_colors.dart';
import 'package:nusuk/features/azkar/presentation/widgets/azkar_body_page.dart';

class AzkarPage extends StatelessWidget {
  const AzkarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'الأذكار',
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
        ),
        backgroundColor: MyColors.primary,
      ),
      body: AzkarBodyPage(),
    );
  }
}
