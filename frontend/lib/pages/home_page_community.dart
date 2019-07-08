import 'package:flutter/material.dart';
import 'create-community.dart';
import '../scoped-model/main.dart';
class CommunityHomePage extends StatelessWidget{
    final MainModel model;
    CommunityHomePage(this.model);


  Widget _buildSideDrawer(BuildContext context){
    return Drawer(child: Column(
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
          leading: Icon(Icons.pages),
          title:Text('Your Communities'),
          onTap: (){},  
        ),
        /*ListTile(
          leading: Icon(Icons.bookmark),
          title:Text('Saved Posts'),
          onTap: (){},
        ),*/
        ListTile(
          leading: Icon(Icons.search),
          title:Text('Find Community to follow'),
          onTap: (){},
        ),
        ListTile(
          leading: Icon(Icons.feedback),
          title:Text('Feedback'),
          onTap: (){},
        ),
        ListTile(
          leading: Icon(Icons.arrow_back),
          title: Text("Return to Main Page"),
          onTap: () {
            Navigator.popUntil(context, ModalRoute.withName('/home'));
          },
        )
      ],
    ),);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: _buildSideDrawer(context),
        appBar: AppBar(
          title:Text('Community Dashboard'),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              tooltip: 'Search',
              icon:Icon(Icons.search),
              onPressed: (){},
            ),
          ], 
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (BuildContext context) => CommunityCreatePage() ));
      },
          icon: Icon(Icons.add),
          label: Text("New Community"),
        ),
      );
  }
}