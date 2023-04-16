import 'package:flutter/material.dart';

class SingerCardView extends StatefulWidget {
  const SingerCardView({Key? key}) : super(key: key);

  @override
  State<SingerCardView> createState() => _SingerCardViewState();
}

class _SingerCardViewState extends State<SingerCardView> {
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
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/poster$index.png',
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
