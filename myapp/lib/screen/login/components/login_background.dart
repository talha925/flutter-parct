import 'package:flutter/material.dart';

class LoginBackground extends StatelessWidget {
  final Widget child;
  const LoginBackground({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      width: double.infinity,
      height: size.height,
      child: Stack(alignment: Alignment.center, children: [
        Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              "images/assets/main_top.png",
              width: size.width * 0.4,
            )),
        Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              "images/assets/bottom.png",
              width: size.width * 0.4,
            )),
        child,
      ]),
    );
  }
}
