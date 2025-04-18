import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text("Flutter Application"),
          centerTitle: true,
          foregroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          // Scrollable banaya
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: 300,
                width: double.infinity,
                color: Colors.amber,
                child: Text(
                  "My First Flutter Application",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.pink,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center, // text center mein kar diya
                height: 300,
                width: double.infinity,
                color: Colors.blue,
                child: Text(
                  "My First Flutter Application",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 300,
                width: double.infinity,
                color: Colors.greenAccent,
                child: Text(
                  "My First Flutter Application",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 300,
                width: double.infinity,
                color: Colors.amber,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(height: 100, width: 100, color: Colors.blue),
                    Container(height: 100, width: 100, color: Colors.pink),
                    Container(height: 100, width: 100, color: Colors.purple),
                    Container(height: 100, width: 100, color: Colors.yellow),
                  ],
                ),
              ),

              Container(
                alignment: Alignment.center,
                height: 300,
                width: double.infinity,
                color: Colors.amber,
                child: Row(
                  children: [
                    Expanded(child: Container(height: 300, color: Colors.blue)),
                    Expanded(child: Container(height: 300, color: Colors.pink)),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 300,
                width: double.infinity,
                color: Colors.amber,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2, // 20%
                      child: Container(height: 300, color: Colors.cyanAccent),
                    ),
                    Expanded(
                      flex: 5, // 50%
                      child: Container(height: 300, color: Colors.purpleAccent),
                    ),
                    Expanded(
                      flex: 3, // 30%
                      child: Container(height: 300, color: Colors.lime),
                    ),
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
