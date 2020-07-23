import 'package:flutter/material.dart';
import 'DetailScreen.dart';
import 'const_button.dart';

class Page_View_Item extends StatelessWidget {
  const Page_View_Item({
    Key key,
    @required PageController pageController,
  })  : _pageController = pageController,
        super(key: key);

  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    var cameraImage;

    return InkWell(
        onTap: () {
          Navigator.push(
              context,
              PageRouteBuilder(
                fullscreenDialog: true,
                transitionDuration: const Duration(milliseconds: 300),
                pageBuilder: (BuildContext context, Animation<double> animation,
                    Animation<double> secondaryAnimation) {
                  return DetailScreen(
                    cameraImage: cameraImage,
                  );
                },
              ));
        },
        child: SizedBox(
          height: MediaQuery.of(context).size.height - 360.0,
//                    decoration: BoxDecoration(color: Colors.blueAccent),
          child: PageView(
            controller: _pageController,
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              buildItem('assets/canon1.png', 'Greyson', 'Canon', '45.3'),
              buildItem('assets/Niken.png', 'Nikon', 'Canon', '45.1'),
              buildItem('assets/Sony.png', 'Wilhelm', 'Canon', '45.0'),
              buildItem('assets/Lumix.png', 'Nikon', 'Canon', '45.1'),
            ],
            // PageIndicator(pageController: _pageController),
          ),
        ));
  }

  Widget buildItem(String cameraImage, String cameraName, String cameraType,
      String cameraPrice) {
    return Padding(
      padding: EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 30),
      child: Container(
        height: 100,
        width: 200.0,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 2.0,
                  blurRadius: 15.0,
                  offset: Offset(0.0, 10.0))
            ]),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 8.0, right: 10.0, top: 30),
              child: Text(
                cameraName,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
//                        Favorite(),
            ),

            SizedBox(
              height: 30,
            ),

            Container(
              height: 140,
              width: 150,
              child: Column(children: <Widget>[
                Image.asset(
                  cameraImage,
                ),
              ]),
            ),

            // SizedBox(height: 10),

            Padding(
              padding: EdgeInsets.only(left: 8.0, right: 10.0),
              child: Text(
                cameraName,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
//                        Favorite(),
            ),

            SizedBox(height: 40),

            //This is the Add to cart button
            const_button()

            // widget.button
          ],
        ),
      ),
    );
  }
}

// class const_button extends StatelessWidget {
//   const const_button({
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {},
//       child: Container(
//         height: 50,
//         width: 150,
//         decoration: BoxDecoration(
//             color: Colors.yellow, borderRadius: BorderRadius.circular(25)),
//         child: Center(
//           child: Text(
//             'Add to Cart',
//             style: TextStyle(
//                 fontFamily: 'Poppins',
//                 fontSize: 15,
//                 fontWeight: FontWeight.w500),
//           ),
//         ),
//       ),
//     );
//   }

//     return SizedBox(
//       height: MediaQuery.of(context).size.height - 360.0,
// //                    decoration: BoxDecoration(color: Colors.blueAccent),
//       child: PageView(
//         controller: _pageController,
//         scrollDirection: Axis.horizontal,
//         children: <Widget>[
//           buildItem('assets/canon1.png', 'Greyson', 'Canon', '45.3'),
//           buildItem('assets/Niken.png', 'Nikon', 'Canon', '45.1'),
//           buildItem('assets/Sony.png', 'Wilhelm', 'Canon', '45.0'),
//           buildItem('assets/Lumix.png', 'Nikon', 'Canon', '45.1'),
//         ],
//         // PageIndicator(pageController: _pageController),
//       ),
//     )

// Widget buildItem(String cameraImage, String cameraName, String cameraType,
//     String cameraPrice) {

//       return SizedBox(
//       height: MediaQuery.of(context).size.height - 360.0,
// //                    decoration: BoxDecoration(color: Colors.blueAccent),
//       child: PageView(
//         controller: _pageController,
//         scrollDirection: Axis.horizontal,
//         children: <Widget>[
//           buildItem('assets/canon1.png', 'Greyson', 'Canon', '45.3'),
//           buildItem('assets/Niken.png', 'Nikon', 'Canon', '45.1'),
//           buildItem('assets/Sony.png', 'Wilhelm', 'Canon', '45.0'),
//           buildItem('assets/Lumix.png', 'Nikon', 'Canon', '45.1'),
//         ],
//         // PageIndicator(pageController: _pageController),
//       ),
//     )

// return InkWell(
//   onTap: () {
//     Navigator.push(
//         context,
//         PageRouteBuilder(
//           fullscreenDialog: true,
//           transitionDuration: const Duration(milliseconds: 300),
//           pageBuilder: (BuildContext context, Animation<double> animation,
//               Animation<double> secondaryAnimation) {
//             return DetailScreen(cameraImage: cameraImage);
//           },
//         ));

//   },

//   return Padding(
//     padding: EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 30),
//     child: Container(
//       height: 100,
//       width: 200.0,
//       decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(20.0),
//           boxShadow: [
//             BoxShadow(
//                 color: Colors.grey.withOpacity(0.4),
//                 spreadRadius: 2.0,
//                 blurRadius: 15.0,
//                 offset: Offset(0.0, 10.0))
//           ]),
//       child: InkWell(
//         onTap: () {
//           BuildContext context;
//           Navigator.push(
//               context,
//               PageRouteBuilder(
//                 fullscreenDialog: true,
//                 transitionDuration: const Duration(milliseconds: 300),
//                 pageBuilder: (BuildContext context, Animation<double> animation,
//                     Animation<double> secondaryAnimation) {
//                   return DetailScreen(cameraImage: cameraImage);
//                 },
//               ));
//         },
//         child: Column(
//           children: <Widget>[
//             Padding(
//               padding: EdgeInsets.only(left: 8.0, right: 10.0, top: 30),
//               child: Text(
//                 cameraName,
//                 style: TextStyle(
//                   fontFamily: 'Poppins',
//                   fontSize: 20.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
// //                        Favorite(),
//             ),

//             SizedBox(
//               height: 30,
//             ),

//             Container(
//               height: 140,
//               width: 150,
//               child: Column(children: <Widget>[
//                 Image.asset(
//                   cameraImage,
//                 ),
//               ]),
//             ),

//             // SizedBox(height: 10),

//             Padding(
//               padding: EdgeInsets.only(left: 8.0, right: 10.0),
//               child: Text(
//                 cameraName,
//                 style: TextStyle(
//                   fontFamily: 'Poppins',
//                   fontSize: 20.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
// //                        Favorite(),
//             ),

//             SizedBox(height: 40),

//             // widget.button
//           ],
//         ),
//       ),
//     ),
//   );
