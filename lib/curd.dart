import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class Crud extends StatefulWidget {
  const Crud({super.key});

  @override
  State<Crud> createState() => _CrudState();
}

class _CrudState extends State<Crud> {

 // FirebaseDatabase database = FirebaseDatabase.instance;
 // FirebaseApp secondaryApp = Firebase.app('SecondaryApp');
//FirebaseDatabase database = FirebaseDatabase.instanceFor(app: secondaryApp);


 // FirebaseApp firebaseApp = Firebase.app();
 // final rtdb = FirebaseDatabase.instanceFor(app: firebaseApp, databaseURL: 'https://authentication-41a85-default-rtdb.firebaseio.com/');
  DatabaseReference dbRef = FirebaseDatabase.instance.ref();
  // final auth = AuthService();



  TextEditingController nameController=TextEditingController();
  TextEditingController ageController=TextEditingController();
  TextEditingController subjectController=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(helperText: "Name:"),),
              TextField(
                controller: ageController,
                decoration: const InputDecoration(helperText: "Age:"),),
              TextField(
                controller: subjectController,
                decoration: const InputDecoration(helperText: "subject:"),),
              const SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                Map<String,dynamic> data ={
                  "name":nameController.text.toString(),
                  "age":ageController.text.toString(),
                  "subject": subjectController.text.toString(),
                };

                dbRef.child("students").push().set(data).then((value){
                  print("Data added successfully");
                  Navigator.of(context).pop();
                }).catchError((error) {
                print("Failed to add data: $error");
                });


              }, child: Text("add"))

            ],
          ),
        ),
      ),
    );
  }
}
