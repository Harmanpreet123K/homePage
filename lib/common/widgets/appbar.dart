import 'package:digiprod/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/device/device_utility.dart';

class PAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: PSizes.defaultSpace / 2),
      child: AppBar(
        automaticallyImplyLeading: false,
        leadingWidth: 28,
         leading: CircleAvatar(backgroundColor: PColors.light,radius: 60,child:Image.asset(PImages.lines),),
         centerTitle: true,
        title: SvgPicture.asset(PImages.appLogo),
        actions: [
          Image.asset(PImages.user)
          // CircleAvatar(backgroundColor: PColors.buttonSecondary,
          //   radius: 20,
          // child: Image.asset(PImages.user,width: 40,)),
          ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(PDeviceUtils.getAppBarHeight());
}
