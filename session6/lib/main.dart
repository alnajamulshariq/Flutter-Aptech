import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          title: Text("Shariq Najam"),
          centerTitle: true,
          foregroundColor: Colors.white,
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/ShariqNajam.png"),
                    fit: BoxFit.fill,
                  ),
                ),
                currentAccountPicture: ClipOval(
                  child: Image.asset("assets/images/myPic5.png"),
                ),
                accountName: Text("Shariq Najam"),
                accountEmail: Text("scharique@gmail.com"),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  "Home",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                iconColor: Colors.deepPurpleAccent,
                tileColor: const Color.fromARGB(160, 34, 104, 225),
              ),
              ListTile(
                leading: Icon(Icons.chat),
                title: Text(
                  "Chat",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                iconColor: Colors.deepPurpleAccent,
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text(
                  "Person",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                iconColor: Colors.deepPurpleAccent,
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text(
                  "Contact",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                iconColor: Colors.deepPurpleAccent,
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text(
                  "Logout",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                iconColor: Colors.deepPurpleAccent,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
