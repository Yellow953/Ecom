import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';

class JCircularImage extends StatelessWidget {
  const JCircularImage({
    super.key,
    required this.dark,
    this.fit = BoxFit.cover,
    required this.image,
    this.isNetworkImage = false,
    this.overlayColor,
    this.backgroundColor,
    this.width = 56,
    this.height = 56,
    this.padding = JSizes.sm,
  });

  final bool dark;
  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor ?? (dark ? JColors.black : JColors.white),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image(
        image: isNetworkImage
            ? NetworkImage(image)
            : AssetImage(JImages.clothIcon) as ImageProvider,
        color: overlayColor,
        fit: fit,
      ),
    );
  }
}
