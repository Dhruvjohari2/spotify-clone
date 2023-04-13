import 'package:flutter/material.dart';
import 'package:spotify_ui/ui/bottomnavigation.dart';
import 'package:spotify_ui/ui/homescreen.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 100,
          ),
          Center(
            child: Container(
              height: 130,
              width: 130,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/Spotify_Logo.png',
                  ),
                ),
              ),
              child: null,
            ),
          ),
          const SizedBox(
            width: 300,
            child: Text(
              'Millions of songs Free on Spotify.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
            ),
          ),
          const SizedBox(height: 20,),
          Container(
            width: 350,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=> BottomNavigation(),));

              },
              child: const Text(
                'Sign up free',
                style: TextStyle(color: Colors.black,fontSize: 18),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 350,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.phone_android,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Continue with phone number',
                    style: TextStyle(color: Colors.white,fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 350,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/Google.png',
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Continue with google',
                    style: TextStyle(color: Colors.white,fontSize: 18,),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 350,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/Facebook.png',
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Continue with facebook',
                    style: TextStyle(color: Colors.white,fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Center(
              child: Text(
            'Log in',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w800,
            ),
          ))
        ],
      ),
    );
  }
}
