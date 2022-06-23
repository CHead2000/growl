// ignore_for_file: unused_import, file_names, unnecessary_string_escapes, library_private_types_in_public_api, sort_child_properties_last, prefer_const_constructors

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:michiganyelp/resources/constants.dart';
import 'package:michiganyelp/resources/auth_methods.dart';
import 'package:michiganyelp/resources/utils.dart';
import 'package:michiganyelp/widgets/main_button.dart';
import 'package:michiganyelp/widgets/text_field.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  AuthMethods auth = AuthMethods();

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = Utils().getScreenSize();
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: screenSize.height,
          width: screenSize.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    centerTitle: true,
                    title: const Text('GROWL'),
                    titleTextStyle: const TextStyle(fontSize: 60, color: MAIZE),
                  ),
                  SizedBox(
                    child: FittedBox(
                      child: Container(
                        height: screenSize.height * 0.7,
                        width: screenSize.width * 0.8,
                        padding: const EdgeInsets.all(25),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Sign-Up",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 33,
                              ),
                            ),
                            TextFieldWidget(
                              title: "Username",
                              controller: nameController,
                              obscureText: false,
                              hintText: "Enter your username",
                            ),
                            TextFieldWidget(
                              title: "Email",
                              controller: emailController,
                              obscureText: false,
                              hintText: "Enter your umich email address",
                            ),
                            TextFieldWidget(
                              title: "Password",
                              controller: passwordController,
                              obscureText: true,
                              hintText: "Enter your password",
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: MainButton(
                                child: const Text(
                                  "Sign In",
                                  style: TextStyle(letterSpacing: 0.6),
                                ),
                                color: Colors.grey,
                                loading: false,
                                onPressed: () async {
                                  String output = await auth.signUpUser(
                                      username: nameController.text,
                                      email: emailController.text,
                                      password: passwordController.text);
                                  if (output == "Success") {
                                    // functions
                                  } else {
                                    Utils().showSnackBar(
                                        context: context, content: output);
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  MainButton(
                    child: Text(
                      "Back",
                      style: TextStyle(
                        letterSpacing: 0.6,
                      ),
                    ),
                    color: Colors.grey,
                    loading: false,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
