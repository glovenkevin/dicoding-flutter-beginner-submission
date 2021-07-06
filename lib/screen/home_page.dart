import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var smallFont = 12.0;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(Icons.menu, color: Colors.grey[600]),
            onPressed: () => {},
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.grey[600],
              ),
              onPressed: () => {},
            )
          ],
        ),
        body: Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(top: 20, left: 18, right: 18, bottom: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Week in Paris',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFB374F2)),
              ),
              Text(
                '2021 Fashio show in Paris',
                style: TextStyle(
                    fontSize: smallFont,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff363636)),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 10),
                child: Text(
                  'Explore',
                  style: TextStyle(
                      color: Color(0xff363636),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Recomended',
                      style: TextStyle(
                          fontSize: smallFont, color: Color(0xffab92c6))),
                  Text('New Model',
                      style:
                          TextStyle(fontSize: smallFont, color: Colors.black)),
                  Text('2020 Show',
                      style:
                          TextStyle(fontSize: smallFont, color: Colors.black))
                ],
              ),
              Container(
                child: Column(),
              )
            ],
          ),
        ));
  }
}
