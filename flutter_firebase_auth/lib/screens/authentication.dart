import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationServices {
  final _Authentication = FirebaseAuth.instance;

  Future<User?> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      final credential = await _Authentication.createUserWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } on FirebaseException catch (e) {
      throw 'something went wrong';
    }
  }

  Future<User?> loginUserWithEmailAndPassword(
      String email, String password) async {
    try {
      final credential = await _Authentication.signInWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } on FirebaseException catch (e) {
      throw 'something went wrong';
    }
  }
}
