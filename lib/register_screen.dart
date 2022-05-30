import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:uts_project/signinOrSignUp/signin_or_signup_screen.dart';
import 'components/primary_button.dart';
import 'package:firebase_auth/firebase_auth.dart';


class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Colors.white,
          child: SingleChildScrollView(
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Image.asset("images/Jejayy.png", height: 300,),
                            const TextField(
                              decoration: InputDecoration(
                                  labelText: "Email"
                              ),
                            ),
                            const SizedBox(height: 16,),
                            const TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  labelText: "Password"
                              ),
                            ),
                            const SizedBox(height: 16,),
                            const TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  labelText: "Re-Enter Password"
                              ),
                            ),
                            const SizedBox(height: 16,),
                            PrimaryButton(
                              color: Theme.of(context). colorScheme.secondary,
                              text: "Register",
                              press: () => Navigator.push(context, MaterialPageRoute(
                                builder: (context) => SigninOrSignupScreen(),
                                
                              ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
          ),
        )
    );
  }
}
