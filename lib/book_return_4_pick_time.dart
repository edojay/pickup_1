import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pickup/express_booking.dart';
import 'payment_page.dart';

class book_return_pick_time extends StatefulWidget {
  @override
  _book_return_pick_timeState createState() => _book_return_pick_timeState();
}

class _book_return_pick_timeState extends State<book_return_pick_time> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 150.0, horizontal: 100.0),
            child: Column(
              children: [
                Card(
                  child: ListTile(
                    title: Text("08:00 - 16:00"),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => payment_page()),
                      );
                    },
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Text("16:00 - 22:00"),
                    //onTap: () => book_return_3(),
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Text("16:00 - 19:00"),
                    //onTap: () => book_return_3(),
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Text("19:00 - 22:00"),
                    //onTap: () => book_return_3(),
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Text("16:00 - 22:00"),
                  ),
                ),
                SizedBox(height: 50),
                Card(
                  child: ListTile(
                    title: Center(
                      child: Text(
                        "Express",
                        style:
                            new TextStyle(fontSize: 15.0, color: Colors.purple),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => express_booking()),
                      );
                    },
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
