import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:genericapp/utils/util.dart';


class MYDrawer extends StatefulWidget {
   String email,name,profileimg,background;

MYDrawer({this.background,this.profileimg,this.name,this.email});

  @override
  _MYDrawerState createState() => _MYDrawerState();
}

class _MYDrawerState extends State<MYDrawer> {
  final GoogleSignIn _gSignIn =  GoogleSignIn();
   @override
   Widget build(BuildContext context) {
     return new ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountEmail: new Text(widget.email),
            accountName: new Text(widget.name),
            currentAccountPicture: new CircleAvatar(
              backgroundImage: new NetworkImage(widget.profileimg),
            ),
            decoration: new BoxDecoration(
              color: Colors.amber,
              
              )
            ),
          //),
          new ListTile(
            title: new Text("Home"),
            trailing: new Icon(Icons.home),
            onTap: (){print("Home");},
          ),
           new ListTile(
            title: new Text("Notification"),
            trailing: new Icon(Icons.notifications),
            onTap: (){print("Notification");},
          ),
           new ListTile(
            title: new Text("Exit"),
            trailing: new Icon(Icons.exit_to_app),
            onTap: (){ _gSignIn.signOut();
              print('Signed out');
               Navigator.pop(context);},
          )
        ],
      );
   }
}