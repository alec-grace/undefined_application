import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//Another comment so a change is detected

class HomePageWidgets {

  List<Widget> buttonList = [];

  HomePageWidgets({required List<IconData> icons, required List<String> titles}) {

    if (icons.length != titles.length) {
      Widget error = Text("Error: icon and title list lengths are inconsistent");
      buttonList.add(error);
    } else {
      for (int i = 0; i < icons.length; i++) {
        Widget button = _generateButton(icons[i], titles[i]);
        buttonList.add(SizedBox(height: 15.0,));
        buttonList.add(button);
      }
      buttonList.add(SizedBox(height: 15.0,));
    }

  }

  Widget _generateButton(IconData icon, String title) {
      return ElevatedButton.icon(
        icon: Container(
            alignment: Alignment.center,
            child: Icon(
              icon,
              size: 50,
              color: Colors.blue[900],
            )
        ),
        onPressed: () {},
        label: Text(
            title,
            style: TextStyle(
              fontFamily: 'Urbana',
              color: Colors.blue[900],
              fontSize: 20,
            )
        ),
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(375.0, 100.0),
          primary: Colors.white,
          onPrimary: Colors.blue[900],
        ),
      );
  }

  List<Widget> getButtons() {
    return buttonList;
  }

}
