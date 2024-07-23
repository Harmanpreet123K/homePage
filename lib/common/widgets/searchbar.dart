import 'package:digiprod/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/image_strings.dart';

class PSearchContainer extends StatelessWidget {
  const PSearchContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 40,
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      padding: const EdgeInsets.symmetric(horizontal: PSizes.defaultSpace/2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white
      ),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Image.asset(PImages.search),
          suffixIcon: Image.asset(PImages.mike),
          prefixIconConstraints: const BoxConstraints(maxHeight: 20.0),
          suffixIconConstraints: const BoxConstraints(maxHeight: 24.0),
          border: InputBorder.none,
          fillColor: Colors.white,
          filled: true,
          label: const Padding(
            padding: EdgeInsets.only(left:8.0),
            child: Text('Search any Product..',
            style:TextStyle(
            fontSize: 14,
            color: PColors.iconPrimary),),
          ),
        ),
      ),
    );
  }
}