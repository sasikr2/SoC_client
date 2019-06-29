import 'package:flutter/material.dart';
import "login.dart";
class CommScreen extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Communities",
          textAlign: TextAlign.center,
          ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(
                "Example",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.right,
                ),
              accountEmail: null,
              currentAccountPicture: CircleAvatar(
                child: Text(
                  "S",
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ),
            ListTile(
              title: Text("New Chat"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (BuildContext context) => CommScreen())
                );
              },
            ),
            ListTile(
              title: Text("Logout"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (BuildContext context) => MyLoginPage() )
                );
              },
            )
          ],
        )
      ),
    );
  }
}