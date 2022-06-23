import 'package:firebase_auth/firebase_auth.dart';

class AuthMethods {
  FirebaseAuth auth = FirebaseAuth.instance;

  Future<String> signUpUser(
      {required String username,
      required String email,
      required String password}) async {
    username.trim();
    email.trim();
    password.trim();
    String output = "Something's not right...";
    if (username != "" && email != "" && password != "") {
      String domain = email.substring(email.length - 10);
      if (domain != "@umich.edu") {
        output = "Please use a valid '@umich.edu' email address";
      } else {
        try {
          await auth.createUserWithEmailAndPassword(
              email: email, password: password);
          output = "Success";
        } on FirebaseAuthException catch (e) {
          output = e.message.toString();
        }
      }
    } else {
      output = "All fields must be filled";
    }
    return output;
  }

  Future<String> signInUser(
      {required String email, required String password}) async {
    email.trim();
    password.trim();
    String output = "Something's not right...";
    if (email != "" && password != "") {
      String domain = email.substring(email.length - 10);
      if (domain != "@umich.edu") {
        output = "Please use a valid '@umich.edu' email address";
      } else {
        try {
          await auth.signInWithEmailAndPassword(
              email: email, password: password);
          output = "Success";
        } on FirebaseAuthException catch (e) {
          output = e.message.toString();
        }
      }
    } else {
      output = "All fields must be filled";
    }
    return output;
  }
}
