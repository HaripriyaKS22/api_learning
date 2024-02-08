
import 'package:apilearning/home.dart';
import 'package:apilearning/login.dart';

import 'package:apilearning/AuthProvider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:apilearning/otp.dart';
import 'package:provider/provider.dart';


import 'firebase_options.dart';

void main()async{
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(ChangeNotifierProvider(
      create: (context)=> AuthProvide(),
      child:myapp()));
}
class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Authchecker(),
    );
  }
}


class Authchecker extends StatelessWidget {
  const Authchecker({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
       builder:(context, snapshot){
        User? user = snapshot.data;
        if(user == null ){
          return home();
        }else{
          return homee();
        }

       });
  }
}