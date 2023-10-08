import 'package:flutter/material.dart';
import 'package:quotes/quote.dart';
import 'package:quotes/quote_card.dart';
void main () => runApp(const MaterialApp(
  home: QuoteList()
));
class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(text:'Be yourself; everyone else is already taken', author: 'Osca Wilder'),
    Quote(text:'I have nothing to declare except my genius', author: 'Osca Wilder'),
    Quote(text:'I have nothing to declare except my genius', author: 'Osca Wilder'),
  
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quote'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(quote : quote)).toList(),
      ),
    );
  }
}
