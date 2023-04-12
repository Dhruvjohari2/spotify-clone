import 'package:flutter/material.dart';
import 'package:spotify_ui/ui/log_in_page.dart';

class StartUpScreen extends StatefulWidget {
  const StartUpScreen({Key? key}) : super(key: key);

  @override
  State<StartUpScreen> createState() => _StartUpScreenState();
}

class _StartUpScreenState extends State<StartUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const LogInPage(),
            ),
          );
        },
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/startup.png'),
            ),
          ),
          child: null,
        ),
      ),
    );
  }
}
