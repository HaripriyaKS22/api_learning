import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class repeat extends StatefulWidget {
  const repeat({super.key});

  @override
  State<repeat> createState() => _repeatState();
}

class _repeatState extends State<repeat> {
 List numberList = [];

  @override
  void initState(){
        super.initState();
        DatabaseReference categoryDataRef =
        FirebaseDatabase.instance.ref("user");
        categoryDataRef.onValue.listen((DatabaseEvent event) {
      numberList.clear();
     

      final categoryData = event.snapshot.value;

      setState(() {
        if (categoryData != null && categoryData is Map<Object?,Object?>) {
              categoryData.forEach((key, value) {
                 if (value != null && value is Map<Object?,Object?>) {

                  var datav = value['phonenumber'];
                  numberList.add(datav);
                  print("key: $datav");
                  
                
               
                 } 
              });  
        }
      });
      





      
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  ListView.builder(
        itemCount: numberList.length,
        itemBuilder: (context, index) {
          return numberList[index];
        },
      ),
    );
  }

  }