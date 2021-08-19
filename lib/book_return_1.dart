import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pickup/book_return_2.dart';
import 'caliculation.dart';

var calc = new Caliculation();

class book_return_1 extends StatefulWidget {
  @override
  _book_return_1State createState() => _book_return_1State();
}

class _book_return_1State extends State<book_return_1> {
  var TextFormFieldInput = "Antal butiker";
  TextEditingController _nameController = TextEditingController(); //1

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
                        controller: _nameController, //1
                        decoration: InputDecoration(
                          labelText: TextFormFieldInput,
                          hintText: 'Minst en butik',
                        ),
                        keyboardType: TextInputType.number,
                        maxLength: 2,
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          calc.setNumberOfStores(_nameController.text); //1
                          setState(
                            () {
                              if (_nameController.text.length < 1)
                                print(
                                    'HEJ'); //TODO: Must do so "Nästa" is disabled if 0, nothing or special signs are entered.
                            },
                          );
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => book_return_2()),
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
