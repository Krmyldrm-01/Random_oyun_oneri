import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(benimUyg());
}

class benimUyg extends StatelessWidget {
  const benimUyg({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Bugün  Ne  Oynasam ? ",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "LilitaOne",
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: GamePage(),
      ),
    );
  }
}

class GamePage extends StatefulWidget {
  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  int gameNo = 1;

  int sGameNo = 1;

  int tGameNo = 1;

  List<String> gName_1 = [
    "Assasin's Creed 2",
    "Assasin's Creed Rogue",
    "Batman Arkham Knight",
    "Call of Duty",
    "Crysis 3",
  ];
  List<String> gName_2 = [
    "Devil May Cry 5",
    "Elden Ring",
    "Far Cry 3",
    "God Of War",
    "Hades",
  ];
  List<String> gName_3 = [
    "Outlast",
    "Prototype",
    "Red Dead Redemption 2",
    "Sekiro",
    "Spider Man",
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ///burada ki expended yapsısı resimler içerisinde esneklik sağlamsını sağlar
          //başına geldiği widget için
          //diğerlerinden arta kalan yer kadar kendinşi büyültür ve küçültür
          //bunu kullaabilmek içiin hepsinin kardeş olması lazım
          //verilen expendied ifadelerinin kendi aralarında ekranda bölüşmesi için
          //padding ile sarmalanmaması lazımdır
          //sarmalanması halinde bunların arasında ki kardeşlik bağı bozulur

          Expanded(
            //buradai flex özelliği ekranda ki kaplama oranıdır bir nevi
            //flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                ),
                onPressed: randomGameNumber,
                child: Image.asset(
                  "assets/image/Game_$gameNo.jpg",
                ),
              ),
            ),
          ),
          Text(
            gName_1[gameNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                ),
                onPressed: randomGameNumber,
                child: Image.asset("assets/image/S_Game_$sGameNo.jpg"),
              ),
            ),
          ),
          Text(
            gName_2[sGameNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                  ),
                  onPressed: randomGameNumber,
                  child: Image.asset("assets/image/T_Game_$tGameNo.jpg")),
            ),
          ),
          Text(
            gName_3[tGameNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  void randomGameNumber() {
    setState(() {
      gameNo = Random().nextInt(5) + 1;
      sGameNo = Random().nextInt(5) + 1;
      tGameNo = Random().nextInt(5) + 1;
    });
  }
}

