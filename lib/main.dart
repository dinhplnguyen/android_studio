import 'package:dinh_final/more_screen.dart';
import 'package:dinh_final/selected_card_view.dart';
import 'package:flutter/material.dart';

import 'item_card_view.dart';
import 'playing_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Dinh Nguyen'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
    required this.title
  }) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<PlayingCardH> cards =[
    PlayingCardH("https://deckofcardsapi.com/static/img/2H.png","2", "HEARTS"),
    PlayingCardH("https://deckofcardsapi.com/static/img/3H.png","3", "HEARTS"),
    PlayingCardH("https://deckofcardsapi.com/static/img/4H.png","4", "HEARTS"),
    PlayingCardH("https://deckofcardsapi.com/static/img/5H.png","5", "HEARTS"),
    PlayingCardH("https://deckofcardsapi.com/static/img/6H.png","6", "HEARTS"),
    PlayingCardH("https://deckofcardsapi.com/static/img/7H.png","7", "HEARTS"),
    PlayingCardH("https://deckofcardsapi.com/static/img/8H.png","8", "HEARTS"),
    PlayingCardH("https://deckofcardsapi.com/static/img/9H.png","9", "HEARTS"),
    PlayingCardH("https://deckofcardsapi.com/static/img/JH.png","JADE", "HEARTS"),
    PlayingCardH("https://deckofcardsapi.com/static/img/QH.png","QUEEN", "HEARTS"),
  ];

  late PlayingCardH selectedCard;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                children:
                cards.map((e) => PlayingCardWidget(card: e,)).toList(),
              ),
            ),
            SelectedCardView(
                card: cards[0],
                delete: () {
                  setState(() {
                    cards.remove(cards[0]);
                  });
                },
                info: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MoreScreen(
                          card: cards[0],)
                      )
                  );
                },
            ),

          ],
        ),
    );
  }
}