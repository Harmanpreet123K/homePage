import 'package:digiprod/common/widgets/shimmer/category_shimmer.dart';
import 'package:digiprod/features/shop/controllers/category_controller.dart';
import 'package:digiprod/features/shop/screens/home/widgets/blank.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/sizes.dart';

class FeaturedItems extends StatelessWidget {
  const FeaturedItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final categoryController = Get.put(CategoryController());

    return Obx( () {
      if(categoryController.isLoading.value) return const PCategoryShimmer();

      if(categoryController.featuredCategories.isEmpty){
        return Center(child: Text('No Data Found!',style: TextStyle(color: Colors.white,fontSize: 12),),);
      }
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
          itemCount: categoryController.featuredCategories.length,
          scrollDirection: Axis.horizontal,
          separatorBuilder: (_,__) => const SizedBox(width: PSizes.spaceBtwItems,),
          itemBuilder: (_,index) {
            final category = categoryController.featuredCategories[index];
            return InkWell(
              onTap: () => Get.to(() => const BlankPage()),
              child: Column(
                children: [
                  Container(
                    width: 56,
                    height: 56,
                    padding: const EdgeInsets.all(PSizes.sm),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100)
                    ),
                    child: Image(image:NetworkImage(category.image),fit: BoxFit.cover,),
                  ),
                  
                  const SizedBox(height: PSizes.xs,),
                  SizedBox(
                    width: 56,
                    child: Center(child: Text(category.name,maxLines: 1,overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 11),)))
                ],
              ),
            );
          }),
      );
    }
    );
  }
}

