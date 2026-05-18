import 'package:flutter/material.dart';
import 'package:nusuk/core/constants/my_colors.dart';
import '../../../../home/presentation/page/home_page.dart';

class GetStartedBod extends StatelessWidget {
  const GetStartedBod({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/home_page_image.jpg'),
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
            child: Text(
              'إبدأ الرحلة',
              style: TextStyle(color: MyColors.border, fontSize: 32),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: MyColors.primary,
              padding: EdgeInsets.symmetric(vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(22),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
