/*import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';

class AuthService{

  final auth=FirebaseAuth.instance;

  Future<User?> createUserWithEmailAndPassword(
  String email,String password) async{
    try{
      final cred= await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return cred.user;
    }
    catch(e){
      log('something went wrong: $e');
    }
    return null;

  }


  Future<User?> loginUserWithEmailAndPassword(
  String email,String password) async{
    try{
      final cred= await auth.signInWithEmailAndPassword(
          email: email, password: password);
      return cred.user;
    }
    catch(e){
      log('something went wrong: $e');
    }
    return null;

  }
}*/

// import 'dart:developer';
// import 'package:firebase_auth/firebase_auth.dart';
//
// class AuthService {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//
//   Future<User?> createUserWithEmailAndPassword(
//       String email, String password) async {
//     try {
//       final cred = await _auth.createUserWithEmailAndPassword(
//         email: email,
//         password: password,
//       );
//       return cred.user;
//     } catch (e) {
//       log('Error creating user: $e');
//       return null;
//     }
//   }
//
//   Future<User?> loginUserWithEmailAndPassword(
//       String email, String password) async {
//     try {
//       final cred = await _auth.signInWithEmailAndPassword(
//         email: email,
//         password: password,
//       );
//       return cred.user;
//     } catch (e) {
//       log('Error logging in user: $e');
//       return null;
//     }
//   }
// }

import 'dart:developer';
// import 'package:another_flushbar/flushbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:google_sign_in/google_sign_in.dart';

// import 'package:flushbar/flushbar.dart';

class AuthService {
  final auth = FirebaseAuth.instance;

  // Future<void> sendEmailVerificationLink() async{
  //   try{
  //     await auth.currentUser?.sendEmailVerification();
  //   }catch(e){
  //     print(e.toString());
  //   }
  // }

  //login with google:
  // Future<UserCredential?> signInWithGoogle() async {
//   Future<UserCredential?> LogInWithGoogle() async {
//
//
//     try {
//       // Trigger the authentication flow
//       final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
//
//       // Obtain the auth details from the request
//       final GoogleSignInAuthentication? googleAuth = await googleUser
//           ?.authentication;
//
//       // Create a new credential
//       final credential = GoogleAuthProvider.credential(
//         accessToken: googleAuth?.accessToken,
//         idToken: googleAuth?.idToken,
//       );
//
//       // Once signed in, return the UserCredential
//       return await FirebaseAuth.instance.signInWithCredential(credential);
//     }catch(e){
//       print(e.toString());
//     }
// return null;
//
//   }

  //forgot password:
  Future<void> sendPasswordResetLink(String email) async{
    try{
      await auth.sendPasswordResetEmail(email: email);
    }catch(e){
      print(e.toString());
    }
  }

  // Corrected: Using the proper method for user creation
  Future<User?> createUserWithEmailandPassword(
      String email, String password,context) async {
    try {
      final cred = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      final user= cred.user;
      if (user != null) {
        log("User created: ${user.email}");
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text("User created: ${user.email}")));
        // Flushbar(
        //   flushbarPosition: FlushbarPosition.TOP,
        //   message: "User created:",
        //   icon: Icon(
        //     Icons.info_outline,
        //     size: 28.0,
        //     color: Colors.blue[300],
        //   ),
        //   duration: Duration(seconds: 3),
        //   leftBarIndicatorColor: Colors.blue[300],
        // ).show(context);
      }
      return user;
    } catch (e) {
      log("Error creating user: $e");
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text("Error creating user: $e")));
    }
    return null;
  }

  // Corrected: Using the proper method for user login
  Future<User?> loginUserWithEmailandPassword(
      String email, String password,context) async {
    try {
      final cred = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      return cred.user;
    } catch (e) {
      log("Error logging in: $e");
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text("Error logging in: $e")));
    }
    return null;
  }

  // Signout Method remains the same
  Future<void> signout(context) async {
    try {
      await auth.signOut();
    } catch (e) {
      log("Error signing out: $e");
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text("Error signing out: $e")));

    }
  }
}

