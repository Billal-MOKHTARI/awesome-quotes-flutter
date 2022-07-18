import 'dart:html';
import 'quote.dart';
import 'QuoteCard.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  @override
  State<Home> createState() => QuoteList();
}

class QuoteList extends State<Home> {
  List<Quote> quotes = [
    Quote(
        text: "Be yourself; everyone else is already taken",
        author: "Oscar Wilde"),
    Quote(
        text: "I have nothing to declare except any genius",
        author: "Oscar Wilde"),
    Quote(
        text: "The truth is rarely pure and never simple",
        author: "Oscar Wilde"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          'Awesome Quotes',
        ),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes
            .map((quote) => QuoteCard(
                quote: quote,
                delete: () {
                  setState(() {
                    quotes.remove(quote);
                  });
                }))
            .toList(),
      ),
    );
  }
}
