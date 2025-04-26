import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import '../../../../../common/widgets/icons/j_circular_icon.dart';
import '../../../../../common/widgets/images/j_rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class JProductImageSlider extends StatelessWidget {
  const JProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = JHelperFunctions.isDarkMode(context);

    return JCurvedEdgesWidget(
      child: Container(
        color: dark ? JColors.darkerGrey : JColors.light,
        child: Stack(
          children: [
            /// Main Large Image
            SizedBox(
              height: 400,
              child: Padding(
                padding: const EdgeInsets.all(JSizes.productImageRadius * 2),
                child: Center(
                  child: Image(
                    image: AssetImage(JImages.productImage5),
                  ),
                ),
              ),
            ),

            /// Image Slider
            Positioned(
              right: 0,
              bottom: 40,
              left: JSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  itemCount: 6,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemBuilder: (_, index) => JRoundedImage(
                    width: 80,
                    backgroundColor: dark ? JColors.dark : JColors.white,
                    border: Border.all(color: JColors.primary),
                    padding: const EdgeInsets.all(JSizes.sm),
                    imageUrl: JImages.productImage3,
                  ),
                  separatorBuilder: (_, __) =>
                      const SizedBox(width: JSizes.spaceBtwItems),
                ),
              ),
            ),

            /// Appbar Icons
            JAppBar(
              showBackArrow: true,
              actions: [
                JCircularIcon(
                  icon: Iconsax.heart5,
                  color: Colors.red,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
