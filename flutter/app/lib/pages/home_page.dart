// ignore_for_file: prefer_final_fields, prefer_const_constructors

import 'package:flutter/material.dart';
import '../drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  TextEditingController _nameController =
      TextEditingController(); //_nameController me _ use karne se ye ek private value ho jayegi
  var myText = "Change Me";
  var url =
      "https://jsonplaceholder.typicode.com/photos"; //is link se ham json ka data laa rahe hai
  var data;

  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  getData() async {
    var res = await http.get(Uri.parse(url));
    //NOTE: Origanally it was http.get(url), but this was not working. check
    data = jsonDecode(res.body); //decoding the data
    print(data); //just to check ki hamara data aa raha hai ki nahi
    // //this code will print out the json data in our terminal body.
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(title: Text("Flutter App")),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: data != null
              ? ListView.builder(
                  //can also use gridview and griddelilgatecount
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        title: Text(data[index]["title"]),
                        subtitle: Text("ID: ${data[index]["id"]}"),
                        leading: Image.network(data[index]["thumbnailUrl"]),
                      ),
                    );
                  },
                  itemCount: data.length,
                )
              : Center(
                  child:
                      CircularProgressIndicator(), //conditonal operator hai ye
                )),
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
