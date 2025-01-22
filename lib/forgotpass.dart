import 'package:flutter/material.dart';

import 'authservice.dart';

class Forgotpass extends StatefulWidget {
  const Forgotpass({super.key});

  @override
  State<Forgotpass> createState() => _ForgotpassState();
}

class _ForgotpassState extends State<Forgotpass> {
  TextEditingController _email=TextEditingController();
  AuthService auth= AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Enter email to send you a password reset email"),
              SizedBox(height: 10,),
              // customTextField(hint:"Enter email",label:)
              TextFormField(
                controller: _email,
                decoration: InputDecoration(
                    hintText: 'Email',
                    label: Text('Email'),
                    border: OutlineInputBorder()),
              ),
              SizedBox(height: 30,),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () async{
                    await auth.sendPasswordResetLink(_email.text);
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text("An email for password reset has been sent to your email")));
                  Navigator.pop(context);
                    },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                  child: const Text(
                    'Send email',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
