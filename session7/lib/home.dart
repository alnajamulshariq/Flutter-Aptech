import 'package:flutter/material.dart';
import 'bottom.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
        foregroundColor: Colors.white,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.person))],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            color: Colors.pinkAccent,
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Session 7 Stateful, Stateless Widget",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 200,
            width: double.infinity,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 150,
                    width: 100,
                    child: Image.asset("assets/images/foodPanda.png"),
                  ),
                  SizedBox(width: 10),

                  Container(
                    height: 150,
                    width: 100,
                    child: Image.asset("assets/images/foodPanda.png"),
                  ),
                  SizedBox(width: 10),

                  Container(
                    height: 150,
                    width: 100,
                    child: Image.asset("assets/images/foodPanda.png"),
                  ),
                  SizedBox(width: 10),

                  Container(
                    height: 150,
                    width: 100,
                    child: Image.asset("assets/images/foodPanda.png"),
                  ),
                  SizedBox(width: 10),

                  Container(
                    height: 150,
                    width: 100,
                    child: Image.asset("assets/images/foodPanda.png"),
                  ),
                  SizedBox(width: 10),

                  Container(
                    height: 150,
                    width: 100,
                    child: Image.asset("assets/images/foodPanda.png"),
                  ),
                  SizedBox(width: 10),

                  Container(
                    height: 150,
                    width: 100,
                    child: Image.asset("assets/images/foodPanda.png"),
                  ),
                  SizedBox(width: 10),

                  Container(
                    height: 150,
                    width: 100,
                    child: Image.asset("assets/images/foodPanda.png"),
                  ),
                  SizedBox(width: 10),

                  Container(
                    height: 150,
                    width: 100,
                    child: Image.asset("assets/images/foodPanda.png"),
                  ),
                  SizedBox(width: 10),

                  Container(
                    height: 150,
                    width: 100,
                    child: Image.asset("assets/images/foodPanda.png"),
                  ),
                  SizedBox(width: 10),

                  Container(
                    height: 150,
                    width: 100,
                    child: Image.asset("assets/images/foodPanda.png"),
                  ),
                  SizedBox(width: 10),

                  Container(
                    height: 150,
                    width: 100,
                    child: Image.asset("assets/images/foodPanda.png"),
                  ),
                  SizedBox(width: 10),

                  Container(
                    height: 150,
                    width: 100,
                    child: Image.asset("assets/images/foodPanda.png"),
                  ),
                  SizedBox(width: 10),

                  Container(
                    height: 150,
                    width: 100,
                    child: Image.asset("assets/images/foodPanda.png"),
                  ),
                  SizedBox(width: 10),

                  Container(
                    height: 150,
                    width: 100,
                    child: Image.asset("assets/images/foodPanda.png"),
                  ),
                  SizedBox(width: 10),

                  Container(
                    height: 150,
                    width: 100,
                    child: Image.asset("assets/images/foodPanda.png"),
                  ),
                  SizedBox(width: 10),

                  Container(
                    height: 150,
                    width: 100,
                    child: Image.asset("assets/images/foodPanda.png"),
                  ),
                  SizedBox(width: 10),

                  Container(
                    height: 150,
                    width: 100,
                    child: Image.asset("assets/images/foodPanda.png"),
                  ),
                  SizedBox(width: 10),

                  Container(
                    height: 150,
                    width: 100,
                    child: Image.asset("assets/images/foodPanda.png"),
                  ),
                  SizedBox(width: 10),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
      bottomNavigationBar: BottomNav(currentIndex: 0),
    );
  }
}
