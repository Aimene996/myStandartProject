// ignore_for_file: avoid_print
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:paternproject/model/user_model.dart';
import 'package:paternproject/pages/frame/signIn/index.dart';

class SignInController extends GetxController {
  SignInController();
  final state = SignInState();

  final GoogleSignIn googleSignIn = GoogleSignIn(scopes: ["openid"]);

  Future<void> handleSignIn(String type) async {
    try {
      if (type == 'phone') {
        if (kDebugMode) {
          print('phone number method');
        } else if (type == "google") {
          var user = await googleSignIn.signIn();
          if (user != null) {
            String? displayName = user.displayName;
            String email = user.email;
            String id = user.id;
            String photoUrl = user.photoUrl ?? '';
            print(displayName);
            UserModel userModel = UserModel(
                username: displayName!,
                uid: id,
                imageUrl: photoUrl,
                email: email);
          }
        } else if (type == "facebook") {
          print('phone number facebook');
        } else if (type == "apple") {
          print('phone number method');
        }
      } else {}
    } catch (e) {}
  }
}
