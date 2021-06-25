import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/divider/divider_vertical.dart';
import 'package:payflow/shared/widgets/label_button.dart/label_button.dart';

class SetLabelButtons extends StatelessWidget {
  final String primaryLabel;
  final VoidCallback primaryOnPressed;
  final String secondaryLabel;
  final VoidCallback secondaryOnPressed;
  final bool enablePrymariColor;
  const SetLabelButtons({
    Key? key,
    required this.primaryLabel,
    required this.primaryOnPressed,
    required this.secondaryLabel,
    required this.secondaryOnPressed,
    this.enablePrymariColor = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      child: Row(
        children: [
          Expanded(
              child: LabelButton(
            label: primaryLabel,
            onPressed: primaryOnPressed,
            style: enablePrymariColor ? TextStyles.buttonPrimary : null,
          )),
          DividerVerticalWidget(),
          Expanded(
              child: LabelButton(
            label: secondaryLabel,
            onPressed: secondaryOnPressed,
          ))
        ],
      ),
    );
  }
}
