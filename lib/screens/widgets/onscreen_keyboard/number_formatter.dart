import 'package:flutter/services.dart';

class CustomNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String newText = newValue.text;

    if (newText.isEmpty) {
      return newValue;
    }

    // Remove non-numeric characters
    newText = newText.replaceAll(RegExp(r'[^0-9]'), '');

    // Convert the input value to a double
    double inputValue = double.tryParse(newText) ?? 0;

    // Format the value
    String formattedValue = formatNumber(inputValue);

    return TextEditingValue(
      text: formattedValue,
      selection: TextSelection.collapsed(offset: formattedValue.length),
    );
  }

  String formatNumber(double value) {
    if (value >= 1000000) { 
      return '${(value / 1000000).toStringAsFixed(2)}M';
    } else if (value >= 1000) { 
      return '${(value / 1000).toStringAsFixed(2)}K';
    } else { 
      return value.toString();
    }
  }
}
