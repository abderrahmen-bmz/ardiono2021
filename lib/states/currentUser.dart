import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class CurrentUser extends ChangeNotifier {
  String _uid;
  String _email;

  String get getUid => _uid;
  String get getEmail => _email;

  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<bool> signUpUser(String email, String password) async{
    bool retVel = false;
    try {
      UserCredential _authResult = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      if (_authResult.user != null) {
        retVel = true;
      }
    } catch (e) {
      print(e.toString());
    } 
    return retVel;
  }

  Future<bool> loginUser(String email, String password) async{

     bool retVel;
    try {
      UserCredential _authResult = await _auth.signInWithEmailAndPassword(email: email, password: password);
      if (_authResult.user != null) {
        _uid = _authResult.user.uid;
        _email = _authResult.user.email;
        retVel = true;
      }
    } catch (e) {
      print(e);
    } 
    return retVel;
  }
}