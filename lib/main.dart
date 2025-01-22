/*import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'authservice.dart';

// import 'firebase_options.dart';
import 'login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'authentication'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final auth= AuthService();

  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _name = TextEditingController();

  void dispose(){
    _name.dispose();
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        //   title: Text(widget.title),
        // ),
        body: SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(
              right: 20.0, left: 20.0, bottom: 40.0, top: 50),
          child: Column(
            children: [
              Text(
                "Register",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Name",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: _name,
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
                        shape: RoundedRectangleBorder(
                        ),
                      backgroundColor: Colors.blue,
                    ),
                    onPressed: () async{
                      final user= await auth.createUserWithEmailAndPassword(_email.text,_password.text);
                      if(user!= null){
                        log('user created succesfully');
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      }
                    },
                    child: Text("register")),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?"),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      },
                      child: Text(
                        "Login",
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


//chatgpt code
// import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'authservice.dart';
// import 'login.dart';
//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Authentication',
//       debugShowCheckedModeBanner: false,
//       // initialRoute: '/',
//       // routes: {
//       //   '/': (context) => const Register(),
//       //   '/login': (context) => const Login(),
//       // },
//     );
//   }
// }
//
// class Register extends StatefulWidget {
//   const Register({super.key});
//
//   @override
//   State<Register> createState() => _RegisterState();
// }
//
// class _RegisterState extends State<Register> {
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
//   void _register() async {
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
//     final user = await _authService.createUserWithEmailAndPassword(email, password);
//     if (user != null) {
//       // Navigator.pushReplacementNamed(context, '/login');
//       Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => Login()),
//                         );
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('Registration failed. Please try again.')),
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
//               const Text("Register", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
//               const SizedBox(height: 20),
//               _buildTextField("Email", _emailController),
//               const SizedBox(height: 10),
//               _buildTextField("Password", _passwordController, obscureText: true),
//               const SizedBox(height: 30),
//               ElevatedButton(
//                 onPressed: _register,
//                 style: ElevatedButton.styleFrom(minimumSize: const Size.fromHeight(50)),
//                 child: const Text("Register"),
//               ),
//               const SizedBox(height: 20),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Text("Already have an account? "),
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.pushNamed(context, '/login');
//                     },
//                     child: const Text("Login", style: TextStyle(color: Colors.blue)),
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


//mahi code
import 'dart:developer';

import 'authservice.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'login.dart';
import 'home.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp();
    runApp(const MyApp());
  } catch (e) {
    log("Error initializing Firebase: $e");
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Raleway',
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final auth = AuthService();
  final email = TextEditingController();
  final password = TextEditingController();
  final _name = TextEditingController();

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    _name.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                const SizedBox(height: 200),
                const Text('Signup',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
                const SizedBox(height: 50),
                TextFormField(
                  controller: _name,
                  decoration: const InputDecoration(
                    hintText: 'Name',
                    label: Text('Name'),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: email,
                  decoration: const InputDecoration(
                    hintText: 'Email',
                    label: Text('Email'),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: password,
                  obscureText: true, // Password hidden for security
                  decoration: const InputDecoration(
                    hintText: 'Password',
                    label: Text('Password'),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: signup,
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                    child: const Text(
                      'Sign Up',
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
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an account?  '),
                      Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      )
                    ],
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

  signup() async {
    try {
      final user =
      await auth.createUserWithEmailandPassword(email.text, password.text,context);
      if (user != null) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text('User created successfully')));
        log('User created successfully');
        goTOLogin(context);
      }
    } catch (e) {
      log('Error during signup: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Signup Failed: $e')),
      );
    }
  }





}
