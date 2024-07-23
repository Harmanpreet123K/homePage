import 'package:digiprod/common/widgets/shimmer/shimmer.dart';
import 'package:digiprod/features/shop/screens/home/widgets/blank.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/sizes.dart';

class PCategoryShimmer extends StatelessWidget {
  const  PCategoryShimmer({
    super.key, this.itemCount = 5,
  });

  final int itemCount;

  @override
  Widget build(BuildContext context) {

    return Container(
        padding: const EdgeInsets.symmetric(horizontal: PSizes.defaultSpace/2),
        width: double.infinity,
        height: 87,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16)
        ),
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: itemCount,
          scrollDirection: Axis.horizontal,
          separatorBuilder: (_,__) => const SizedBox(width: PSizes.spaceBtwItems,),
          itemBuilder: (_,index) {
            return InkWell(
              onTap: () => Get.to(() => const BlankPage()),
              child: Column(
                children: [
                  PShimmerEffect(width: 56, height: 56,radius: 56,),
                  
                  const SizedBox(height: PSizes.xs,),
                  PShimmerEffect(width: 55, height: 11)
                ],
              ),
            );
          }),
      );
    }
  }

