import 'package:digiprod/features/shop/screens/home/widgets/blank.dart';
import 'package:digiprod/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../utils/constants/image_strings.dart';
import '../../utils/constants/sizes.dart';
import '../styles/shadow.dart';

class PProductCard extends StatelessWidget {
  const PProductCard({super.key, required this.width, required this.height, required this.size, required this.title, required this.priceOrg, required this.price, required this.off, required this.image, this.showHeading =false, this.showRating = false});

  final double width,height,size;
  final String title,priceOrg,price,off,image;
  final bool showHeading,showRating;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,//241,
      child: Stack(
        children: [ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: PSizes.defaultSpace/2),
            separatorBuilder: (context,index) => const SizedBox(width: PSizes.sm,),
            shrinkWrap: true,
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_,index) {
             return InkWell(
              onTap: () => Get.to(() => const BlankPage()),
               child: Container(
                          width: width,//170,
                          height: height,//241,
                          //padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
               boxShadow: [PShadowStyle.verticalProductShadow],
               color: Colors.white,
               borderRadius: BorderRadius.circular(PSizes.md),
                          ),
               child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Image.asset(image),
                Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: showHeading ? Text('Women Printed Kurta',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),) : null,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: Text(title,style: TextStyle(fontSize: size),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: Text(priceOrg,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(price,style: TextStyle(fontSize: 12,color: PColors.text),),
                      Gap(5),
                      Text(off,style: TextStyle(fontSize: 10,color: PColors.textPrimary),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(4,0,0,4),
                  child: showRating ? Image.asset(PImages.rate) : null,
                ),
               ],
               )
               ),
             );
            }
           ),
      Positioned(
        top: height/3,
        right: 4,
        child: FloatingActionButton(
          elevation: 2,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
          onPressed: () {},
          backgroundColor: Colors.grey,
          child: const Icon(Iconsax.arrow_right_34), ),
      ),
        ]
      ),
    );
  }
}
