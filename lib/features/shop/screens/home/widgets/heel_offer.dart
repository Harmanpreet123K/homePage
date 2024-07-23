import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import 'buttonWithIcon.dart';

class PFlatHeelOffer extends StatelessWidget {
  const PFlatHeelOffer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 172,
      margin: EdgeInsets.symmetric(horizontal: PSizes.defaultSpace / 2),
      child: Stack(
        children: [
          Positioned(
            top: 8,
            left:8,
            child: Container(
              width: 331,
              height: 155,
              color: PColors.background,
              child: Stack(
                children: [
                  Positioned(
                    top: 8,
                    right: 260,
                    child: Image.asset(PImages.sparkle)),
                            Positioned(
            top: 32,
            left: 16,
            child: Image.asset(PImages.heels)),
                            Positioned(
            top: 43,
            left: 136,
            height: 73,
            width: 163,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Center(
                  child: Text(
                    'Flat and Heels',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                  ),
                ),
                Text(
                  'Stand a chance to get rewarded',
                  style: TextStyle(fontSize: 9.6),
                ),
                ButtonWithIcon(
                  width: 92,
                  height: 24,
                  color: PColors.button,
                  label: 'Visit Now',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
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
            ),
          ),
          Positioned(
          left: 0,
          child: Image.asset(PImages.rod)),
        
        ]
      ),
    );
  }
}