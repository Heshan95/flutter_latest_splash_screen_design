import 'package:flutter/material.dart';
import 'package:slpash_screen_part/features/authentication/controllers_onboading/onboarding_controller.dart';
import 'package:slpash_screen_part/util/constants/colors.dart';
import 'package:slpash_screen_part/util/constants/sizes.dart';
import 'package:slpash_screen_part/util/device/device_utility.dart';
import 'package:slpash_screen_part/util/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = THelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: TSizes.defaultSpace,
      child: SmoothPageIndicator(
        count: 3,
        controller: controller.pageController,
        onDotClicked: controller.dontNavigationClick,
        effect: ExpandingDotsEffect(
            activeDotColor: dark ? TColors.light : TColors.dark,
            dotHeight: 6.0),
      ),
    );
  }
}