import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'caliculation.dart';

var calc = new Caliculation();

class payment_page extends StatefulWidget {
  @override
  _payment_pageState createState() => _payment_pageState();
}

class _payment_pageState extends State<payment_page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 100),
              child: Card(
                color: Colors.blue,
                child: ListTile(
                  title: Center(
                    child: Text(
                      "Betala med Swish",
                      style: new TextStyle(fontSize: 15.0, color: Colors.white),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => payment_page()),
                    );
                  },
                ),
              ),
            ),
            Text('hej') //TODO: ADD THIS
          ],
        ),
      ),
    );
  }
}
