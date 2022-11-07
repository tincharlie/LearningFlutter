// ignore: file_names
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset(
              "assets/images/loginNew.jpg",
              fit: BoxFit.cover,
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 20.0, 
            ),
            // ignore: prefer_const_constructors
            // Text(
            //   "Welcome",
            //   // ignore: prefer_const_constructors
            //   style: TextStyle(
            //     fontSize: 24,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(
              vertical: 16.0, 
              horizontal: 32.0),
            child: Column(
              children: [TextFormField(
                decoration: InputDecoration(
                hintText: "Enter Username",
                labelText:"Username"),
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Enter Password",
                labelText:"Password"),
            ),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {
              // print("Hi Wlcm To ML Class");
            }, child: Text("Login"), style: TextButton.styleFrom(),)
            ]
            ),
            )
          ],
        )
        // child: Center(
        //   child: Text(
        //     "Login Page",
        //     style: TextStyle(fontSize: 40, fontFamily: "Italic"),
        //   ),
        // )
        // appBar: AppBar(
        //   title: Text("Login Page"),
        // ),
        // body: Center(
        //   child: Container(
        //     child: Text("Login"),
        //   ),
        // ),
        );
  }
}
