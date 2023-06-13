import 'package:flutter/material.dart';
import 'package:yoga_training_app/constants/constants.dart';
import 'package:yoga_training_app/screens/home.dart';
import 'package:yoga_training_app/screens/login/components/login_credentials.dart';
import 'package:yoga_training_app/screens/login/functions/authFunctions.dart';

class SignUpCredential extends StatefulWidget {
  final Function signInUp;
  SignUpCredential({Key? key, required this.signInUp}) : super(key: key);

  @override
  _SignUpCredentialState createState() => _SignUpCredentialState();
}

class _SignUpCredentialState extends State<SignUpCredential> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: appPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Please Sign Up',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Material(
            elevation: 10.0,
            color: white,
            borderRadius: BorderRadius.circular(30.0),
            child: TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderSide: BorderSide.none),
                contentPadding: EdgeInsets.symmetric(vertical: appPadding * 0.75, horizontal: appPadding),
                fillColor: white,
                hintText: 'Email',
                suffixIcon: Icon(
                  Icons.email_outlined,
                  size: 25.0,
                  color: black.withOpacity(0.4),
                ),
              ),
              validator: (value) {
                if (!(value.toString().contains('@'))) {
                  return 'Invalid Email';
                } else {
                  return null;
                }
              },
            ),
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
          Material(
            elevation: 10.0,
            color: white,
            borderRadius: BorderRadius.circular(30.0),
            child: TextFormField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderSide: BorderSide.none),
                contentPadding: EdgeInsets.symmetric(vertical: appPadding * 0.75, horizontal: appPadding),
                fillColor: Colors.white,
                hintText: 'Password',
                suffixIcon: Icon(
                  Icons.lock_outline,
                  size: 25.0,
                  color: black.withOpacity(0.4),
                ),
              ),
              validator: (value) {
                if (value.toString().length < 6) {
                  return 'Password is so small';
                } else {
                  return null;
                }
              },
            ),
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Do you have account?',
                style: TextStyle(
                  fontSize: 18,
                  color: black.withOpacity(0.4),
                ),
              ),
              TextButton(
                onPressed: () => widget.signInUp(),
                child: const Text(
                  'Log In',
                  style: TextStyle(
                    fontSize: 18,
                    color: black,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
          InkWell(
            onTap: () => signup(
              context,
              emailController.text.trim(),
              passwordController.text.trim(),
            ),
            child: Material(
                elevation: 10.0,
                shadowColor: primary,
                color: primary,
                borderRadius: BorderRadius.circular(30.0),
                child: SizedBox(
                  width: size.width,
                  height: size.width * 0.15,
                  child: const Center(
                    child: Text(
                      'Log In',
                      style: TextStyle(
                        color: white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
