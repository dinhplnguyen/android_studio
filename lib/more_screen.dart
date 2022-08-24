import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'playing_card.dart';


class MoreScreen extends StatefulWidget {

  final PlayingCardH card;

  const MoreScreen({
    Key? key,
    required this.card,
  }) : super(key: key);

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(""),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(widget.card.id),
            ],
          ),
        )
    );
  }
}
