/*import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'authservice.dart';
import 'dart:developer';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const Login());
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final auth= AuthService();


  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(
              right: 20.0, left: 20.0, bottom: 40.0, top: 50),
          child: Column(
            children: [
              Text(
                "Login",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Email",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: _email,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),

                  // enabledBorder: OutlineInputBorder(
                  //   borderSide:
                  //   BorderSide(width: 4, color: Colors.black),
                  //   borderRadius: BorderRadius.circular(10.0),
                  // ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "password",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: _password,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  // enabledBorder: OutlineInputBorder(
                  //   borderSide:
                  //   BorderSide(width: 4, color: Colors.black),
                  //   borderRadius: BorderRadius.circular(10.0),
                  // ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(),
                      backgroundColor: Colors.blue,
                    ),

                    onPressed: () async{
                      final user= await auth.loginUserWithEmailAndPassword(_email.text,_password.text);
                      if(user!= null){
                        log('user logged in');
                        Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Login()),
                              );
                      }
                    },
                    // onPressed: () {
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute(builder: (context) => Login()),
                    //   );
                    // },
                    child: Text("login")),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyApp()),
                        );
                      },
                      child: Text(
                        "Register",
                        style: TextStyle(color: Colors.blue),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}*/



//chatgpt code:
// import 'package:flutter/material.dart';
// import 'authservice.dart';
// import 'home.dart';
//
//
// class Login extends StatefulWidget {
//   const Login({super.key});
//
//   @override
//   State<Login> createState() => _LoginState();
// }
//
// class _LoginState extends State<Login> {
//   final AuthService _authService = AuthService();
//
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//
//   @override
//   void dispose() {
//     _emailController.dispose();
//     _passwordController.dispose();
//     super.dispose();
//   }
//
//   void _login() async {
//     final email = _emailController.text.trim();
//     final password = _passwordController.text.trim();
//
//     if (email.isEmpty || password.isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('Please fill in all fields')),
//       );
//       return;
//     }
//
//     final user = await _authService.loginUserWithEmailAndPassword(email, password);
//     if (user != null) {
//       // Navigator.pushReplacementNamed(context, '/home');
//       const SnackBar(content: Text('home page'));
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('Login failed. Please try again.')),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               const Text("Login", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
//               const SizedBox(height: 20),
//               _buildTextField("Email", _emailController),
//               const SizedBox(height: 10),
//               _buildTextField("Password", _passwordController, obscureText: true),
//               const SizedBox(height: 30),
//               ElevatedButton(
//                 onPressed: _login,
//                 style: ElevatedButton.styleFrom(minimumSize: const Size.fromHeight(50)),
//                 child: const Text("Login"),
//               ),
//               const SizedBox(height: 20),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Text("Don't have an account? "),
//                   GestureDetector(
//                     onTap: () {
//                       // Navigator.pushNamed(context, '/register');
//                       Navigator.push(
//                                 context,
//                                 MaterialPageRoute(builder: (context) => Home()),
//                               );
//                     },
//                     child: const Text("Register", style: TextStyle(color: Colors.blue)),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildTextField(String label, TextEditingController controller, {bool obscureText = false}) {
//     return TextField(
//       controller: controller,
//       obscureText: obscureText,
//       decoration: InputDecoration(
//         labelText: label,
//         border: const OutlineInputBorder(),
//       ),
//     );
//   }
// }

import 'dart:developer';

import 'authservice.dart';
import 'forgotpass.dart';
import 'home.dart';
import 'main.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const Login());
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  final auth = AuthService();
  final _email = TextEditingController();
  final _password = TextEditingController();
  bool isLoading=false;

  @override
  void dispose() {
    super.dispose();
    _email.dispose();
    _password.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                // const Spacer(),
                SizedBox(
                  height: 200,
                ),
        
                Text(
                  'LogIn',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                SizedBox(
                  height: 50,
                ),
                TextFormField(
                  controller: _email,
                  decoration: InputDecoration(
                      hintText: 'Email',
                      label: Text('Email'),
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 20,
                ),
        
                TextFormField(
                  controller: _password,
                  decoration: InputDecoration(
                      hintText: 'Password',
                      label: Text('PassWord'),
                      border: OutlineInputBorder()),
                ),
                SizedBox(height: 10,),
                Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Forgotpass()));
                        },
                        child: Text("forgot password?",style: TextStyle(color: Colors.lightBlue.shade400),))),
        
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: login,
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                    child: Text(
                      'Log In',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyApp()));
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an account?  '),
                      Text(
                        'Signin',
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),

                SizedBox(height: 30,),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: isLoading? const CircularProgressIndicator(): ElevatedButton(
                    onPressed: () async{
                      // setState(() {
                      //   isLoading=true;
                      // });
                      // await auth.LogInWithGoogle();
                      // setState(() {
                      //   isLoading=false;
                      // });
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey,
                        // shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(5))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.g_mobiledata,size: 30,),
                        Text(
                          'SignIn with Google',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
  goTOHome(BuildContext context) => Navigator.push(
      context, MaterialPageRoute(builder: (context) => const Home()));
  goTOLogin(BuildContext context) => Navigator.push(
      context, MaterialPageRoute(builder: (context) => const Login()));

  login() async {
    try {
      final user =
      await auth.loginUserWithEmailandPassword(_email.text, _password.text,context);
      if (user != null) {
        log('User Logged in');
        goTOHome(context);
      }
    } catch (e) {
      log('Error during login: $e');
      /*ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Signup Failed: $e')),
      );*/
    }
  }
}

