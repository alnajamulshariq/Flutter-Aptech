import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        leading: Icon(Icons.movie),
        title: Text("NETFLIX", style: TextStyle(color: Colors.red)),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            child: Image.asset(
              "assets/images/netflix_hero.jpg",
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Upcoming Movies",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Container(
            height: 300,
            width: double.infinity,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    height: 200,
                    width: 150,
                    child: Image.asset("assets/images/pic1.webp"),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    height: 200,
                    width: 150,
                    child: Image.asset("assets/images/pic2.jpg"),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    height: 200,
                    width: 150,
                    child: Image.asset("assets/images/pic3.webp"),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    height: 200,
                    width: 150,
                    child: Image.asset("assets/images/pic4.jpg"),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    height: 200,
                    width: 150,
                    child: Image.asset("assets/images/pic5.jpeg"),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    height: 200,
                    width: 150,
                    child: Image.asset("assets/images/pic6.jpeg"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.phone), label: 'Call'),
        ],
      ),
    );
  }
}
