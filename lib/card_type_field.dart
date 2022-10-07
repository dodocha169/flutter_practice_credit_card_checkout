import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardTypeField extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
        CardTypeField({Key? key, this.context}) : super(key: key);
  final context;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
      return Center(
        child: TextFormField(
            onTap: () {
              FocusScope.of(context).requestFocus(new FocusNode());
              showPicker();
            },
            controller: _controller,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(
                  color: Colors.black,
                  width: 2,
                ),
              ),
              labelStyle: TextStyle(
                fontSize: 12,
                color: Colors.black,
              ),
              labelText: 'Card Type',
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

    void showPicker() {
      final list = ['VISA', 'MasterCard', 'JCB', 'American Express', 'Diners Club'];
      final _pickerItems = list.map((item) => Text(item)).toList();
      var selectedIndex = 0;

      showCupertinoModalPopup<void>(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 216,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: CupertinoPicker(
                itemExtent: 32,
                children: _pickerItems,
                onSelectedItemChanged: (int index) {
                  selectedIndex = index;
                },
              ),
            ),
          );
        },
      ).then((_) {
        if (selectedIndex != null) {
          _controller.value = TextEditingValue(text: list[selectedIndex]);
        }
      }
      );
    }
  }
