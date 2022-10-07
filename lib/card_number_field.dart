import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_practice_credit_card_checkout/card_formatter.dart';

class CardNumfield extends StatelessWidget {
  const CardNumfield({Key? key, this.formField,this.obscureText}) : super(key: key);
  final formField;
  final obscureText;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextFormField(
        obscureText: obscureText,
          inputFormatters: [
            CardFormatter(
              sample: 'xxxx-xxxx-xxxx-xxxx',
              separator: '-',
            ),
            LengthLimitingTextInputFormatter(19)
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