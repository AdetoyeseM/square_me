import 'package:flutter/material.dart';

import 'number_buttons.dart';

class NumberPad extends StatelessWidget {
  const NumberPad({Key? key, this.onChanged, this.color, this.showBiometric = true}) : super(key: key);
  final Color? color;
  final bool? showBiometric ;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      childAspectRatio: 1.5,
      mainAxisSpacing: 10,
      crossAxisCount: 3,
      children: [
        KeyboardButtons(
          color: color,
          number: 1,
          onChanged: onChanged,
        ),
        KeyboardButtons(
          number: 2,
          color: color,
          onChanged: onChanged,
        ),
        KeyboardButtons(
          number: 3,
          onChanged: onChanged,
          color: color,
        ),
        KeyboardButtons(
          number: 4,
          onChanged: onChanged,
          color: color,
        ),
        KeyboardButtons(
          number: 5,
          onChanged: onChanged,
          color: color,
        ),
        KeyboardButtons(
          number: 6,
          onChanged: onChanged,
          color: color,
        ),
        KeyboardButtons(
          number: 7,
          onChanged: onChanged,
          color: color,
        ),
        KeyboardButtons(
          number: 8,
          onChanged: onChanged,
          color: color,
        ),
        KeyboardButtons(
          number: 9,
          onChanged: onChanged,
          color: color,
        ),
        Visibility(
          visible: showBiometric ?? true,
          child: KeyboardButtons(
            icon: Icons.fingerprint,
            color: color,
            onChanged: onChanged,
          ),
        ),
        KeyboardButtons(
          number: 0,
          onChanged: onChanged,
          color: color,
        ),
        KeyboardButtons(
          icon: Icons.chevron_left,
          onChanged: onChanged,
          color: color,
        ),
      ],
    );
  }
}
