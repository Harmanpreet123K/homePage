import 'package:digiprod/features/shop/screens/home/widgets/blank.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ButtonWithIcon extends StatelessWidget {
  const ButtonWithIcon({
    super.key, required this.label, required this.icon, required this.width, required this.height, required this.iconSize, required this.color, required this.iconColor, required this.style,this.showBorderSide = false,
  });
  final String label;
  final IconData icon;
  final double width,height,iconSize;
  final Color color,iconColor;
  final TextStyle style;
  final bool showBorderSide;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,//65,
      height: height,//27,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          side: showBorderSide? const BorderSide(color: Colors.white,width:1) : null,
          backgroundColor: color,//PColors.textWhite,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          padding: EdgeInsets.all(0)
        ),
        onPressed: () => Get.to(() => const BlankPage()),
        label: Text(label,style: style,//const TextStyle(fontSize: 12,color: PColors.black),
        ),
        icon: Icon(icon,
        color:iconColor,// PColors.black,
        size: iconSize,//18,
        ),
      ),
    );
  }
}
