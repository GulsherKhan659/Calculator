import 'package:calulator_app/controller/cal_provider.dart';
import 'package:calulator_app/controller/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TopHalfScreen extends StatelessWidget {
  TopHalfScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeprovider = Provider.of<ThemeProvider>(context);
    final calProvider = Provider.of<CalculatorProvider>(context);
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Dark Mode",
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
              SizedBox(
                width: 5,
              ),
              Switch(
                  value: themeprovider.isDark,
                  onChanged: (onChanged) {
                    themeprovider.isdark(onChanged: onChanged);
                  }),
            ],
          ),
        ),
        Spacer(),
        Container(
          alignment: Alignment.bottomRight,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "${calProvider.firstNumber} ${calProvider.sign} ${calProvider.secondNumber}",
                style: TextStyle(
                    fontSize: 16, color: Theme.of(context).primaryColor),
              ),
              Text(
                calProvider.number,
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    wordSpacing: 1.5,
                    color: Theme.of(context).primaryColor),
              )
            ],
          ),
        ),
      ],
    );
  }
}
