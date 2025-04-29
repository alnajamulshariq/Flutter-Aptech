import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'bottom_nav.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  var statusImages = [
    "assets/images/a.jpg",
    "assets/images/b.jpg",
    "assets/images/c.jpg",
    "assets/images/d.jpg",
    "assets/images/e.jpg",
    "assets/images/f.jpg",
    "assets/images/g.jpg",
    "assets/images/h.jpg",
    "assets/images/i.jpg",
    "assets/images/a.jpg",
  ];

  var statusNames = [
    "Shariq",
    "Ali",
    "Abdullah",
    "Bilal",
    "Nauman",
    "Zubair",
    "Asghar",
    "Ahsan",
    "Samad",
    "Shariq",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leadingWidth: 100,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            "assets/images/InstagramLogo.png",
            fit: BoxFit.contain,
          ),
        ),
        actions: [
          IconButton(
            icon: const FaIcon(FontAwesomeIcons.heart, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const FaIcon(
              FontAwesomeIcons.facebookMessenger,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: statusImages.length,
              itemBuilder:
                  (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: const LinearGradient(
                              colors: [
                                Colors.purple,
                                Colors.red,
                                Colors.orange,
                                Colors.yellow,
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(
                              3,
                            ), // border thickness
                            child: CircleAvatar(
                              radius: 32,
                              backgroundColor: Colors.black,
                              child: CircleAvatar(
                                radius: 29,
                                backgroundImage: AssetImage(
                                  statusImages[index],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          statusNames[index],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
            ),
          ),
          Container(
            height: 60,
            width: double.infinity,
            child: ListView.builder(
              itemCount: 10, // Add your list item count
              itemBuilder:
                  (context, index) => ListTile(
                    leading: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: const LinearGradient(
                          colors: [
                            Colors.purple,
                            Colors.red,
                            Colors.orange,
                            Colors.yellow,
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(3), // border thickness
                        child: CircleAvatar(
                          radius: 18,
                          backgroundColor: Colors.black,
                          child: CircleAvatar(
                            radius: 16,
                            backgroundImage: AssetImage(
                              "assets/images/a.jpg",
                            ), // Replace with dynamic image
                          ),
                        ),
                      ),
                    ),
                    title: Text(
                      "Shariq", // This can also be dynamic based on your data
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text(
                      "Karachi, Pakistan",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    trailing: FaIcon(
                      FontAwesomeIcons.ellipsisVertical,
                      color: Colors.white,
                    ),
                  ),
            ),
          ),
          Container(height: 10),
          Container(
            height: 400,
            width: double.infinity,
            child: Image.asset("assets/images/a.jpg", fit: BoxFit.cover),
          ),
          Container(
            height: 30,
            width: double.infinity,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 10),
                  child: FaIcon(FontAwesomeIcons.heart, color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, top: 13),
                  child: Text("5471", style: TextStyle(color: Colors.white)),
                ),
                SizedBox(width: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 2, top: 11),
                  child: FaIcon(FontAwesomeIcons.comment, color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, top: 13),
                  child: Text("105", style: TextStyle(color: Colors.white)),
                ),
                SizedBox(width: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 2, top: 11),
                  child: FaIcon(
                    FontAwesomeIcons.paperPlane,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, top: 13),
                  child: Text("115", style: TextStyle(color: Colors.white)),
                ),
                SizedBox(width: 105),
                Padding(
                  padding: const EdgeInsets.only(left: 2, top: 11),
                  child: FaIcon(FontAwesomeIcons.bookmark, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNav(currentIndex: 0),
    );
  }
}
