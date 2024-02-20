import 'package:flutter/material.dart';
import 'package:slpash_screen_part/features/authentication/controllers_onboading/onboarding_controller.dart';

import '../../../../../util/constants/sizes.dart';
import '../../../../../util/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSizes.defaultSpace,
      child: TextButton(
          onPressed: () => OnBoardingController.instance.skipPage(),
          child: const Text('SKIIP')),
    );
  }
}
