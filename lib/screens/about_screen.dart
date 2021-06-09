import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.cyan,
                      Colors.indigo,
                    ],
                  )
              ),
              child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              CircleAvatar(
                backgroundColor: Colors.black,
                backgroundImage: AssetImage('images/medtracks.png'),
                radius: 50,
              ),
              Text(
                'Medtrackz',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Pacifico',
                  color: Colors.white,
                ),
              ),
              Text('Your Healthcare Companion',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w300,
                  )),
              Divider(
                height: 90,
                color: Colors.white24,
              ),
              Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  child: ListTile(
                    title: Text('+91 9434244114',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        )),
                    leading: Icon(
                      Icons.phone,
                      color: Colors.lightBlueAccent,
                    ),
                  )),
              Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  child: ListTile(
                    title: Text('medtrackz@gmail.com',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        )),
                    leading: Icon(
                      Icons.email,
                      color: Colors.blueAccent,
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                child: Container(

                    margin: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                    padding: EdgeInsets.all(15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                       
                        Icon(
                          MdiIcons.facebook,
                          color: Colors.yellow.shade600,
                          size: 40,
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Icon(
                          MdiIcons.instagram,
                          color: Colors.yellow.shade600,
                          size: 40,
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Icon(
                          MdiIcons.googlePlus,
                          color: Colors.yellow.shade600,
                          size: 40,
                        ),
                      ],
                    )),
              )
          ],
        ),
            )),
        backgroundColor: Colors.black,
      ),
    );
    ;
  }
}
