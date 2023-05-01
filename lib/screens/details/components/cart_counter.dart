import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'BuildOutlineButton.dart';

class CartCounter extends StatefulWidget {
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        GestureDetector(
          child: BuildOutlineButton(icon: Icons.remove),
          onTap: () {
            if (numOfItems > 1) {
              setState(() {
                numOfItems--;
              });
            }
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 2),
          child: Text(
            // if our item is less  then 10 then  it shows 01 02 like that
            numOfItems.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        GestureDetector(
            child: BuildOutlineButton(icon: Icons.add),
            onTap: () {
              setState(() {
                numOfItems++;
              });
            }),
      ],
    );
  }
}
