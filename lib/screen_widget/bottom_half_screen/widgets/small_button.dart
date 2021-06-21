import 'package:flutter/material.dart';

class SmallButton extends StatelessWidget {
  final buttonText;
  SmallButton({Key? key, this.buttonText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      fit: FlexFit.tight,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Theme.of(context).accentColor.withOpacity(0.2),
            borderRadius: BorderRadius.circular(5)),
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(5),
        child: Text(
          buttonText,
          style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
