import 'package:flutter/material.dart';
import 'package:nusuk/features/home/presentation/widget/alfaraed_page_body.dart';

import '../../../../core/constants/my_colors.dart';
import '../../../../core/constants/my_images.dart';
import '../../data/models/alarkan_item_model.dart';

class AlfaraedPage extends StatelessWidget {
  const AlfaraedPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<AlarkanItemModel> alfaraedList = [
      AlarkanItemModel(
        number: '1',
        title: 'الإحرام',
        description:
            'هو نية الدخول في نسك الحج. ولا يعتبر الإحرام مجرد ارتداء ملابس الإحرام، بل هو نية قلبية جازمة بالبدء في أعمال الحج.',
        image: MyImages.ruken1,
      ),
      AlarkanItemModel(
        image: MyImages.ruken2,
        number: '2',
        title: 'الوقوف بعرفة',
        description:
            'هو الركن الأعظم في الحج، لقول النبي محمد ﷺ: «الحَجُّ عَرَفَةُ».',
      ),
      AlarkanItemModel(
        image: MyImages.ruken3,
        number: '3',
        title: 'طواف الإفاضة',
        description:
            'ويسمى أيضاً (طواف الزيارة) أو (طواف الفرض)، وهو الطواف الذي يؤديه الحاج بعد فيضانه من المزدلفة والذهاب إلى مكة.',
      ),
      AlarkanItemModel(
        image: MyImages.ruken4,
        number: '4',
        title: 'السعي بين الصفا والمروة',
        description:
            'وهو السعي سبعة أشواط يبدأ فيها الحاج من الصفا ويختم بالمروة.',
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'الفرائض',
          style: TextStyle(color: MyColors.accent, fontWeight: FontWeight.bold),
        ),
        backgroundColor: MyColors.primary,
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: MyColors.accent),
        ),
      ),
      body: AlfaraedPageBody(alfaraedList: alfaraedList),
    );
  }
}
