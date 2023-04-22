import 'package:flutter/material.dart';

class PlayerScreen extends StatefulWidget {
  const PlayerScreen({Key? key}) : super(key: key);

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  int height = 180;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(25),
        child: Scaffold(
          backgroundColor: Colors.black,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.white,
                    ),
                    Column(
                      children: const [
                        Text(
                          'PLAYING FROM SEARCH ',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              letterSpacing: 3),
                        ),
                        Text(
                          '"stays in songs"',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Image.asset('assets/images/Properties.png'),
                  ],
                ),
                const SizedBox(height: 20,),
                Image.asset('assets/images/Poster.png'),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: const [
                        Text(
                          'STAY (with Justin Bieber)',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'The Kid LAROI, Justin Biebar',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                    Image.asset("assets/images/Heart.png")
                  ],
                ),
                const SizedBox(height: 20,),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Colors.white,
                    thumbShape: const RoundSliderThumbShape(
                      enabledThumbRadius: 8.0,
                    ),
                    overlayShape: const RoundSliderOverlayShape(
                      overlayRadius: 20.0,
                    ),
                  ),
                  child: Slider(
                    value: height.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    // activeColor: Colors.white,
                    inactiveColor: const Color(0xFF8D8E98),
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('1:23',style: TextStyle(color: Colors.grey),),
                      Text('3:36',style: TextStyle(color: Colors.grey),),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(Icons.shuffle,color: Colors.white,size: 25,),
                    Icon(Icons.skip_previous,color: Colors.white,size: 45,),
                    Icon(Icons.pause,color: Colors.white,size: 59,),
                    Icon(Icons.skip_next,color: Colors.white,size: 45,),
                    Icon(Icons.loop,color: Colors.white,size: 25,)
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:const [
                      Icon(Icons.cast,color: Colors.white,),
                      Icon(Icons.share,color: Colors.white,)
                    ],
                  ),
                ),
                Container(
                  width: 500,
                  height: 600,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text('Lyrics'),
                            Icon(Icons.fullscreen),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
