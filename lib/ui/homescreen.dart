import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/free.png',
              fit: BoxFit.fill,
            ),
            Image.asset(
              'assets/images/free.png',
              fit: BoxFit.fill,
            ),
          ],
        ),
      ),
    );
  }
}
