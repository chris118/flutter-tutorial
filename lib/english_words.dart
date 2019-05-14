import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class EnglishWordsWedget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final word = WordPair.random();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(word.toString()),
    );
  }
}