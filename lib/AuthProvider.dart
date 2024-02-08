import 'package:apilearning/userauth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

class AuthProvide extends ChangeNotifier{
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseDatabase database = FirebaseDatabase.instance;
  
   String? verificationIdimp ;
  
  Future phonesignin(String number) async{

    await FirebaseAuth.instance.verifyPhoneNumber(
  phoneNumber: number,
  verificationCompleted: (PhoneAuthCredential credential)  async {
     await auth.signInWithCredential(credential);
  },
  verificationFailed: (FirebaseAuthException e) {
     print(e.message);
  },
  codeSent: (String verificationId, int? resendToken) {
     verificationIdimp = verificationId;

        print("your code sent sucsessfully");
  },
  codeAutoRetrievalTimeout: (String verificationId) {
    print("your code is time out");
  },
);
  }

  Future verify( otp,phone, name) async{
    
    
    final PhoneAuthCredential credential = PhoneAuthProvider.credential(
      verificationId: verificationIdimp!,
       smsCode: otp);
       await auth.signInWithCredential(credential);
   
    
       DatabaseReference ref = FirebaseDatabase.instance.ref("users");

        DatabaseReference newuser = ref.push();

 
  await newuser.set({
    "name": name,
    
    "phonenumber": phone,
  });


  }
}

  
