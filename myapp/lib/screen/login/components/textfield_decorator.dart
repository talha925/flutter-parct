import 'package:flutter/material.dart';
import 'package:myapp/screen/Constant_widget/my_theme.dart';

class TextFieldDecorator extends StatelessWidget {
  final Widget child;
  const TextFieldDecorator({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.8,
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      decoration: BoxDecoration(
          color: MyTheme.LoginPageBoxColor,
          borderRadius: BorderRadius.circular(18)),
      child: child,
    );
  }
}
