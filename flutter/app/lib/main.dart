// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, unused_field, prefer_final_fields

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Flutter 3",
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.red),
    ),
  );
}

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
            child: Column(
              children: <Widget>[
                Image.asset(
                  "assets/bg.jpeg",
                  fit: BoxFit
                      .cover, //basically kaise fit hogi image uske liye  hai ye
                  // width: 100,
                  // height: 100,
                ),
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
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            // DrawerHeader(
            //   // ignore: sort_child_properties_last
            //   child: Text(
            //     "Hi, Akshat",
            //     style: TextStyle(color: Colors.white),
            //   ),
            //   decoration: BoxDecoration(color: Colors.indigo),
            // ),

            UserAccountsDrawerHeader(
              accountName: Text("Akshat Srivastava"),
              accountEmail: Text("akshat@zariyaa.in"),
              currentAccountPicture: CircleAvatar(
                // child: Image.network(
                //     "https://instagram.flko7-1.fna.fbcdn.net/v/t51.2885-19/281551560_166930375728389_901818772048826142_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.flko7-1.fna.fbcdn.net&_nc_cat=105&_nc_ohc=tkSk93nfHJMAX_uBaRy&edm=ABmJApABAAAA&ccb=7-5&oh=00_AT-0E6mFl40ul8okUUjHU5YgwJkvkxgX7l8P4MNVdRQqxg&oe=633A2602&_nc_sid=6136e7"), //circle nahi hoga try the below method
                backgroundImage: NetworkImage(
                    "https://instagram.flko7-1.fna.fbcdn.net/v/t51.2885-19/281551560_166930375728389_901818772048826142_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.flko7-1.fna.fbcdn.net&_nc_cat=105&_nc_ohc=tkSk93nfHJMAX_uBaRy&edm=ABmJApABAAAA&ccb=7-5&oh=00_AT-0E6mFl40ul8okUUjHU5YgwJkvkxgX7l8P4MNVdRQqxg&oe=633A2602&_nc_sid=6136e7"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
              subtitle: Text('Personal'),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              subtitle: Text('Email'),
              trailing: Icon(Icons.send),
            )
          ],
        ),
      ),
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
