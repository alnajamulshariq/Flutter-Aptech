import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Food Panda",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Color(0xffff2b85),
          foregroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.fastfood_outlined),
          ),
          actions: [
            Icon(Icons.shopping_cart),
            SizedBox(width: 8),
            Icon(Icons.person),
            SizedBox(width: 8),
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(height: 20),
              Container(
                height: 200,
                width: double.infinity,
                child: Image.asset(
                  'assets/images/foodPanda.png',
                ), // optional: just to see the container
              ),
              SizedBox(height: 20),
              Text(
                "Food Panda App",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Enter Your Name',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.pink, width: 2),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Enter Your Name',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.pink, width: 2),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 15,
                    backgroundColor: Colors.pink,
                  ),
                  child: Text("Submit", style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ), // ← Comma added here
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromARGB(255, 212, 68, 128),
          selectedItemColor: Colors.black38,
          currentIndex: 0,
          unselectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Person'),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
          ],
        ),
      ),
    ),
  );
}
