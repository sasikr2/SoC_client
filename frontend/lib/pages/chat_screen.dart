import 'package:Incognichat/scoped-model/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'home_page_chats.dart';

class ChatScreen extends StatefulWidget {
  final MainModel model;
  ChatScreen(this.model);
  @override
  _ChatScreenState createState() => _ChatScreenState(model);
}

class _ChatScreenState extends State<ChatScreen> {
  final MainModel model;
  _ChatScreenState(this.model);
  Widget _drawer(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountEmail: null,
            accountName: Text("Random"),
            currentAccountPicture: CircleAvatar(
              child: Text("R"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.arrow_back),
            title: Text("Return to Main Page"),
            onTap: () {
              //SchedulerBinding.instance.addPersistentFrameCallback( (callback) {
              Navigator.popUntil(context, ModalRoute.withName("/chat_home"));
              //});  
            }
          )
        ]
      ),
    );
  }

  Widget _bar(BuildContext context) {
    return AppBar(
        title: new Text(
          model.user.id,
        ),
        centerTitle: true,
      );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        //drawer: _drawer(context),
        appBar: _bar(context),
      ),
    );
  }
}