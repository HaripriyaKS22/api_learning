
import 'package:apilearning/home.dart';
import 'package:apilearning/login.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:apilearning/AuthProvider.dart';


class otp extends StatelessWidget {
  var phno,name;
 otp({ required this.phno, required this.name});

  TextEditingController con1 =TextEditingController();

  @override
  Widget build(BuildContext context) {
    Provider.of<AuthProvide>(context,listen: false).phonesignin(phno);


     return Scaffold(

      appBar: AppBar(title: Text("Register")),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Padding(padding: EdgeInsets.all(10)),
            TextField(controller: con1,),
           
            ElevatedButton(onPressed: ()async{
                await Provider.of<AuthProvide>(context,listen: false).verify(con1.text,phno,name);


               
                 Navigator.push(context, MaterialPageRoute(builder: (context) =>homee()));



             
            }, child: Text("SUBMIT"))
            
          ],
          
        ),
      )

    );
  }
}