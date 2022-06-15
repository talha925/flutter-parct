import 'package:flutter/material.dart';
import 'package:myapp/screen/login/components/login_background.dart';
import 'package:myapp/screen/login/components/textfield_decorator.dart';

import 'components/userid_text_field.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final _foamKey = GlobalKey<FormState>();
  TextEditingController useridController = TextEditingController();
  TextEditingController passController = TextEditingController();

  String userIdErrorText = "User Id connot be empty";
  String userIdHintText = "Enter User Id";
  Color userIdHintTextColor = Colors.purple;
  IconData useridTextfieldPrefixIcon = Icons.person;
  Color useridTextfieldPrefixIconColor = Colors.purple;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: LoginBackground(
            child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("images/assets/Login.png"),
          const Text(
            "Login",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Form(
              key: _foamKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFieldDecorator(
                    child: UserIdeTextField(
                      userIdErrorText: userIdErrorText,
                      userIdHintText: userIdHintText,
                      userIdHintTextColor: userIdHintTextColor,
                      useridTextfieldPrefixIcon: useridTextfieldPrefixIcon,
                      useridTextfieldPrefixIconColor:
                          useridTextfieldPrefixIconColor,
                      onUserIdValueChange: (value) {
                        print(value);
                      },
                    ),
                  ),
                ],
              )),
        ],
      ),
    )));
  }
}
