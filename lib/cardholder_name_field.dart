import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CardholderNameField extends StatelessWidget {
  const CardholderNameField({Key? key, this.formField}) : super(key: key);
  final formField;


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextFormField(
        inputFormatters: [
          UpperCaseTextFormatter(),
        ],
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.zero,
              borderSide: const BorderSide(
                color: Colors.black,
                width: 2,
              ),
            ),
            labelStyle: TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
            labelText: formField,
            floatingLabelStyle: const TextStyle(fontSize: 16),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.zero,
              borderSide: BorderSide(
                color: Colors.black!,
                width: 1,
              ),
            ),
          )
      ),
    );
  }
}
class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
      text: newValue.text.toUpperCase(),
      selection: newValue.selection,
    );
  }
}