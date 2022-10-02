// ignore_for_file: prefer_const_constructors

import 'package:app/bg.dart';
import 'package:app/pages/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            BGIMG(),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                    child: Card(
                  child: Column(
                    children: <Widget>[
                      Form(
                          child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                                decoration: InputDecoration(
                                    hintText: "Enter Username",
                                    labelText: "Username")),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                                obscureText:
                                    true, //this will make sure to hide the password we input
                                decoration: InputDecoration(
                                  hintText: "Enter Password",
                                  labelText: "Password",
                                )),
                          ],
                        ),
                      )),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        //Originally Raised Button use hua tha per vo work nahi kar raha for some reason
                        onPressed: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (context) => HomePage(),
                          //     ));  //one way to route to another way

                          Navigator.pushNamed(context,
                              "/home"); //will use navigator.pop for going back
                        },
                        child: Text("Sign In"),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                )),
              ),
            ),
          ],
        ));
  }
}
