import 'package:flutter/material.dart';
import 'quote.dart';

void main () => runApp(MaterialApp(
  home: QuoteList(),
));


class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [

    Quote(text:"The only way to do great work is to love what you do.", author:"Steve Jobs"),
    Quote(text:"In the middle of difficulty lies opportunity.",author: "Albert Einstein"),
    Quote(text:"Believe you can and you're halfway there.",author: "Theodore Roosevelt"),
    Quote(text:"The best way to predict the future is to create it.",author: "Abraham Lincoln"),
    Quote(text:"Success is not final, failure is not fatal: It is the courage to continue that counts.", author:"Winston Churchill"),
    Quote(text:"The future belongs to those who believe in the beauty of their dreams.", author:"Eleanor Roosevelt"),
  ];

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nzeru Nkupangwa'),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Colors.greenAccent,
      ) ,
      backgroundColor: Colors.grey[300],
      body: ListView.builder(
        itemCount: quotes.length,
        itemBuilder: (context, index){
            final quote = quotes[index];

            return Padding(
              padding: EdgeInsets.all(8.0),
              child: Card(
                elevation: 1,
                child: Container(
                  height: 150,

                  child: ListTile(
                    // contentPadding: EdgeInsets.symmetric(vertical: 0.0),
                    visualDensity: VisualDensity(vertical: 4),
                    title: Text(quote.text) ,
                    tileColor: Colors.white10,
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // padding: EdgeInsets.only(top: 20.00),
                      children:[
                        SizedBox(height: 8.0),
                        Divider(thickness: 1),
                        SizedBox(height: 8),
                        Text(
                        quote.author,
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                      ],
                    ),
                    leading:Container(
                      width: 50,
                      alignment: Alignment.topLeft,
                      child: Icon(Icons.star),
                    ),
                    hoverColor: Colors.grey,

                  ),
                ),
              ),
            );
        },

      ),
    );
  }
}
