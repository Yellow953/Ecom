import 'package:ecom/features/shop/screens/wishlist/wishlist.dart';
import 'package:ecom/utils/constants/colors.dart';
import 'package:ecom/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'features/shop/screens/home/home.dart';
import 'features/shop/screens/store/store.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = JHelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(() => NavigationBar(
              height: 80,
              elevation: 0,
              selectedIndex: controller.selectedIndex.value,
              onDestinationSelected: (index) =>
                  controller.selectedIndex.value = index,
              backgroundColor: darkMode ? JColors.black : JColors.white,
              indicatorColor: darkMode
                  ? JColors.white.withOpacity(0.1)
                  : JColors.black.withOpacity(0.1),
              destinations: const [
                NavigationDestination(
                  icon: Icon(Iconsax.home),
                  label: 'Home',
                ),
                NavigationDestination(
                  icon: Icon(Iconsax.shop),
                  label: 'Shop',
                ),
                NavigationDestination(
                  icon: Icon(Iconsax.heart),
                  label: 'Wishlist',
                ),
                NavigationDestination(
                  icon: Icon(Iconsax.user),
                  label: 'Profile',
                ),
              ])),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    HomeScreen(),
    StoreScreen(),
    FavoriteScreen(),
    Container(
      color: Colors.blue,
    ),
  ];
}
