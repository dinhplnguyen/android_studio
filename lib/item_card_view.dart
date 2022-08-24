import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'playing_card.dart';


class PlayingCardWidget extends StatefulWidget {

  final PlayingCardH card;

  const PlayingCardWidget({
    Key? key,
    required this.card,
  }) : super(key: key);

  @override
  State<PlayingCardWidget> createState() => _PlayingCardState();
}

class _PlayingCardState extends State<PlayingCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.indigo,
        child: Container(
          child: Text(
            "${widget.card.value} of ${widget.card.suit}",
            style: const TextStyle(
              fontSize: 25,
              color: Colors.white
          ),),
        )
    );
  }
}
