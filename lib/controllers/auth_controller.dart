import 'package:emart/consts/consts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  Future<UserCredential?> loginMethod(email, password) async {
    UserCredential userCredential;
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (e) {}
  }
}
