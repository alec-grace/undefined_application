import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'CustomShape.dart';

void main() => runApp(MaterialApp(
  home: OpenPage(),
));

class OpenPage extends StatefulWidget {
  @override
  State<OpenPage> createState() => _OpenPageState();
}

class _OpenPageState extends State<OpenPage> {
  /// Data to be updated in stateful widget
  int tracker = 0;

  @override
  Widget build(BuildContext context) {
    /**
     * Widget tree to return
     **/
    return Scaffold(

    /***************************************************************************
     *  BEGIN APP BAR
     **************************************************************************/
    appBar:
      AppBar(
        toolbarHeight: 150,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        flexibleSpace: ClipPath(
          clipper: CustomShape(),
          child: Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            color: CupertinoColors.white,
            child: Center(child: Text( //Change this to SAC logo - talk to graphic
              //design people about making/altering one of the circle logos
              'SAC',
              style: TextStyle(
                fontSize: 45.0,
                fontFamily: 'Urbanist',
                color: Colors.blue[900],
                fontWeight: FontWeight.bold,
              ),
            ),
            ),
          ),
        ),
      ),
    /***************************************************************************
     * END APP BAR
     ************************************************************************/
    backgroundColor: Colors.blue[900],
    body:
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [
            SizedBox(height: 50.0),
            ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  tracker += 1;
                });
              },
              icon: Container(
                alignment: Alignment.topLeft,
                child: Icon(
                  CupertinoIcons.calendar,
                  size: 50,
                  color: Colors.blue[900],
                )
              ),
                label:
                  Text(
                    'Hello x$tracker',
                    style: TextStyle(
                      fontFamily: 'Urbana',
                      color: Colors.blue[900],
                      fontSize: 20
                    ),
                  ),
                style:
                  ElevatedButton.styleFrom(
                    minimumSize: const Size(375.0, 100.0),
                    primary: Colors.white,
                  ),

            ),
            SizedBox(height: 15.0),
            ElevatedButton.icon(
              icon: Container(
                alignment: Alignment.center,
                child: Icon(
                  CupertinoIcons.map_pin_ellipse,
                  size: 50,
                  color: Colors.blue[900],
                  )
                ),
              onPressed: (){},
              label:
                Text(
                  'There',
                  style: TextStyle(
                    fontFamily: 'Urbana',
                    color: Colors.blue[900],
                    fontSize: 20,
                  ),
                ),
              style:
                ElevatedButton.styleFrom(
                  minimumSize: const Size(375.0, 100.0),
                  primary: Colors.white,
              ),
            ),
            SizedBox(height: 15.0),
            ElevatedButton.icon(
              icon: Container(
                  alignment: Alignment.center,
                  child: Icon(
                    CupertinoIcons.book_fill,
                    size: 50,
                    color: Colors.blue[900],
                  )
              ),
              onPressed: (){},
              label:
              Text(
                'General',
                style: TextStyle(
                  fontFamily: 'Urbana',
                  color: Colors.blue[900],
                  fontSize: 20,
                ),
              ),
              style:
              ElevatedButton.styleFrom(
                minimumSize: const Size(375.0, 100.0),
                primary: Colors.white,
              ),
            ),
            SizedBox(height: 15.0),
            ElevatedButton.icon(
              icon: Container(
                  alignment: Alignment.center,
                  child: Icon(
                    CupertinoIcons.news_solid,
                    size: 50,
                    color: Colors.blue[900],
                  )
              ),
              onPressed: (){},
              label:
              Text(
                'Kenobi',
                style: TextStyle(
                  fontFamily: 'Urbana',
                  color: Colors.blue[900],
                  fontSize: 20,
                ),
              ),
              style:
              ElevatedButton.styleFrom(
                minimumSize: const Size(375.0, 100.0),
                primary: Colors.white,
              ),
            ),
            SizedBox(height: 15.0),
            ElevatedButton.icon(
              icon: Container(
                  alignment: Alignment.center,
                  child: Icon(
                    CupertinoIcons.news_solid,
                    size: 50,
                    color: Colors.blue[900],
                  )
              ),
              onPressed: (){},
              label:
              Text(
                '1Kenobi',
                style: TextStyle(
                  fontFamily: 'Urbana',
                  color: Colors.blue[900],
                  fontSize: 20,
                ),
              ),
              style:
              ElevatedButton.styleFrom(
                minimumSize: const Size(375.0, 100.0),
                primary: Colors.white,
              ),
            ),
            SizedBox(height: 15.0),
            ElevatedButton.icon(
              icon: Container(
                  alignment: Alignment.center,
                  child: Icon(
                    CupertinoIcons.news_solid,
                    size: 50,
                    color: Colors.blue[900],
                  )
              ),
              onPressed: (){},
              label:
              Text(
                '2Kenobi',
                style: TextStyle(
                  fontFamily: 'Urbana',
                  color: Colors.blue[900],
                  fontSize: 20,
                ),
              ),
              style:
              ElevatedButton.styleFrom(
                minimumSize: const Size(375.0, 100.0),
                primary: Colors.white,
              ),
            ),
            SizedBox(height: 15.0),
            ElevatedButton.icon(
              icon: Container(
                  alignment: Alignment.center,
                  child: Icon(
                    CupertinoIcons.news_solid,
                    size: 50,
                    color: Colors.blue[900],
                  )
              ),
              onPressed: (){},
              label:
              Text(
                '3Kenobi',
                style: TextStyle(
                  fontFamily: 'Urbana',
                  color: Colors.blue[900],
                  fontSize: 20,
                ),
              ),
              style:
              ElevatedButton.styleFrom(
                minimumSize: const Size(375.0, 100.0),
                primary: Colors.white,
              ),
            ),
            SizedBox(height: 15),
          ]
        ),
      ),
      )
      /***********************************
       * Second page - two column example
       **********************************/
    // body:
    //   Row (
    //     mainAxisAlignment: MainAxisAlignment.spaceAround,
    //     children: <Widget> [
    //       Column(
    //         mainAxisAlignment: MainAxisAlignment.start,
    //         children: <Widget> [
    //           SizedBox(height: 40,),
    //           ElevatedButton.icon(
    //               onPressed: (){},
    //               icon: Container(
    //                   alignment: Alignment.topLeft,
    //                   child: Icon(
    //                     CupertinoIcons.calendar,
    //                     size: 50,
    //                     color: Colors.blue[900],
    //                   )
    //               ),
    //               label:
    //                 Text(
    //                   'Hello',
    //                   style: TextStyle(
    //                     fontFamily: 'Urbana',
    //                     color: Colors.blue[900],
    //                     fontSize: 20
    //                   ),
    //                 ),
    //               style:
    //                 ElevatedButton.styleFrom(
    //                   minimumSize: const Size(190.0, 120.0),
    //                   primary: Colors.white60,
    //                 ),
    //
    //           ),
    //           SizedBox(height: 15.0),
    //           ElevatedButton.icon(
    //               icon: Container(
    //                   alignment: Alignment.center,
    //                   child: Icon(
    //                     CupertinoIcons.map_pin_ellipse,
    //                     size: 50,
    //                     color: Colors.blue[900],
    //                   )
    //               ),
    //               onPressed: (){},
    //               label:
    //               Text(
    //                 'General',
    //                 style: TextStyle(
    //                   fontFamily: 'Urbana',
    //                   color: Colors.blue[900],
    //                   fontSize: 20,
    //                 ),
    //               ),
    //             style:
    //             ElevatedButton.styleFrom(
    //               minimumSize: const Size(190.0, 120.0),
    //               primary: Colors.white60,
    //             ),
    //           ),
    //         ]
    //       ),
    //       Column(
    //         mainAxisAlignment: MainAxisAlignment.start,
    //         children: [
    //           SizedBox(height: 40,),
    //           ElevatedButton.icon(
    //             icon: Container(
    //               alignment: Alignment.center,
    //               child: Icon(
    //                 CupertinoIcons.news_solid,
    //                 size: 50,
    //                 color: Colors.blue[900],
    //               )
    //             ),
    //             onPressed: (){},
    //             label:
    //                 Text(
    //                   'There',
    //                   style: TextStyle(
    //                     fontFamily: 'Urbana',
    //                     color: Colors.blue[900],
    //                     fontSize: 20,
    //                   ),
    //                 ),
    //             style:
    //             ElevatedButton.styleFrom(
    //               minimumSize: const Size(190.0, 120.0),
    //               primary: Colors.white60,
    //             ),
    //           ),
    //           SizedBox(height: 15.0,),
    //           ElevatedButton.icon(
    //               icon: Container(
    //                   alignment: Alignment.center,
    //                   child: Icon(
    //                     CupertinoIcons.book,
    //                     size: 50,
    //                     color: Colors.blue[900],
    //                   )
    //               ),
    //               onPressed: (){},
    //               label:
    //               Text(
    //                 'Kenobi',
    //                 style: TextStyle(
    //                   fontFamily: 'Urbana',
    //                   color: Colors.blue[900],
    //                   fontSize: 20,
    //                 ),
    //               ),
    //             style:
    //             ElevatedButton.styleFrom(
    //               minimumSize: const Size(190.0, 120.0),
    //               primary: Colors.white60,
    //             ),
    //           ),
    //         ],
    //       )
    //    ]
    //  ),
      /***************************************
       * End second page - two column example
       **************************************/
    );
  }
}