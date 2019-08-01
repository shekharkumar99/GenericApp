//  import 'package:flutter/material.dart';
// import 'package:genericapp/HomePage.dart';
// import 'package:genericapp/login.dart';

// class signup extends StatefulWidget {
//   @override
//   _signupState createState() => _signupState();
// }

// class _signupState extends State<signup> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.white,
//         body: SafeArea(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             SizedBox(width: 30,
//             height: 30,),
//           CircleAvatar(
            
//             radius: 50,
//             backgroundImage: AssetImage('assets/GADA TECHNOLOGY Logo.png'),
        

//           ),
//           SizedBox(width: 10,
//           height: 10,),
//           Text('LOGIN', style: TextStyle(
//             fontSize: 30,
//             color: Colors.black,
//             fontWeight: FontWeight.bold,
//             decorationStyle: TextDecorationStyle.wavy,

//           ),),
//           Divider(
//             color: Colors.teal,
//           endIndent:20,
//           indent: 20,),

//           TextField(
            
//             keyboardType: TextInputType.text,
//             autofocus: true,
//             decoration: InputDecoration(
//               icon: Icon(Icons.person),
//               hintText: 'Username' ),
//           ),
//           SizedBox(
//             height: 20,
//             width: 20,
//           ),
//           TextField(
//             obscureText: true,
//             autofocus: true,
//             decoration: InputDecoration(
//               icon: Icon(Icons.lock),
//               hintText: 'Password' ),
//           ),
//           RaisedButton(
//             child: Text(
//                'Submit'
               
//             ),
//             onPressed:(){ Navigator.push(context,
//              MaterialPageRoute(builder: (context) => HomePage()));}
//           ),
//           RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => login()));},
//           child: Text('SIGN UP')
//           ) 

//         ],),) 
//       ,);
//   }
// }