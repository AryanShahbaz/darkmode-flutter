import 'package:flutter/material.dart';
import 'package:musicplayer_m/pages/settings.dart';

class MyDarwer  extends StatelessWidget {
  const MyDarwer ({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child:Column(
        children: [
          DrawerHeader(
            child:Center(
              child: Icon(
                Icons.music_note,
                size:40,
                color:Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
          ),

          Padding(
            padding:EdgeInsets.only(left:25,top:25),
            child:ListTile(
              title:Text("H O M E"),
              leading:Icon(Icons.home),
              onTap: () => Navigator.pop(context),
            )
          ),

          Padding(
            padding:EdgeInsets.only(left:25,top:10),
            child:ListTile(
              title:Text("S E T T I N G S"),
              leading:Icon(Icons.settings),
              onTap: () {
                Navigator.pop(context);

                Navigator.push(context,MaterialPageRoute(builder: (context) => SettingsPage(),),);
              },
            )
          ),

          Padding(
            padding:EdgeInsets.only(left:25,top:10),
            child:ListTile(
              title:Text("A B O U T U S"),
              leading:Icon(Icons.info),
              onTap: () {},
            )
          ),
        ],
      )
    );
  }
}