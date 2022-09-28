// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'bg.dart';

class ChangeNameCard extends StatelessWidget {
  const ChangeNameCard({
    Key? key,
    required this.myText,
    required TextEditingController nameController,
  })  : _nameController = nameController,
        super(key: key);

  final String myText;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        BGIMG(), //check bg.dart file
        // ignore: prefer_const_constructors
        SizedBox(
          height: 20,
        ), //this is basically like an empty div
        Text(
          myText,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: _nameController,
            keyboardType: TextInputType
                .text, //isko agar number kar denge to shirf number wala keyboard dikhayega
            // obscureText: true,
            //ye password fields ke liye acha option hai
            decoration: InputDecoration(
              hintText: " Enter Something Here",
              labelText: "Name",
              border: OutlineInputBorder(),
            ),
          ),
        )
      ],
    );
  }
}
