import 'dart:convert';

import 'package:apilearning/viewuser.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class insertdata extends StatefulWidget {
  const insertdata({super.key});

  @override
  State<insertdata> createState() => _insertdataState();
}

class _insertdataState extends State<insertdata> {
  TextEditingController con1= TextEditingController();
  TextEditingController con2= TextEditingController();
  var url="https://enjoying-thank-unavailable-missile.trycloudflare.com/api/persons/";
  var responsedata;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getmethod(url);
    //postmethod(url);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Insert Data")),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center
          ,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(controller: con1,decoration: InputDecoration(labelText: "name"),),
            TextField(controller: con2,decoration: InputDecoration(labelText: "age"),),
            ElevatedButton(onPressed: (){
              postmethod(url,con1.text,int.parse(con2.text));

            }, child: Text("Add")),
             ElevatedButton(
              onPressed: () {
               Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  viewuserdata()),
                );
              },
              child: Text("view userdata")),
          ],
        ),
      ),
      
    );
  }
   void getmethod(String url) async {
    var response = await http.get(Uri.parse(url));
   // print(response.statusCode);

    setState(() {
      responsedata = jsonDecode(response.body);
      //print(responsedata);
    });
  }
  Future postmethod(String url,String text,int age) async {
    var response  = await http.post(Uri.parse(url),
    headers: {'Content-Type': 'application/json'},
    body: jsonEncode({"name": text, 
          "age": age
          })
    );
    if(response.statusCode==201){
      print("success");
    }
    else{
      print("failure");

    }


  }
}