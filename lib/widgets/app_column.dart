import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/small_text.dart';
import '../utils/colors.dart';
import '../utils/dimensions.dart';
import 'big_text.dart';
import 'icon_and_text_widget.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({super.key,
    required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: text, size: Dimensions.font26,),
        SizedBox(height: Dimensions.height10),
        Row(
          children: [
            Wrap(
              children: List.generate(5, (index) => Icon(Icons.star, color: AppColors.mainColor, size: 15,)),
            ),
            const SizedBox(width: 10,),
            SmallText(size: Dimensions.font16, text: '4.5'),
            const SizedBox(width: 10,),
            SmallText(size: Dimensions.font16, text: '1234'),
            const SizedBox(width: 10,),
            SmallText(size: Dimensions.font16, text: 'comments')
          ],
        ),
        SizedBox(height: Dimensions.height20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(icon: Icons.circle_sharp,
                text: 'Normal',
                iconColor: AppColors.iconColor1),
            const SizedBox(width: 15,),
            IconAndTextWidget(icon: Icons.location_on,
                text: '1.7 km',
                iconColor: AppColors.mainColor),
            const SizedBox(width: 15,),
            IconAndTextWidget(icon: Icons.access_time_rounded,
                text: '32 min',
                iconColor: AppColors.iconColor2)
          ],
        )
      ],
    );
  }
}
