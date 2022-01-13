import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_beautiful_popup/main.dart';
import 'CustomShape.dart';
import 'homePageWidgets.dart';
//Adding comment so I can push

void main() => runApp(MaterialApp(
  home: OpenPage(),
));


///
/// Widget for the non-functional buttons on home page - attempting to move
/// this to a class "homePageWidgets.dart"
///
Widget listItem(IconData icon, String titleText) {
  return ElevatedButton.icon(
    icon: Container(
        alignment: Alignment.center,
        child: Icon(
          icon,
          size: 50,
          color: Colors.blue[900],
        )
    ),
    onPressed: (){},
    label:
    Text(
      titleText,
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
      onPrimary: Colors.blue[900],
    ),
  );
}

class OpenPage extends StatefulWidget {
  @override
  State<OpenPage> createState() => _OpenPageState();
}

class SecondPage extends StatefulWidget{
  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _OpenPageState extends State<OpenPage> {
  /// Data to be updated in stateful widget
  int tracker = 0;

  @override
  Widget build(BuildContext context) {

    List<IconData> iconInfo = [
      CupertinoIcons.map_pin_ellipse,
      CupertinoIcons.book_fill,
      CupertinoIcons.news_solid,
      CupertinoIcons.news_solid,
      CupertinoIcons.news_solid,
      CupertinoIcons.news_solid,
    ];

    List<String> buttonTitles = [
      "There",
      "General",
      "Kenobi",
      "1Kenobi",
      "2Kenobi",
      "New Guy",
    ];

    HomePageWidgets listOfButtons = HomePageWidgets(icons: iconInfo, titles: buttonTitles);
    List<Widget> homePageButtons = listOfButtons.getButtons();

    ///Widget tree to return
    return Scaffold(

    ///BEGIN APP BAR
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
    ///END APP BAR
      ///
    ///BEGIN HOME PAGE

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
            SizedBox(height: 15.0),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondPage())
                );
              },
              icon: Container(
                  alignment: Alignment.topLeft,
                  child: Icon(
                    CupertinoIcons.forward,
                    size: 50,
                    color: Colors.blue[900],
                  )
              ),
              label:
              Text(
                'Next Page',
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
                onPrimary: Colors.blue[900],
              ),
            ),
            SizedBox(height: 15.0),
            ElevatedButton.icon(
              onPressed: () {
                final popup = BeautifulPopup(
                  context: context,
                  template: TemplateGift,
                );
                setState(() {
                  popup.show(
                    title: 'This is a pop up',
                    content: 'We can put a whole bunch\nof information here',
                    actions: [
                      popup.button(
                        label: 'Close',
                        onPressed: Navigator.of(context).pop,
                      ),
                    ],
                  );
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
                onPrimary: Colors.blue[900],
              ),
            ),
            SizedBox(height: 15.0),
            listItem(CupertinoIcons.news, "Example 1"),
            SizedBox(height: 15.0),
            listItem(CupertinoIcons.map, "Example 2"),
            SizedBox(height: 15.0),
            listItem(CupertinoIcons.book_fill, "Example 3"),
            SizedBox(height: 15.0),
            listItem(CupertinoIcons.alarm_fill, "Example 4"),
            SizedBox(height: 15.0),
          ],
        ),
      ),
      )
    ///END HOME PAGE
      ///

    );
  }
}

class _SecondPageState extends State<SecondPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body:
        Row (
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget> [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget> [
                SizedBox(height: 40,),
                ElevatedButton.icon(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: Container(
                    alignment: Alignment.topLeft,
                    child: Icon(
                      CupertinoIcons.back,
                      size: 50,
                      color: Colors.blue[900],
                    )
                  ),
                  label: Text(
                    'GO BACK',
                    style: TextStyle(
                      fontFamily: 'Urbana',
                      color: Colors.blue[900],
                      fontSize: 20
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(190.0, 120.0),
                    primary: Colors.white,
                    onPrimary: Colors.blue[900],
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
                label: Text(
                  'Map',
                  style: TextStyle(
                    fontFamily: 'Urbana',
                    color: Colors.blue[900],
                    fontSize: 20,
                  ),
                ),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(190.0, 120.0),
                primary: Colors.white,
                onPrimary: Colors.blue[900],
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
                    CupertinoIcons.news_solid,
                    size: 50,
                    color: Colors.blue[900],
                  )
                ),
                onPressed: (){},
                label: Text(
                  'News',
                  style: TextStyle(
                    fontFamily: 'Urbana',
                    color: Colors.blue[900],
                    fontSize: 20,
                  ),
                ),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(190.0, 120.0),
                primary: Colors.white,
                onPrimary: Colors.blue[900],
                ),
              ),
            SizedBox(height: 15.0,),
            ElevatedButton.icon(
              icon: Container(
                alignment: Alignment.center,
                child: Icon(
                  CupertinoIcons.calendar,
                  size: 50,
                  color: Colors.blue[900],
                  )
              ),
              onPressed: (){},
              label:
              Text(
                'Events',
                style: TextStyle(
                  fontFamily: 'Urbana',
                  color: Colors.blue[900],
                  fontSize: 20,
                ),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(190.0, 120.0),
                primary: Colors.white,
                onPrimary: Colors.blue[900],
              ),
            ),
          ],
        )
      ]
      ),
    );
    ///END SECOND PAGE
    ///
  }
}