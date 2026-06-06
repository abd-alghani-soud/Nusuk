import 'package:flutter/material.dart';
import 'package:nusuk/core/constants/my_colors.dart';
import 'package:nusuk/core/constants/my_images.dart';
import 'package:nusuk/features/home/presentation/page/home_page.dart';

import '../../../alhaj/presentation/page/haj_page.dart';

class GetStartedBody extends StatelessWidget {
  const GetStartedBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(MyImages.mainPhoto),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          left: 50,
          right: 50,
          bottom: 175,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: MyColors.primary,
              padding: EdgeInsets.symmetric(vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(22),
              ),
            ),
            child: Text(
              'إبدأ الرحلة',
              style: TextStyle(color: MyColors.border, fontSize: 32),
            ),
          ),
        ),
      ],
    );
  }
}
