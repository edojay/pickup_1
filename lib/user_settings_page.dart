import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class user_settings_page extends StatefulWidget {
  @override
  _user_settings_pageState createState() => _user_settings_pageState();
}

class _user_settings_pageState extends State<user_settings_page> {
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
                        decoration: const InputDecoration(labelText: 'TEST'),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(labelText: 'TEST'),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(labelText: 'TEST'),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          /*{
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => book_return_3()),
                          );*/
                        },
                        child: const Text('TEST'),
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
