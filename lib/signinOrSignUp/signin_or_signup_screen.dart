import 'package:flutter/material.dart';
import '../components/primary_button.dart';
import '../login_screen.dart';
import '../screens/chats/chats_screen.dart';
import '../screens/constants.dart';

class SigninOrSignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: [
              Spacer(flex: 2),
              Image.asset(
                MediaQuery.of(context).platformBrightness == Brightness.light
                    ? "images/Jejayy.png"
                    : "images/Jejayy.png",
                height: 146,
              ),
              Spacer(),
              PrimaryButton(
                text: "Sign In",
                press: () => Navigator.push(context, MaterialPageRoute(
                  builder: (context) => LoginPage(),
                     ),
                   ),
                 ),
          SizedBox(height: kDefaultPadding * 1.5),
          PrimaryButton(
            color: Theme.of(context). colorScheme.secondary,
            text: "Sign Up",
            press: () {},
             ),
              Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}


