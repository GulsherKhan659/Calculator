import 'package:calulator_app/screen_widget/bottom_half_screen/widgets/main_button.dart';
import 'package:calulator_app/screen_widget/bottom_half_screen/widgets/small_button.dart';
import 'package:flutter/material.dart';

class BottomHalfScreen extends StatelessWidget {
  const BottomHalfScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        children: [
          Spacer(),
          Row(
            children: [
              SmallButton(
                buttonText: "MC",
              ),
              SmallButton(
                buttonText: "MR",
              ),
              SmallButton(
                buttonText: "M+",
              ),
              SmallButton(
                buttonText: "M-",
              ),
              SmallButton(
                buttonText: "MS",
              ),
              SmallButton(
                buttonText: "M'",
              ),
            ],
          ),
          Row(
            children: [
              MainButton(
                buttonText: "%",
              ),
              MainButton(
                buttonText: "E",
              ),
              MainButton(
                buttonText: "C",
              ),
              MainButton(
                buttonText: "/",
              ),
            ],
          ),
          Row(
            children: [
              MainButton(
                buttonText: "9",
              ),
              MainButton(
                buttonText: "8",
              ),
              MainButton(
                buttonText: "7",
              ),
              MainButton(
                buttonText: "x",
              ),
            ],
          ),
          Row(
            children: [
              MainButton(
                buttonText: "6",
              ),
              MainButton(
                buttonText: "5",
              ),
              MainButton(
                buttonText: "4",
              ),
              MainButton(
                buttonText: "-",
              ),
            ],
          ),
          Row(
            children: [
              MainButton(
                buttonText: "3",
              ),
              MainButton(
                buttonText: "2",
              ),
              MainButton(
                buttonText: "1",
              ),
              MainButton(
                buttonText: "+",
              ),
            ],
          ),
          Row(
            children: [
              MainButton(
                buttonText: " ",
              ),
              MainButton(
                buttonText: "0",
              ),
              MainButton(
                buttonText: ".",
              ),
              MainButton(
                buttonText: "=",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
