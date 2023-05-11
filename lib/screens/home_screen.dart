import 'package:flutter/material.dart';
import 'package:mukamana/screens/navbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(

      child: Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          title: const Text("Navigation Drawer App"),
          backgroundColor: Colors.pink),
          body: const Center(
            child: Text(
              "Main Page",
              style: TextStyle(fontSize: 40.0),
            )),
        ),   
    );
  }
}
