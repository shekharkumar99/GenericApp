import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:genericapp/Drawer.dart';
import 'package:genericapp/login.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:google_sign_in/google_sign_in.dart';
import 'package:genericapp/utils/util.dart';
import 'package:genericapp/utils/navigation_router.dart';
import 'package:genericapp/utils/list_item.dart';

class HomePage extends StatefulWidget {
  
  

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
          Image.asset(
          'assets/GADA TECHNOLOGY Logo.png', fit: BoxFit.fill,
      )]),
      
      
        // leading: Builder(
        //   builder: (BuildContext context) {
        //     return IconButton(
        //       icon: const Icon(Icons.menu),
        //       color: Colors.red,
        //       onPressed: () {
        //         new MYDrawer( email: "Devefy@gmail.com",
        // name: "Abdi hamid",
        // profileimg: "assets/images/profile.jpg",
        // background: "assets/images/profile.jpg");
        //       },
        //       tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        //     );
        //   },
        // ),
      ),
      drawer: Drawer(
      child:  MYDrawer  (
        email: Util.emailId,
        name: Util.userName,
        profileimg: Util.profilePic,
        background: "assets/GADA TECHNOLOGY Logo.png",
      )),
      body: SafeArea(child: Container(
        child:
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:<Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Container(
                height: 120,
                width: 100,
                color: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center, 
                children:<Widget>[ Icon(Icons.event),
                Text('EVENTS', textAlign: TextAlign.center)
                
      
                ])),
              Container(
                height: 120,
                width: 100,
                color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:<Widget>[
                  Icon(Icons.schedule),
                  Text('SCHEDULE',
                  textAlign: TextAlign.center,
                  )])),
                

            ]),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                height: 120,
                width: 100,
                color: Colors.red,
                child: Column(mainAxisAlignment: MainAxisAlignment.center, children:<Widget>[ Icon(Icons.chat),
                Text('CHAT',textAlign: TextAlign.center,)
                ])),
              Container(
                height: 120,
                width: 100,
                color: Colors.red,
                child:Column( mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[ Icon(Icons.trending_up),
                Text('ANALYTICS',textAlign: TextAlign.center,)
            ]))]),


            ],
      ),
      ),
      )

    );

  }
}
