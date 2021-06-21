import 'package:calulator_app/screen_widget/bottom_half_screen/bottom_half_screen.dart';
import 'package:calulator_app/screen_widget/top_half_screen/top_half_screen.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 3,
              child: TopHalfScreen(),
            ),
            Expanded(
              flex: 6,
              child: BottomHalfScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
