import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pickup/book_return_1.dart';

class home_page extends StatefulWidget {
  @override
  _home_pageState createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => book_return_1()),
                  );
                },
                child: const Text('Boka retur'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 63, vertical: 10),
                    textStyle: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 25),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Mina returer'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 56, vertical: 10),
                    textStyle: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 25),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Uppdatera uppgifter'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    textStyle: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
