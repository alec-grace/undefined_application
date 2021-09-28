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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget> [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget> [
              SizedBox(height: 40,),
              ElevatedButton.icon(
                  onPressed: (){},
                  icon: Container(
                      alignment: Alignment.centerLeft,
                      child: Icon(
                        CupertinoIcons.calendar,
                        size: 50,
                      )
                  ),
                  label:
                    Text(
                      'Hello',
                      style: TextStyle(
                        fontFamily: 'Urbana',
                        color: Colors.blue[900]
                      ),
                    ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(200.0, 120.0)
                  ),
              ),
              SizedBox(height: 15.0),
              ElevatedButton.icon(
                  icon: Container(
                      alignment: Alignment.center,
                      child: Icon(
                        CupertinoIcons.map_pin_ellipse,
                      )
                  ),
                  onPressed: (){},
                  label:
                  Text(
                    'General',
                    style: TextStyle(
                        fontFamily: 'Urbana',
                        color: Colors.blue[900]
                    ),
                  ),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200.0, 120.0)
                ),
              ),
            ]
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 40,),
              ElevatedButton.icon(
                icon: Container(
                  alignment: Alignment.center,
                  child: Icon(
                    CupertinoIcons.news,
                  )
                ),
                onPressed: (){},
                label:
                    Text(
                      'There',
                      style: TextStyle(
                        fontFamily: 'Urbana',
                        color: Colors.blue[900]
                      ),
                    ),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200.0, 120.0)
                ),
              ),
              SizedBox(height: 15.0,),
              ElevatedButton.icon(
                  icon: Container(
                      alignment: Alignment.center,
                      child: Icon(
                        CupertinoIcons.book,
                      )
                  ),
                  onPressed: (){},
                  label:
                  Text(
                    'Kenobi',
                    style: TextStyle(
                        fontFamily: 'Urbana',
                        color: Colors.blue[900]
                    ),
                  ),
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(200.0, 120.0)
                ),
              ),
            ],
          )
        ]
      ),
    ),

  // ----------------------------------------------------------------------------
  // END YOUTUBE TUTORIAL HERE
  // ----------------------------------------------------------------------------

));