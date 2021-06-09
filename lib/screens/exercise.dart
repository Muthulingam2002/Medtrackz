import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'faqs.dart';
import 'datasource.dart';

class workout extends StatefulWidget {


  @override
  _workoutState createState() => _workoutState();
}

class _workoutState extends State<workout> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.fromLTRB(10, 6, 0, 6),
            child: CircleAvatar(
              backgroundImage: AssetImage('images/weightlifiting.jpg'),
            ),
          ),
          title: Text(
            "Workout",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.grey[900],
          iconTheme: IconThemeData(color: Colors.amber),
        ),
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
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 2),
                    child: Text("                 Coronavirus is said to damage the respiratory system, Pranayamam, the breathing exercise, improves functioning of lungs and helps pumping of oxygen-rich blood to all cells of the body. Plenty of online content is available to learn yoga, one such source is  our Medtrackz",

                      style: TextStyle(
                fontSize: 15,
                fontFamily: 'Pacifico',
                color: Colors.white,),),
                  ),

                  Image.asset('images/exercise.png',height: 195,),
                  Container(
                  child: Column(
                    children: <Widget>[

                      GestureDetector(
                        onTap: () {
                          launch('https://youtu.be/AzV3EA-1-yM');
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
                          margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                          color: primaryBlack,

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Full Body Workout',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                      Image.asset('images/yoga1.png',height:190),
                      GestureDetector(
                        onTap: () {
                          launch(
                              'https://youtu.be/ZToicYcHIOU');
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
                          margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                          color: primaryBlack,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Mindful Meditation',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),


                ],
              )
            )),
        backgroundColor: Colors.black,
      ),
    );;
  }
}
