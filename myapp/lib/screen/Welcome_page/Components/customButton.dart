import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  const CustomWidget({
    Key? key,
    required this.buttonColor,
    required this.buttonText,
    required this.textcolor,
    required this.handleButtonClick,
  }) : super(key: key);

  final Color buttonColor;
  final String buttonText;
  final Color textcolor;
  final Function handleButtonClick;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      child: ClipRect(
        child: ElevatedButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14))),
                padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 12,
                )),
                backgroundColor: MaterialStateProperty.all(buttonColor)),
            onPressed: () {
              handleButtonClick();
            },
            child: Text(
              buttonText,
              style: TextStyle(
                  fontSize: 15, fontWeight: FontWeight.bold, color: textcolor),
            )),
      ),
    );
  }
}
