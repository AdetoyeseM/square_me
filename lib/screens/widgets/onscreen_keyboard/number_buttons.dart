import 'package:flutter/material.dart';
import 'package:square__me/screens/constants/colors.dart';
import 'package:square__me/screens/text_decorations/text_decoration.dart';

class KeyboardButtons extends StatelessWidget {
  const KeyboardButtons({Key? key, this.color, this.icon, this.number, this.onChanged})
      : super(key: key);

  final int? number;
  final IconData? icon;
  final Color? color;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (number != null) {
          onChanged!(number.toString());
        } else if (icon == Icons.fiber_manual_record) {
          onChanged!(".");
        } else if (icon == Icons.chevron_left) {
          onChanged!("backspace");
        }
      },
      child: Center(
        child: number != null
            ? Text(number.toString(),
                style: appTextStyle(
                    color: color ?? SquareColors.appBlue,
                    fontSize: 21,
                    fontWeight: FontWeight.w400))
            : Icon(icon),
      ),
    );
  }
}
