import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import 'circular_container.dart';

class JPrimaryHeaderContainer extends StatelessWidget {
  const JPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: JColors.primary,
      padding: const EdgeInsets.all(0),
      child: SizedBox(
        height: 400,
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -250,
              child: JCircularContainer(
                backgroundColor: JColors.white.withOpacity(0.1),
              ),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: JCircularContainer(
                backgroundColor: JColors.white.withOpacity(0.1),
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
