import 'package:digiprod/features/shop/screens/home/widgets/blank.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class PSponserd extends StatelessWidget {
  const PSponserd({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 374,
      margin: EdgeInsets.only(left: PSizes.defaultSpace / 2),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(PSizes.sm),color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 8, 0, 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sponserd',
              style:
                  TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            Gap(5),
            Image.asset(PImages.shoes),
            Gap(5),
            Row(
              children: [
                Text(
                  'up to 50% Off',
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: InkWell(
                    onTap: () => Get.to(() => const BlankPage()),
                    child: Icon(
                      Iconsax.arrow_right_34,
                      size: 14,
                      weight: 15,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}