import 'package:fashion_apps/screen/detail_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String _username;

  HomePage(this._username);

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
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "Hi $_username!",
                style: TextStyle(color: Color(0xFFB374F2)),
              ),
            ),
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.login_outlined,
                  color: Colors.grey[600],
                ))
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              alignment: Alignment.topLeft,
              padding:
                  EdgeInsets.only(top: 10, left: 18, right: 18, bottom: 18),
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
                      GestureDetector(
                        onTap: () {
                          _showToast(context, "test Bar");
                        },
                        child: Text('Recomended',
                            style: TextStyle(
                                fontSize: smallFont, color: Color(0xffab92c6))),
                      ),
                      TabText(
                        text: 'New Model',
                        fontSize: smallFont,
                        state: 0,
                      ),
                      TabText(
                        text: '2020 Show',
                        fontSize: smallFont,
                        state: 0,
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            _showDetail(context);
                          },
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(
                                      'assets/images/cute1.jpeg',
                                      alignment: Alignment.topLeft,
                                      width: 150,
                                    ),
                                  ),
                                  decoration: BoxDecoration(boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey,
                                        spreadRadius: 2,
                                        blurRadius: 10,
                                        offset: Offset(3, 6)),
                                  ], borderRadius: BorderRadius.circular(25)),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10, left: 5),
                                  child: Text(
                                    'Felisia Nugroho',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 5, left: 5),
                                  child: Text(
                                    'Malang',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  _showToast(context, "Test Gambar");
                                },
                                child: Container(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(
                                      'assets/images/cute1.jpeg',
                                      alignment: Alignment.topLeft,
                                      width: 150,
                                    ),
                                  ),
                                  decoration: BoxDecoration(boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey,
                                        spreadRadius: 2,
                                        blurRadius: 10,
                                        offset: Offset(3, 6)),
                                  ], borderRadius: BorderRadius.circular(25)),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10, left: 5),
                                child: Text(
                                  'Alice Voldemort',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5, left: 5),
                                child: Text(
                                  'Surabaya',
                                  style: TextStyle(fontSize: 12),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 10),
                    child: Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.asset(
                            'assets/images/cute2.jpeg',
                          ),
                        ),
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 0,
                              blurRadius: 10,
                              offset: Offset(3, 3)),
                        ], borderRadius: BorderRadius.circular(25))),
                  )
                ],
              ),
            ),
          ),
        ));
  }

  void _showDetail(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return DetailPage();
    }));
  }

  void _showToast(BuildContext context, String msg) {
    final scafold = ScaffoldMessenger.of(context);
    scafold.showSnackBar(SnackBar(
      content: Text(msg),
      action: SnackBarAction(
        label: "Close",
        onPressed: scafold.hideCurrentSnackBar,
      ),
    ));
  }
}

class TabText extends StatefulWidget {
  final String text;
  final double fontSize;
  final int state;

  const TabText(
      {required this.text, required this.fontSize, required this.state});

  @override
  _TabTextColorState createState() => _TabTextColorState();
}

class _TabTextColorState extends State<TabText> {
  Color _currentColor = Colors.black;
  int state = 0;

  @override
  Widget build(BuildContext context) {
    if (widget.state == 1) {
      _currentColor = Color(0xffab92c6);
    }

    return GestureDetector(
      child: Text(
        widget.text,
        style: TextStyle(fontSize: widget.fontSize, color: _currentColor),
      ),
      onTap: () {
        if (state == 0) {
          setState(() {
            _currentColor = Color(0xffab92c6);
            state = 1;
          });
        } else {
          setState(() {
            _currentColor = Colors.black;
          });
          state = 0;
        }
      },
    );
  }
}
