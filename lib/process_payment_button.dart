import 'package:flutter/material.dart';

class PaymentButton extends StatelessWidget {
  const PaymentButton({Key? key, this.button}) : super(key: key);
  final button;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 45, 0, 0),
      child: Column(children: [
        SizedBox(
          width: 290,
          height: 60,
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.all(Colors.teal.shade700)),
            child: Text('$button', style: const TextStyle(fontSize: 20)),
          ),
        ),
      ]),
    );
  }
}