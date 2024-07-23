import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import 'buttonWithIcon.dart';

class PDealContainer extends StatelessWidget {
  const PDealContainer({
    super.key, required this.title, required this.subtitle, required this.icon, required this.bgColor, required this.btnColor,
  });

  final String title,subtitle;
  final IconData icon;
  final Color bgColor,btnColor;

  @override
  Widget build(BuildContext context) {
    return Container(
     padding: EdgeInsets.fromLTRB(PSizes.sm,PSizes.sm,PSizes.md,PSizes.sm),
     margin: EdgeInsets.symmetric(horizontal:PSizes.defaultSpace/2),
     height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(PSizes.md),
            color: bgColor
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [
       Text(title,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),),
       Row(
         children: [
           Icon(icon,color: Colors.white,size: 16,),
           Gap(4),
           Text(subtitle,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.white),),
         ],
       )
     ],
              ),
              Spacer(),
             ButtonWithIcon(showBorderSide: true,width: 89,height: 28,color: btnColor,label: 'View all',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600,color: Colors.white),icon: Iconsax.arrow_right_1,iconColor: Colors.white,iconSize: 16,)
            ],
          ),
        );
  }
}