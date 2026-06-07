import 'package:flutter/cupertino.dart';
import 'package:nusuk/core/constants/my_colors.dart';
import 'package:nusuk/core/constants/my_images.dart';
import 'package:nusuk/features/alhaj/data/models/menu_item_model.dart';
import 'package:nusuk/core/widgets/custom_gridview.dart';
import 'package:nusuk/features/azkar/presentation/widgets/azkar_alestikaz.dart';
import 'package:nusuk/features/azkar/presentation/widgets/azkar_almsaa.dart';
import 'package:nusuk/features/azkar/presentation/widgets/azkar_alnoom.dart';
import 'package:nusuk/features/azkar/presentation/widgets/azkar_alsabah.dart';

class AzkarBodyPage extends StatelessWidget {
  AzkarBodyPage({super.key});

  final List<MenuItemModel> menuItem = [
    MenuItemModel(
      title: 'أذكار الصباح',
      image: MyImages.zuker1,
      navigationPage: AzkarAlsabah(),
    ),
    MenuItemModel(
      title: 'أذكار المساء',
      image: MyImages.zuker2,
      navigationPage: AzkarAlmsaa(),
    ),
    MenuItemModel(
      title: 'أذكار الاستيقاظ',
      image: MyImages.zuker4,
      navigationPage: AzkarAlestikaz(),
    ),
    MenuItemModel(
      title: 'أذكار النوم',
      image: MyImages.zuker3,
      navigationPage: AzkarAlnoom(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18),
              topRight: Radius.circular(18),
            ),
            child: Container(
              color: MyColors.background,
              width: double.infinity,
              child: CustomGridView(menuItem: menuItem),
            ),
          ),
        ),
      ],
    );
  }
}
