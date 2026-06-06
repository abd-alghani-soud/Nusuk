import 'package:flutter/material.dart';
import '../../../../core/constants/my_colors.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primary,
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * .3),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(18),
                topRight: Radius.circular(18),
              ),
              child: Container(
                color: MyColors.background,
                width: double.infinity,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
