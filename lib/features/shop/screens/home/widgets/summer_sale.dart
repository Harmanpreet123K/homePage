import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import 'buttonWithIcon.dart';

class PHotSummerSale extends StatelessWidget {
  const PHotSummerSale({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      margin: EdgeInsets.symmetric(horizontal: PSizes.defaultSpace / 2),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(PSizes.md),color: Colors.white),
      child: Column(
        children: [
          Image.asset(PImages.summerSale),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'New Arrivals',
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Summer' 25 Collections",
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
                Spacer(),
                ButtonWithIcon(
                  width: 89,
                  height: 28,
                  color: PColors.button,
                  label: 'View all',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                  icon: Iconsax.arrow_right_1,
                  iconColor: Colors.white,
                  iconSize: 16,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}