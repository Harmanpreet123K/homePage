import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class SpecialOfferContainer extends StatelessWidget {
  const SpecialOfferContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
     height: 84,
     margin: EdgeInsets.symmetric(horizontal: PSizes.defaultSpace/2),
     //padding: EdgeInsets.all(PSizes.lg),
     decoration: BoxDecoration(borderRadius: BorderRadius.circular(PSizes.md),color: Colors.white),
     child: Row(
       mainAxisSize: MainAxisSize.min,
       children: [
         Image.asset(PImages.specialOffer),
         Gap(40),
         Column(
           mainAxisSize: MainAxisSize.min,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Row(
               mainAxisSize: MainAxisSize.min,
               children: [
                 Text('Special Offers',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                 Gap(5),
                 Image.asset(PImages.emoji)
               ],
             ),
             Text('We make sure you get the\noffer you need at best prices',style: TextStyle(fontSize: 12),)
           ],
         )
       ],
     ),
    );
  }
}