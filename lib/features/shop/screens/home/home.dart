import 'package:digiprod/common/widgets/appbar.dart';
import 'package:digiprod/common/widgets/product_card.dart';
import 'package:digiprod/utils/constants/colors.dart';
import 'package:digiprod/utils/constants/image_strings.dart';
import 'package:digiprod/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/searchbar.dart';
import 'widgets/buttonWithIcon.dart';
import 'widgets/carousel_slider.dart';
import 'widgets/deal_container.dart';
import 'widgets/featuredItems.dart';
import 'widgets/heel_offer.dart';
import 'widgets/special_offer.dart';
import 'widgets/sponserd.dart';
import 'widgets/summer_sale.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            PSearchContainer(),

            SizedBox(
              height: PSizes.spaceBtwSections / 2,
            ),

            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: PSizes.defaultSpace / 2),
              child: Row(
                children: [
                  Text(
                    'All Featured',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                  Spacer(),
                  ButtonWithIcon(
                    width: 65,
                    height: 27,
                    color: PColors.textWhite,
                    label: 'Sort',
                    style: TextStyle(fontSize: 12, color: PColors.black),
                    icon: Iconsax.arrow_3,
                    iconColor: PColors.black,
                    iconSize: 18,
                  ),
                  Gap(15),
                  ButtonWithIcon(
                    width: 65,
                    height: 27,
                    color: PColors.textWhite,
                    label: 'Filter',
                    style: TextStyle(fontSize: 12, color: PColors.black),
                    icon: Iconsax.filter,
                    iconColor: PColors.black,
                    iconSize: 18,
                  )
                ],
              ),
            ),

            SizedBox(
              height: PSizes.spaceBtwSections / 2,
            ),

            FeaturedItems(),

            SizedBox(
              height: PSizes.spaceBtwSections / 2,
            ),

            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: PSizes.defaultSpace / 2),
              child: PCarouselSlider(
                banners: [PImages.carousel, PImages.carousel, PImages.carousel],
              ),
            ),

            SizedBox(
              height: PSizes.spaceBtwItems / 2,
            ),

            PDealContainer(
              title: 'Deal of the Day',
              subtitle: '22h 55m 20s remaining',
              icon: Iconsax.clock,
              bgColor: PColors.buttonPrimary,
              btnColor: PColors.buttonPrimary,
            ),

            SizedBox(
              height: PSizes.spaceBtwItems / 2,
            ),

            PProductCard(width: 170,height: 241,showHeading: true,showRating: true,title: 'Neque porro quisquam est qui dolorem ipsum quia',priceOrg: '₹1500',price: '₹2499',off: '40%Off',size: 10,image: PImages.kurta,),

           SizedBox(
              height: PSizes.spaceBtwItems / 2,
            ),

            SpecialOfferContainer(),

            SizedBox(
              height: PSizes.spaceBtwItems / 2,
            ),

            PFlatHeelOffer(),

            SizedBox(
              height: PSizes.spaceBtwItems / 2,
            ),

            PDealContainer(
              title: 'Trending products',
              subtitle: 'Last Date 20/07/24',
              icon: Iconsax.calendar_1,
              bgColor: PColors.buttonSecondary,
              btnColor: PColors.buttonSecondary,
            ),

            SizedBox(
              height: PSizes.spaceBtwItems / 2,
            ),

            PProductCard(width: 142, height: 186, size: 10, title: "IWC Schaffhausen 2021 Pilot's Watch \"SIHH 2019\" 44mm", priceOrg: '₹650', price: '₹1599', off: '60% off', image: PImages.watch),

            SizedBox(
              height: PSizes.spaceBtwItems / 2,
            ),

            PHotSummerSale(),

            SizedBox(
              height: PSizes.spaceBtwItems / 2,
            ),

            PSponserd(),

            SizedBox(
              height: PSizes.spaceBtwItems / 2,
            ),
            
          ],
        ),
      ),
    );
  }
}






