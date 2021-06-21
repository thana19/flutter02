import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Drawer Header',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            selected: ModalRoute.of(context)!.settings.name == '/' ? true : false ,
            onTap: () {
              Navigator.of(context, rootNavigator: true).pushNamedAndRemoveUntil('/', (route) => false);
            },
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Profile'),
            selected: ModalRoute.of(context)!.settings.name == '/profile' ? true : false ,
            onTap: () {
              Navigator.of(context, rootNavigator: true).pushNamedAndRemoveUntil('/profile', (route) => false);
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            selected: ModalRoute.of(context)!.settings.name == '/setting' ? true : false ,
            onTap: () {
              Navigator.of(context, rootNavigator: true).pushNamedAndRemoveUntil('/setting', (route) => false);
            },
          ),
        ],
      ),
    );
  }
}
