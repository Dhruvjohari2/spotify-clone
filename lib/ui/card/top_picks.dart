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
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/picks$index.png',
                  fit: BoxFit.cover,
                  width: 200,
                  height: 220,
                ),
                const SizedBox(height: 10,),
                SizedBox(
                  width: 200,
                  child: Text(
                    _singers[index],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontFamily: 'NotoSans-Black',
                    ),
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
