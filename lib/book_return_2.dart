import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pickup/book_return_3.dart';

class book_return_2 extends StatefulWidget {
  @override
  _book_return_2State createState() => _book_return_2State();
}

class _book_return_2State extends State<book_return_2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                const SizedBox(height: 200),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 30.0, horizontal: 100.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextFormField(
                        decoration:
                            const InputDecoration(labelText: 'Antal varor'),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => book_return_3()),
                          );
                        },
                        child: const Text('Nästa!'),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                            textStyle: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
