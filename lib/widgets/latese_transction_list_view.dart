import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class LateseTransctionListView extends StatelessWidget {
  const LateseTransctionListView({super.key});
  static const iteam = [
    UserInfoModel(
      image: Assets.imagesAvatar1,
      title: 'Mohamed Ahmed',
      subtitle: 'mohamedahmed@gmail.com',
    ),
    UserInfoModel(
      image: Assets.imagesAvatar2,
      title: 'Mohamed Ahmed',
      subtitle: 'mohamedahmed@gmail.com',
    ),
    UserInfoModel(
      image: Assets.imagesAvatar3,
      title: 'Mohamed Ahmed',
      subtitle: 'mohamedahmed@gmail.com',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    // بستخدم دا بو عدد العناصر محدود
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: iteam
            .map(
              (e) => IntrinsicWidth(child: UserInfoListTile(userInfoModel: e)),
            )
            .toList(),
      ),
    );
  }
}

// بستخدم دا لو عدد العناصر كبير
// return SizedBox(
//   height: 80,
//   child: ListView.builder(
//       itemCount: iteam.length,
//       scrollDirection: Axis.horizontal,
//       itemBuilder: (context, index) {
//         return IntrinsicWidth(
//           child: UserInfoListTile(
//             userInfoModel: iteam[index],
//           ),
//         );
//       }),
// );
