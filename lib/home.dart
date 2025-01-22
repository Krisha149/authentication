import 'package:authentication/authservice.dart';
import 'package:flutter/material.dart';
import 'curd.dart';

import 'login.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  AuthService auth= AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("welcome User",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
            SizedBox(height:10),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Crud()));
              },
              child: Container(
                child: Text("Details"),
              ),
            ),
            SizedBox(height: 90,),
            SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width*0.6,
              child: ElevatedButton(onPressed: ()async{
                await auth.signout(context);
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Login(),),);
              },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(),
                    backgroundColor: Colors.blue
                  ),
                  child: Text("signout",style: TextStyle(color: Colors.white,fontSize: 20),)),
            )
          ],
        ),
      ),
    );
  }
}
