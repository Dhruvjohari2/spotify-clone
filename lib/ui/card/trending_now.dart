import 'package:flutter/material.dart';

class TrendingNow extends StatefulWidget {
  const TrendingNow({Key? key}) : super(key: key);

  @override
  State<TrendingNow> createState() => _TrendingNowState();
}

class _TrendingNowState extends State<TrendingNow> {
  final _singers = [
    'Badshah',
    'Jisten Bieber',
    'Raftaar',
    'Ed Sheeran',
    'Katy Perry',
    'AP Dhillon '
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView.builder(
        itemCount: 2,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/trending$index.png',
                  fit: BoxFit.cover,
                  width: 200,
                  height: 200,
                ),
                Text(
                  _singers[index],
                  style: const TextStyle(
                    color: Colors.grey,
                    fontFamily: 'NotoSans-Black',
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
