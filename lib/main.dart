import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';
import 'ui/home_view.dart';
// import 'package:myepp/AppBg.dart';
// import 'package:myepp/BadgeCart.dart';
// import 'ScrollButton.dart';
// import 'badge_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        appBarTheme: AppBarTheme(
          elevation: 0,
          color: Colors.white,
        ),
      ),
      home: HomeView(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int counter = 0;
//   bool showRaisedButtonBadge = true;

//   final controller = PageController(viewportFraction: 0.8);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
// //      backgroundColor: Colors.teal[50],
// //      appBar: AppBar(
// //        elevation: 0,
// //        backgroundColor: Colors.teal[50],
// //        leading: Icon(Icons.more_vert),
// //        actions: <Widget>[
// //          Padding(
// //            padding: const EdgeInsets.only(right: 16),
// //            child: Icon(Icons.search),
// //          )
// //        ],
// //
// ////          title: Text('Camera',
// ////            style: TextStyle(
// ////              fontSize: 20.5,
// ////              fontWeight: FontWeight.bold,
// ////              color: Colors.black,
// ////            ),
// ////          ),
// //        centerTitle: true,
// //      ),
//       body: Stack(children: <Widget>[
//         AppBg(),
//         ListView(
//           children: <Widget>[
//             SizedBox(height: 5),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: <Widget>[
//                 Padding(
//                   padding: const EdgeInsets.only(left: 10),
//                   child: Icon(Icons.more_vert, color: Colors.black, size: 30),
//                 ),
//                 badge_widget(counter: counter)
//               ],
//             ),

//             Container(
//               color: Colors.transparent,
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 30.0, top: 40.0),
//                 child: RichText(
//                     text: TextSpan(children: [
//                   TextSpan(
//                     text: 'Hello there',
//                     style: TextStyle(
//                         fontFamily: 'Poppins',
//                         fontSize: 30.0,
//                         fontWeight: FontWeight.w800,
//                         color: Colors.black),
//                   ),
//                   TextSpan(text: '\n'),
//                   TextSpan(
//                     text: 'Looking for amazing cameras?',
//                     style: TextStyle(
//                         fontFamily: 'Poppins',
//                         fontSize: 20.0,
//                         fontWeight: FontWeight.w200,
//                         color: Colors.black),
//                   ),
//                 ])),
//               ),
//             ),

//             SizedBox(height: 20),

//             ScrollButton(controller),

// //          PageSlide(),// the scrollable button

//             SizedBox(height: 25), // SizedBox
//           ],
//         ),
//       ]),
//     );
//   }

// //                  SizedBox(height: 3.0,),
// //              Padding(
// //                padding: EdgeInsets.only(left: 8.0),
// //                child: Text(
// //                  cameraHome['slideName'],
// //                  style: TextStyle(
// //                    fontFamily: 'Poppins',
// //                    fontSize: 15.0,
// //                    fontWeight: FontWeight.w300,
// //                  ),
// //                ),
// //              ),

// //              Padding(
// //                padding: EdgeInsets.only(left: 10.0, right: 10.0),
// //                child:
// //                Text(
// //                  '\$' + cameraHome['slideName'],
// //                  style: TextStyle(
// //                    fontFamily: 'Poppins',
// //                    fontWeight: FontWeight.bold,
// //                    fontSize: 15.0,
// //                  ),
// //                ),
// //              ),

// }

// // selectedProduct(prodName) {
// //   setState(() {
// //     selectedItem = prodName;
// //   });
// // }
// //
// //    switchHighlight(prodName) {
// //      if (prodName == selectedItem) {
// //        return Colors.blue;
// //      }
// //      else {
// //        return Colors.red;
// //      }
// //    }
// //
// //      switchHighlightColor(prodName){
// //        if (prodName == selectedItem){
// //          return Colors.yellow;
// //        }
// //
// //        else {return Colors.cyanAccent;}
// //      }
// //
// //
// //
