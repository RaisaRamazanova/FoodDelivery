import 'package:flutter/cupertino.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/small_text.dart';

class IconAndTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;
  final double iconSize;
  const IconAndTextWidget({super.key,
    required this.icon,
    required this.text,
    required this.iconColor,
    this.iconSize = 24});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: iconColor, size: iconSize,),
        const SizedBox(width: 5,),
        SmallText(size: Dimensions.font16, text: text)
      ],
    );
  }
}
