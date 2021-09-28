import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(

  //----------------------------------------------------------------------------
  // BEGIN EXPERIMENTAL SCROLL LIST FOR HOME PAGE
  //----------------------------------------------------------------------------

  // home: SingleChildScrollView(
  //   physics: ScrollPhysics(),
  //   child: Column(
  //     children: <Widget> [
  //       Text(
  //           'Welcome',
  //           style: TextStyle(
  //             fontSize: 40.0,
  //             fontFamily: 'Urbanist',
  //             color: Colors.blue[900],
  //           ),
  //       ),
  //       ListView(
  //         physics: NeverScrollableScrollPhysics(),
  //         shrinkWrap: true,
  //         children: [
  //           Center(
  //             child: Container(
  //               padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
  //               child: Text(
  //                 'Some Text',
  //                 style: TextStyle(
  //                   fontSize: 30.0,
  //                   fontWeight: FontWeight.bold,
  //                   color: Colors.blue[900],
  //                   fontFamily: 'Urbanist',
  //                 ),
  //               ),
  //             ),
  //           ),
  //         ],
  //       )
  //     ]
  //   )
  // )

  //----------------------------------------------------------------------------
  // END EXPERIMENTAL SCROLL LIST FOR HOME PAGE
  //----------------------------------------------------------------------------


  //----------------------------------------------------------------------------
  // BEGIN YOUTUBE TUTORIAL EXAMPLES
  // ----------------------------------------------------------------------------

    home: Scaffold(

    /***************************************************************************
     *  BEGIN APP BAR
     **************************************************************************/
    // appBar: PreferredSize(
    //   preferredSize: Size.fromHeight(50.0),
    //   child: AppBar(
    //     title: Text(
    //       'SAC',
    //       style: TextStyle(
    //         fontFamily: 'Urbanist',
    //       ),
    //     ),
    //     centerTitle: true,
    //     backgroundColor: Colors.blue[900],
    //   ),
    // ),
    /***************************************************************************
     * END APP BAR
     ************************************************************************/
    //--------------------------------------------------------------------------
    // ADDING IMAGE EXAMPLE
    //--------------------------------------------------------------------------
    // body: Center(
    //   child: Image.asset('assets/sac_shield2.jpg'),
    // ),
    //--------------------------------------------------------------------------
    // END ADDING IMAGE EXAMPLE
    //--------------------------------------------------------------------------
    backgroundColor: Colors.blue[900],
      body:
        Row (
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget> [
            SizedBox(width: 10.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget> [
                SizedBox(height: 40,),
                ElevatedButton.icon(
                    onPressed: (){},
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
                        'Hello',
                        style: TextStyle(
                          fontFamily: 'Urbana',
                          color: Colors.blue[900],
                          fontSize: 20
                        ),
                      ),
                    style:
                      ElevatedButton.styleFrom(
                        minimumSize: const Size(375.0, 120.0),
                        primary: Colors.white60,
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
                    minimumSize: const Size(375.0, 120.0),
                    primary: Colors.white60,
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
                    minimumSize: const Size(375.0, 120.0),
                    primary: Colors.white60,
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
                    minimumSize: const Size(375.0, 120.0),
                    primary: Colors.white60,
                  ),
                ),
              ]
            ),
            SizedBox(width: 10.0),
          ]
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
    ),

  // ----------------------------------------------------------------------------
  // END YOUTUBE TUTORIAL HERE
  // ----------------------------------------------------------------------------

));