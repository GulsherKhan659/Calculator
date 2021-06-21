import 'package:calulator_app/controller/cal_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainButton extends StatelessWidget {
  final buttonText;
  const MainButton({Key? key, this.buttonText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final calProvider = Provider.of<CalculatorProvider>(context);
    return Flexible(
      flex: 1,
      fit: FlexFit.tight,
      child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Theme.of(context).shadowColor,
                    blurRadius: 5,
                    offset: Offset(1, 3)),
              ],
              color: Theme.of(context).accentColor,
              borderRadius: BorderRadius.circular(5)),
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: MaterialButton(
            onPressed: () {
              calProvider.numberGet(buttonText);
            },
            child: Text(
              buttonText,
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 25),
            ),
          )),
    );
  }
}
