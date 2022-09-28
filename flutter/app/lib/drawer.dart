// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    );
  }
}
