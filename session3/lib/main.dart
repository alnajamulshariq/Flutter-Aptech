import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text("Fashion"),
          centerTitle: true,
          foregroundColor: Colors.white,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 16.0), // right margin
              child: Icon(Icons.search),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(20), // thoda spacing de diya form ke around
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              Center(
                child: Text(
                  "Login Form",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink,
                  ),
                ),
              ),
              SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  labelText: "Enter Your Name",
                  prefixIcon: Icon(Icons.person),
                  // focusedBorder: OutlineInputBorder(),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.lightBlueAccent,
                      width: 2,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  labelText: "Enter Your Password",
                  prefixIcon: Icon(Icons.lock),
                  // focusedBorder: OutlineInputBorder(),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.lightBlueAccent,
                      width: 2,
                    ),
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
