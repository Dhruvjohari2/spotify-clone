import 'package:flutter/material.dart';

class TopPicks extends StatefulWidget {
  const TopPicks({Key? key}) : super(key: key);

  @override
  State<TopPicks> createState() => _TopPicksState();
}

class _TopPicksState extends State<TopPicks> {
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
                  'assets/images/picks$index.png',
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
