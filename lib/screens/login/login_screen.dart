import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yoga_training_app/screens/login/components/background_image_clipper.dart';
import 'package:yoga_training_app/screens/login/components/circle_button.dart';
import 'package:yoga_training_app/screens/login/components/login_credentials.dart';
import 'package:yoga_training_app/screens/login/components/sign_up_credential.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool hasAccount = true;

  void signInUp() {
    setState(() {
      hasAccount = !hasAccount;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackgroundImage(),
                hasAccount
                    ? LoginCredentials(
                        signInUp: signInUp,
                      )
                    : SignUpCredential(
                        signInUp: signInUp,
                      ),
              ],
            ),
            CircleButton(),
          ],
        ),
      ),
    );
  }
}
