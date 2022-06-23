// ignore_for_file: unused_import, file_names, unnecessary_string_escapes, library_private_types_in_public_api, sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:michiganyelp/resources/constants.dart';
import 'package:michiganyelp/resources/auth_methods.dart';
import 'package:michiganyelp/screens/sign-up.dart';
import 'package:michiganyelp/resources/utils.dart';
import 'package:michiganyelp/widgets/main_button.dart';
import 'package:michiganyelp/widgets/text_field.dart';

class SignIn extends StatefulWidget {
  const SignIn({
    Key? key,
  }) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  AuthMethods auth = AuthMethods();

  @override
  void dispose() {
    super.dispose();
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
                  Container(
                    height: screenSize.height * 0.5,
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
                          "Sign-In",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 33,
                          ),
                        ),
                        TextFieldWidget(
                          title: "Email",
                          controller: emailController,
                          obscureText: false,
                          hintText: "Enter your email",
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
                              String output = await auth.signInUser(
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
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 1,
                          color: Colors.grey,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "New to GROWL?",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 1,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  MainButton(
                    child: Text(
                      "Create a GROWL Account",
                      style: TextStyle(
                        letterSpacing: 0.6,
                      ),
                    ),
                    color: Colors.grey,
                    loading: false,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const SignUp();
                      }));
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
