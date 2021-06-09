import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'AppDrawer.dart';
import 'ArticleScreen.dart';
import 'ForYouContainer.dart';
import 'data.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget buildForYouContainers() {
    List<Widget> forYouContainers = [];
    for (Article article in forYou) {
      forYouContainers.add(ForYouContainer(
        article: article,
      ));
    }

    return Column(
      children: forYouContainers,
    );
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Container(
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
      child: Scaffold(

        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Padding(
            padding: const EdgeInsets.fromLTRB(70.0, 8.0, 8.0, 8.0),
            child: Text(
              widget.title,
              textAlign: TextAlign.center,
              style: TextStyle(

                color: Colors.amber,
              ),
            ),
          ),
          backgroundColor: Colors.grey[900],
          iconTheme: IconThemeData(color: Colors.amber),
        ),


        drawer: AppDrawer(),
        body: Container(

          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [

                  Colors.indigo,
                  Colors.cyan,
                ],
              )
          ),
          child: SafeArea(
            child: ListView(
              children: [
                SizedBox(
                  height: 200.0,
                  width: double.infinity,
                  child: Carousel(
                    dotSize: 5.0,
                    dotSpacing: 15.0,
                    dotColor: Colors.amber,
                    dotBgColor: Colors.transparent,
                    indicatorBgPadding: 5.0,
                    autoplay: true,
                    autoplayDuration: Duration(seconds: 5),
                    images: [
                      Image.asset(
                        "images/covaccine.jpg",
                      ),
                      Image.asset(
                        "images/diet.jpg",
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        "images/running.jpg",
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'For You',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                buildForYouContainers(),
              ],
            ),
          ),
        ),

      ),
    );
  }
}
