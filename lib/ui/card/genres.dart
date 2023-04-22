import 'package:flutter/material.dart';

class Genres extends StatefulWidget {
  const Genres({
    Key? key,
  }) : super(key: key);

  @override
  State<Genres> createState() => _GenresState();
}

class _GenresState extends State<Genres> {
  final _colors = [
    'red',
    'blue',
    'green',
    'orange',
    'blue',
    'black',
  ];
  final _names = [
    'Pop',
    'Bollywood',
    'hollywood',
    'Drama',
    'Romance',
    'Night',
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      // width: 220,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.all(10),
            width: 200,
            // height: 100,
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              padding: EdgeInsets.all(12),
              child: Text(
                _names[index],
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
