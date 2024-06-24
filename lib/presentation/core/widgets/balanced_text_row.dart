import 'package:flutter/material.dart';

import '../theme/app_color.dart';
import 'loading_shimmer/loading_shimmer.dart';

class BalanceTextRow extends StatelessWidget {
  final String keyText;
  final String valueText;
  final int keyFlex;
  final int valueFlex;
  final bool valueTextLoading;
  final bool isStatus;
  final TextStyle? keyTextStyle;
  final TextStyle? valueTextStyle;
  final Color statusTextColor;

  const BalanceTextRow({
    super.key,
    required this.keyText,
    required this.valueText,
    this.keyFlex = 1,
    this.valueFlex = 2,
    this.valueTextLoading = false,
    this.isStatus = false,
    this.keyTextStyle,
    this.valueTextStyle,
    this.statusTextColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    final keyStyle = keyTextStyle ??
        Theme.of(context).textTheme.titleSmall?.copyWith(
              color: AppColor.grey,
            );
    final valueStyle = valueTextStyle ??
        Theme.of(context).textTheme.titleSmall?.copyWith(
              color: AppColor.black,
            );

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 2.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: keyFlex,
            child: Text(
              isStatus ? keyText : '$keyText: ',
              style: keyStyle,
            ),
          ),
          Expanded(
            flex: valueFlex,
            child: valueTextLoading
                ? SizedBox(
                    width: 40,
                    child: LoadingShimmer.tile(),
                  )
                : Text(
                    valueText,
                    style: valueStyle,
                  ),
          ),
        ],
      ),
    );
  }
}
