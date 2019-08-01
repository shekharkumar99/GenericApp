// import 'dart:core' as prefix0;
// import 'dart:core';

// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:genericapp/HomePage.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// //import 'ProfileScreen.dart';

// class login extends StatefulWidget {  
//   @override
//   _loginState createState() => _loginState();
// }

// class _loginState extends State<login> {

//   final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
//   final GoogleSignIn _googlSignIn = new GoogleSignIn();

// Future<FirebaseUser> _signIn(BuildContext context) async {
  
//    Scaffold.of(context).showSnackBar(new SnackBar(
//           content: new Text('Sign in'),
//         ));
//         print("hello");
//         print(_googlSignIn.runtimeType);

//     final GoogleSignInAccount googleUser = await _googlSignIn.signIn(); 
//     if (googleUser == null) return null;
//     final GoogleSignInAuthentication googleAuth =await googleUser.authentication;

//   final AuthCredential credential = GoogleAuthProvider.getCredential(
//       accessToken: googleAuth.accessToken,
//       idToken: googleAuth.idToken,
//     );

//     print(credential.runtimeType);

//   FirebaseUser userDetails = await _firebaseAuth.signInWithCredential(credential);
//   ProviderDetails providerInfo = new ProviderDetails(userDetails.providerId);

// List<ProviderDetails> providerData = new List<ProviderDetails>();
//     providerData.add(providerInfo);

//     UserDetails details = new UserDetails(
//         userDetails.providerId,
//         userDetails.displayName,
//         userDetails.photoUrl,
//         userDetails.email,
//         providerData,
// );
//     Navigator.push(
//       context,
//       new MaterialPageRoute(
//         builder: (context) =>  HomePage(detailsUser: details),
//       ),
//     );
//     return userDetails;
//   }

 
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Builder(
//         builder: (context) => Stack(
//         fit: StackFit.expand,
//         children: <Widget>[
//            Container(
//              width: MediaQuery.of(context).size.width,
//              height:  MediaQuery.of(context).size.height,
//                 child: Image.asset('assets/background.jpg'
//                    ,fit: BoxFit.fill,
//                    color: Color.fromRGBO(255, 255, 255, 0.6),
//                   colorBlendMode: BlendMode.modulate
//                 ),
//               ),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               SizedBox(height:10.0),
//              Container(
//                   width: 250.0,
//                     child: Align(
//                   alignment: Alignment.center,
//                   child: RaisedButton(
//                     shape: RoundedRectangleBorder(
//                         borderRadius: new BorderRadius.circular(30.0)),
//                     color: Color(0xffffffff),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: <Widget>[
//                       Icon(FontAwesomeIcons.google,color: Color(0xffCE107C),),
//                       SizedBox(width:10.0),
//                       Text(
//                       'Sign in with Google',
//                       style: TextStyle(color: Colors.black,fontSize: 18.0),
//                     ),
//                     ],),
//                     onPressed: () => _signIn(context)
//                               .then((FirebaseUser user) => print(user))
//                               .catchError((e) => print(e)),
//                   ),
//                 )
//                 ),

//                 Container(
//                   width: 250.0,
//                     child: Align(
//                   alignment: Alignment.center,
//                   child: RaisedButton(
//                     shape: RoundedRectangleBorder(
//                         borderRadius: new BorderRadius.circular(30.0)),
//                     color: Color(0xffffffff),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: <Widget>[
//                       Icon(FontAwesomeIcons.facebookF,color: Color(0xff4754de),),
//                       SizedBox(width:10.0),
//                       Text(
//                       'Sign in with Facebook',
//                       style: TextStyle(color: Colors.black,fontSize: 18.0),
//                     ),
//                     ],),
//                     onPressed: () {},
//                   ),
//                 )
//                 ),
//                 Container(
//                   width: 250.0,
//                     child: Align(
//                   alignment: Alignment.center,
//                   child: RaisedButton(
//                     shape: RoundedRectangleBorder(
//                         borderRadius: new BorderRadius.circular(30.0)),
//                     color: Color(0xffffffff),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: <Widget>[
//                       Icon(FontAwesomeIcons.solidEnvelope,color: Color(0xff4caf50),),
//                       SizedBox(width:10.0),
//                       Text(
//                       'Sign in with Email',
//                       style: TextStyle(color: Colors.black,fontSize: 18.0),
//                     ),
//                     ],),
//                     onPressed: () {},
//                   ),
//                 )
//                 ),
//             ],
//           ),
//         ],
//       ),),
//     );
//   }
// }



// class UserDetails {
//   final String providerDetails;
//   final String userName;
//   final String photoUrl;
//   final String userEmail;
//   final List<ProviderDetails> providerData;

//   UserDetails(this.providerDetails,this.userName, this.photoUrl,this.userEmail, this.providerData);
// }


// class ProviderDetails {
//   ProviderDetails(this.providerDetails);
//   final String providerDetails;
// }