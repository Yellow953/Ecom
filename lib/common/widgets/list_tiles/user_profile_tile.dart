import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../images/j_circular_image.dart';

class JUserProfileTile extends StatelessWidget {
  const JUserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const JCircularImage(
        image: JImages.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        'Joe Mazloum',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: JColors.white),
      ),
      subtitle: Text(
        'joemazloum953@gmail.com',
        style:
            Theme.of(context).textTheme.bodyMedium!.apply(color: JColors.white),
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(Iconsax.edit, color: JColors.white),
      ),
    );
  }
}
