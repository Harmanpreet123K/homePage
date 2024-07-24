import 'package:carousel_slider/carousel_slider.dart';
import 'package:digiprod/features/shop/controllers/home_controller.dart';
import 'package:digiprod/features/shop/screens/home/widgets/buttonWithIcon.dart';
import 'package:digiprod/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/circular_container.dart';
import '../../../../../utils/constants/sizes.dart';

class PCarouselSlider extends StatelessWidget {
  const PCarouselSlider({
    super.key, required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index,_) => controller.updatePageIndicator(index)
          ),
          items: banners.map((url) => PRoundedImage(image: url,)).toList(),
        ),
        const SizedBox(height: PSizes.spaceBtwItems/2,),
        Center(
          child: Obx(
            () =>  Row(
              mainAxisSize: MainAxisSize.min,
              children: [
              for(int i =0; i<banners.length ; i++) PCircularContainer(backgoundColor: controller.carouselCurrentIndex.value == i ? PColors.primary : PColors.buttonDisabled,),
            ],),
          ),
        )
      ],
    );
  }
}

class PRoundedImage extends StatelessWidget {
  const PRoundedImage({
    super.key, required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(PSizes.md),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(PSizes.md),
          child: Image.asset(image)),
      ),
      Positioned(
        top: 40,
        left: 10,
        height: 109,
        width: 136,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text('50-40% OFF',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
          Text('Now in (product)',style: TextStyle(fontSize: 12,color: Colors.white),),
          Text('All colours',style: TextStyle(fontSize: 12,color: Colors.white),),
          ButtonWithIcon(label: 'Shop Now', icon: Iconsax.arrow_right_1, width: 100, height: 32, iconSize: 16, color: PColors.primary, iconColor: Colors.white, style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600,color: Colors.white),showBorderSide: true,)
        ],),
      )
      ]
    );
  }
}