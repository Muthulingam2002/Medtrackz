import 'package:flutter/material.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({Key key}) : super(key: key);

  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(canvasColor:Colors.blue),
      child: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Mathesh"),
              accountEmail: Text("mathesha.cse2020@citchennai.net"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("images/img.png"),
              ),
              decoration: BoxDecoration(
                color: Color(0xFF003366),
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_circle_outlined),
              title: Text(
                "Profile",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              selectedTileColor: Colors.amber,
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                "Settings",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              selectedTileColor: Colors.amber,
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text(
                "Logout",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              selectedTileColor: Colors.amber,
            ),
          ],
        ),
      ),
    );
  }
}
