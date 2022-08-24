import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'playing_card.dart';


class SelectedCardView extends StatefulWidget {

  final PlayingCardH card;
  final void Function() delete;
  final void Function() info;

  const SelectedCardView({
    Key? key,
    required this.card,
    required this.delete,
    required this.info
  }) : super(key: key);

  @override
  State<SelectedCardView> createState() => _SelectedCardViewState();
}

class _SelectedCardViewState extends State<SelectedCardView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(

            color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(

                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                    Image.network(widget.card.id,
                    height: 200,
                    width: 200,),
                      ElevatedButton(
                          onPressed: widget.info,
                          child: const Text(
                            "More",
                            style: TextStyle(
                                color: Colors.white
                            ),
                          )
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top:30),
                    child: Text(
                      "${widget.card.value} of ${widget.card.suit}",
                      style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white
                      ),),
                  ),
                ],
              ),
            )
        ),
        ElevatedButton(
            onPressed: widget.delete,
            child: const Text(
              "Draw Card",
              style: TextStyle(
                  color: Colors.white
              ),
            )
        )
      ],
    );
  }
}
