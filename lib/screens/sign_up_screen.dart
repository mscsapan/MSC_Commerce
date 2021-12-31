import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:msc_commerce/app_colors/app_colors.dart';
import 'package:msc_commerce/custom_view/custom_textfield.dart';
import 'package:msc_commerce/custom_view/new_user_message.dart';
import 'package:msc_commerce/custom_view/social_login.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: greyColor));
    return Scaffold(
      backgroundColor: greyColor,
      appBar: AppBar(
        backgroundColor: greyColor,
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Sign Up',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w500,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 20.0),
            const InputTextField(hintText: 'Name'),
            const InputTextField(hintText: 'Email'),
            const InputTextField(hintText: 'Password'),
            const NewUserMessage(message: 'Already have an account?'),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.width * 0.12,
                  child: MaterialButton(
                    onPressed: () {},
                    color: primaryColor,
                    child: Text('Sign Up'.toUpperCase(),
                        style: const TextStyle(
                            color: Colors.white, fontSize: 18.0)),
                  ),
                ),
              ),
            ),
            const Spacer(),
            const SocialLogin(
                authType: 'sign up',
                image1: 'google.png',
                image2: 'facebook.png'),
            const SizedBox(height: 50.0),
          ],
        ),
      ),
    );
  }
}
