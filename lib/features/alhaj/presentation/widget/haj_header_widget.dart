import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nusuk/core/constants/my_colors.dart';
import 'package:nusuk/core/constants/my_images.dart';

class HajHeaderWidget extends StatelessWidget {
  const HajHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * .3,
      decoration: const BoxDecoration(color: MyColors.primary),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          SvgPicture.asset(MyImages.kaabaLogo, height: 80, width: 70),
          const SizedBox(height: 10),
          const Text(
            'دليل الحج الإلكتروني',
            style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const Text(
            'Hajj-Guide',
            style: TextStyle(fontSize: 20, color: Colors.white70),
          ),
        ],
      ),
    );
  }
}