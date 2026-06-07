import 'package:flutter/material.dart';
import 'package:nusuk/core/constants/my_colors.dart';
import '../widget/dalel_widgets/dalel_alhaj_page_body.dart';

class DalelAlhajPage extends StatefulWidget {
  const DalelAlhajPage({super.key});

  @override
  State<DalelAlhajPage> createState() => _DalelAlhajPageState();
}

class _DalelAlhajPageState extends State<DalelAlhajPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7FAFA),
      appBar: AppBar(
        backgroundColor: MyColors.primary,
        title: const Text(
          'دليل الحاج التفاعلي',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            color: MyColors.accent,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back),
          color: MyColors.accent,
        ),
      ),

      body: DalelAlhajPageBody(),
    );
  }
}
