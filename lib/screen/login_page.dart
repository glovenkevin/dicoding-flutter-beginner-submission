import 'package:fashion_apps/screen/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _username = "";
    var _password = "";

    TextEditingController userController = new TextEditingController();
    TextEditingController passwordController = new TextEditingController();

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(color: Colors.white),
          child: SingleChildScrollView(
            reverse: true,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Wellcome Back",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFB374F2)),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Sign In",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "gloven",
                    labelText: "Username",
                  ),
                  controller: userController,
                  onChanged: (String value) {
                    _username = value;
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "password",
                      labelText: "Password",
                    ),
                    obscureText: true,
                    autocorrect: false,
                    enableSuggestions: false,
                    onChanged: (String value) {
                      _password = value;
                    },
                    controller: passwordController,
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.maxFinite, 35)),
                  child: Text("Login"),
                  onPressed: () {
                    if (_username.isEmpty || _password.isEmpty) {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: Text(
                                "Username atau Password belum diisi",
                                style: TextStyle(color: Colors.red),
                              ),
                            );
                          });
                    } else {
                      _goToHomePage(context, _username);
                    }
                  },
                )
              ],
            ),
          ),
        ));
  }

  void _goToHomePage(BuildContext context, String username) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return HomePage(username);
    }));
  }
}
