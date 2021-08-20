import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pickup/book_return_1.dart';
import 'user_settings_page.dart';
import 'login_register_page.dart';

class home_page extends StatefulWidget {
  @override
  _home_pageState createState() => _home_pageState();
}

void onSelected(BuildContext context, int item) {
  switch (item) {
    case 0:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => user_settings_page()));
      print('Clicked uppdatera inställningar');
      break;
    case 1:
      /*Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => PAGE()));*/
      break;
    case 2:
      /*Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => PAGE()));*/
      break;
    case 3:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => MyApp()));
      break;
  }
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: new Container(), //EDJE: Remove back routing.
          title: Center(child: Text('Pickup')),
          /*leading: Icon(Icons.account_circle_rounded),
           */
          /*leading: IconButton(
            icon: new Icon(Icons.bookmark),
            onPressed: () {/* Your code */},
          ),*/
          actions: [
            PopupMenuButton<int>(
              onSelected: (item) => onSelected(context, item),
              itemBuilder: (context) => [
                PopupMenuItem<int>(
                  value: 0,
                  child: Row(
                    children: const [
                      Icon(
                        Icons.account_circle_rounded,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text('Uppdatera uppgifter'),
                    ],
                  ),
                ),
                PopupMenuItem<int>(value: 1, child: Text('Mina returer')),
                PopupMenuItem<int>(value: 2, child: Text('Kontakta Pickup')),
                PopupMenuDivider(),
                PopupMenuItem<int>(value: 3, child: Text('Logga ut'))
              ],
            )
          ],
        ),
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
                child: (Text('Boka retur')),
                style: ElevatedButton.styleFrom(
                    elevation: 20,
                    shadowColor: Colors.red,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    primary: Colors.purple,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 100, vertical: 30),
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
