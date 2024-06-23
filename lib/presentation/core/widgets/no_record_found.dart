import 'package:flutter/material.dart';

import '../theme/app_color.dart';
import '../utils/app_assets.dart';
import 'custom_image_view.dart';

class NoRecordFound extends StatelessWidget {
  const NoRecordFound({
    super.key,
    this.title = '',
    this.subTitle =
        'Try adjusting your search or filter selection to find what you’re looking for.',
    this.svgImage = AppAssets.smallSearchIcon,
    this.actionButton = const SizedBox.shrink(),
  });
  final String title;
  final String subTitle;
  final String svgImage;
  final Widget actionButton;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: CustomImageView(
              imagePath: svgImage,
              height: 100,
            ),
          ),
          if (title.isNotEmpty)
            Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: AppColor.black,
                  ),
            ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 30),
            child: Text(
              subTitle,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: AppColor.black,
                  ),
            ),
          ),
          actionButton,
        ],
      ),
    );
  }
}
