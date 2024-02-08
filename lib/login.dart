import 'package:apilearning/otp.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
   TextEditingController con1 = new TextEditingController();
  TextEditingController con2 = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Padding(padding: EdgeInsets.all(10)),
            TextField(
              decoration:InputDecoration(border: OutlineInputBorder(),label: Text("Name"))
              ,controller: con1,
            ),
            TextField(
              controller: con2,
              decoration:InputDecoration(border: OutlineInputBorder(),label: Text("Phone"))
            ),
            ElevatedButton(onPressed: (){
              var phonenumber ="+91${con2.text}";
              Navigator.push(context, MaterialPageRoute(builder: (context)=>otp(phno:phonenumber,name:con1.text)));
            }, child: Text("Send"))
            
          ],
          
        ),
      )

    );
  }
}