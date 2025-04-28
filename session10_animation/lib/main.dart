import 'package:flutter/material.dart';
import 'animations.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  const FlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Animations",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animations"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(2), child: CheckedAnimation()),
            Padding(padding: EdgeInsets.all(2), child: MusicAnimation()),
            Padding(padding: EdgeInsets.all(2), child: WrongThingsAnimation()),
            Padding(padding: EdgeInsets.all(2), child: LoaderAnimation()),
            Padding(padding: EdgeInsets.all(2), child: BounceAnimation()),
          ],
        ),
      ),
    );
  }
}
