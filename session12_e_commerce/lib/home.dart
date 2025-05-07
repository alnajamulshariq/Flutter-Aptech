import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  var swiperImages = [
    "assets/images/e.jpg",
    "assets/images/f.jpg",
    "assets/images/g.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("E-Commerce Website"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: 10),
            Center(
              child: Container(
                height: 250,
                width: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                ),
                child: Swiper(
                  itemCount: swiperImages.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                      ),
                      elevation: 5,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                        child: Image.asset(
                          swiperImages[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                  autoplay: true,
                  pagination: SwiperPagination(),
                  control: SwiperControl(),
                ),
              ),
            ),
            // Wrap the GridView in a Container with height constraint
            Container(
              height: 400, // Adjust height as per your layout needs
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 11,
                crossAxisSpacing: 11,
                // physics:
                //     NeverScrollableScrollPhysics(), // Disable GridView's scrolling
                children: [
                  Card(
                    shadowColor: Colors.amber,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.blue,
                        width: 1.0,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 7,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            "assets/images/e.jpg", // your image path
                            width: 120,
                            height: 120,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 8),
                          Text("Shariq Najam"),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shadowColor: Colors.amber,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.blue,
                        width: 1.0,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 7,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            "assets/images/e.jpg", // your image path
                            width: 120,
                            height: 120,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 8),
                          Text("Shariq Najam"),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shadowColor: Colors.amber,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.blue,
                        width: 1.0,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 7,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            "assets/images/e.jpg", // your image path
                            width: 120,
                            height: 120,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 8),
                          Text("Shariq Najam"),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shadowColor: Colors.amber,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.blue,
                        width: 1.0,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 7,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            "assets/images/e.jpg", // your image path
                            width: 120,
                            height: 120,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 8),
                          Text("Shariq Najam"),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shadowColor: Colors.amber,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.blue,
                        width: 1.0,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 7,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            "assets/images/e.jpg", // your image path
                            width: 120,
                            height: 120,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 8),
                          Text("Shariq Najam"),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shadowColor: Colors.amber,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.blue,
                        width: 1.0,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 7,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            "assets/images/e.jpg", // your image path
                            width: 120,
                            height: 120,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 8),
                          Text("Shariq Najam"),
                        ],
                      ),
                    ),
                  ),
                  // Add more cards here...
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
