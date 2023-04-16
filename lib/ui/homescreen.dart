import 'package:flutter/material.dart';
import 'package:spotify_ui/ui/card/singer_card_view.dart';
import 'package:spotify_ui/ui/card/top_picks.dart';
import 'package:spotify_ui/ui/card/trending_now.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black87,
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    const Text(
                      ' Made for you',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.timer_sharp,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.settings,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SingerCardView(),
                Container(
                  alignment: Alignment.topLeft,
                  child: const Text(
                    ' Trending Now',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 28,
                      fontFamily: 'NotoSans-Black',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const TrendingNow(),
                Container(
                  alignment: Alignment.topLeft,
                  child: const Text(
                    ' Top picks for you',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 28,
                      fontFamily: 'NotoSans-Black',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const TopPicks(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
