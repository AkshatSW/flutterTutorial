import 'package:flutter/material.dart';

import '../ChangeNameCard.dart';
import '../drawer.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  TextEditingController _nameController =
      TextEditingController(); //_nameController me _ use karne se ye ek private value ho jayegi
  var myText = "Change Me";
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(title: Text("Flutter App")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          //this will make sure ki jab hamara keyboard aaye to ye usko overflow na kare
          child: Card(
            child:
                ChangeNameCard(myText: myText, nameController: _nameController),
          ),
        ),
      ),
      drawer: MyDrawer(), //iska content drawer.dart file me hai
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _nameController.text;
          setState(() {});
          //ye method call karna padega to make sure ki change ho raha hai
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
