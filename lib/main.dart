import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice_credit_card_checkout/card_cvy_field.dart';
import 'package:flutter_practice_credit_card_checkout/cardholder_name_field.dart';
import 'package:flutter_practice_credit_card_checkout/expiry_date_field.dart';
import 'package:flutter_practice_credit_card_checkout/card_number_field.dart';
import 'package:flutter_practice_credit_card_checkout/card_type_field.dart';
import 'package:flutter_practice_credit_card_checkout/process_payment_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back, color: Colors.white),
          title: const Text(
            'PAYMENT',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.grey.shade600,
        ),
         body:
      // GestureDetector(
        //   behavior: HitTestBehavior.opaque, //画面外タップを検知するために必要
        //   onTap: () => FocusScope.of(context).unfocus(),
        //   child:
              Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.white,
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
                  child: Image.asset(
                    'images/card_5brand.png',
                    height: 50,
                    width: 300,
                  ),
                ),
                Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 130, 10),
                    child: Container(
                        width: 200,
                        child: CardTypeField(
                          context: context,
                        ))),
                Padding(
                    padding: EdgeInsets.fromLTRB(22, 0, 30, 10),
                    child: CardholderNameField(
                      formField: 'Cardholder Name',
                    )),
                Padding(
                    padding: EdgeInsets.fromLTRB(22, 0, 30, 10),
                    child: CardNumfield(
                      formField: 'Card Number',
                      obscureText: false,
                    )),
                Padding(
                    padding: EdgeInsets.fromLTRB(22, 0, 250, 10),
                    child: CardExpiryDateField(
                      formField: 'Expire Date',
                    )),
                Padding(
                    padding: EdgeInsets.fromLTRB(22, 0, 250, 10),
                    child: CardCVYField(
                      formField: 'CVY',
                    )),
                Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 30),
                    child: PaymentButton(
                      button: 'PROCESS PAYMENT',
                    ))
              ])),
        // )
    );
  }
}
