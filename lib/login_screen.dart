import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'components/primary_button.dart';
import 'screens/chats/chats_screen.dart';


class LoginPage extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose(){
    emailController.dispose();
    passwordController.dispose();

  }

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
                          TextField(
                          controller: emailController,
                          decoration: InputDecoration(
                            labelText: "Email"
                          ),
                        ),
                        const SizedBox(height: 16,),
                          TextField(
                          controller: passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: "Password"
                          ),
                        ),
                        const SizedBox(height: 16,),
                        PrimaryButton(
                          text: "Sign In",
                          press: () => Navigator.push(context, MaterialPageRoute(
                            builder: (context) => ChatsScreen(),
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
