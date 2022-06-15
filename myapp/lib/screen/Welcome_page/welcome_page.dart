import 'package:flutter/material.dart';
import 'package:myapp/screen/Constant_widget/my_theme.dart';
import 'package:myapp/screen/Welcome_page/Components/background.dart';
import 'package:myapp/screen/login/login_page.dart';

import 'Components/customButton.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Welcome To Shopping App",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Image.asset(
                "images/assets/undraw_Balloons.png",
                width: size.width * 0.7,
              ),
              CustomWidget(
                  buttonColor: MyTheme.loginButtoonColor,
                  buttonText: "LOGIN",
                  textcolor: Colors.white,
                  handleButtonClick: () {
                    loginButtonClickHandler(context);
                  }),
              const SizedBox(height: 20),
              CustomWidget(
                buttonColor: MyTheme.singnupButtoonColor,
                buttonText: "SIGNUP",
                textcolor: Colors.black,
                handleButtonClick: signupButtonClickHandler,
              )
            ],
          ),
        ),
      ),
    );
  }

  loginButtonClickHandler(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  signupButtonClickHandler() {}
}
