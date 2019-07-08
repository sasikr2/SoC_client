import 'package:flutter/material.dart';
import 'home_page_community.dart';
import 'home_page_chats.dart';
import '../scoped-model/main.dart';
class HomePage extends StatelessWidget {
    final MainModel model;
    HomePage(this.model);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Incognichat",
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              model.logout();
              Navigator.popUntil(
              context,
              ModalRoute.withName('/'));
            }
          )  
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
          UserAccountsDrawerHeader(
                accountName: Text(
                  model.user.id,
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.right,
                  ),
                accountEmail: Text(model.user.email),
                currentAccountPicture: CircleAvatar(
                  child: Text(
                    model.user.email[0],
                    style: TextStyle(fontSize: 40),
                  ),
                ),
          ),
          ListTile(
                title: Text("Communities"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (BuildContext context) => CommunityHomePage(model))
                  );
                },
              ),
          ],
        )
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (BuildContext context) => CommunityHomePage(model)));
              },
              child: CircleAvatar(
                child: Text("Communities"),
                minRadius: 50,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (BuildContext context) => ChatHomePage(model) ));
              },
              child: CircleAvatar(
                child: Text("Personal Chat"),
                minRadius: 50,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (BuildContext context) => null ));
              },
              child: CircleAvatar(
                child: Text("Chat with CS"),
                minRadius: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}