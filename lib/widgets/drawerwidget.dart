import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Drawerwidget extends StatefulWidget {
  const Drawerwidget({super.key});

  @override
  State<Drawerwidget> createState() => _DrawerwidgetState();
}

class _DrawerwidgetState extends State<Drawerwidget> {

  var username = "name";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _checkIf();
  }

  //function for user data from localstorage
  void _checkIf() async{
    SharedPreferences workStorage = await SharedPreferences.getInstance();
    var userData = await jsonDecode(workStorage.getString('user')!);
    print(userData);
    setState(() {
      username = userData["name"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          children: [
             DrawerHeader(
                child:  Column(
                  children: [
                    Icon(Icons.person,size: 70,),
                    Text(username)
                  ],
                )),
         const SizedBox(height: 20, ),
             draweMenu(title: "H o m e", icon: Icons.home, onTap: ()=> Navigator.pop(context)),
             draweMenu(title: "R e q u e s t", icon: Icons.book, onTap: ()=> Navigator.pushNamed(context, '/request')),
             draweMenu(title: "H i s t o r y", icon: Icons.history, onTap: ()=> Navigator.pushNamed(context, '/history')),
             draweMenu(title: 'P r o f i l e', icon: Icons.person, onTap: ()=> Navigator.pushNamed(context, '/profile')),
             const Divider(),
            draweMenu(title: "L o g o u t", icon: Icons.logout, onTap: (){})
          ],
        ),
      ),
    );
  }
}

class draweMenu extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;
  const draweMenu({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListTile(
        onTap: onTap,
        leading: Icon(icon, color: Colors.green,),
        title: Text(title),
      ),
    );
  }
}
