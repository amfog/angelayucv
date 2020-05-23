
import 'package:flutter/material.dart';

import 'page/about.dart';

void main() {
  runApp(MyCard());
}

class MyCard extends StatefulWidget {
  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CV',
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  //gradient colors
                  colors: [
                    Colors.blue,
                    Colors.lightBlue,
                    Colors.cyan,
                    Colors.blue.shade900,
                    Colors.blue.shade500
                  ]),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 90.0,
                  backgroundImage: AssetImage('images/abdo1.jpg'),
                ),
                Name(),
                Job(),
                SizedBox(
                  width: 150.0,
                  height: 20.0,
                  child: Divider(
                    color: Colors.blue.shade100,
                  ),
                ),
                PhoneNumberCard(),
                EmailCard(),
                CvCard(),
                AboutCard()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//use va
// name widget
class Name extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Abdelrahman M Ahmed",
      style: TextStyle(
          fontFamily: 'JosefinSans',
          fontStyle: FontStyle.italic,
          color: Colors.white,
          fontSize: 37.0),
    );
  }
}

class Job extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Flutter Developer',
      style: TextStyle(
          fontStyle: FontStyle.normal,
          fontSize: 30.0,
          color: Colors.blue.shade100),
    );
  }
}

class PhoneNumberCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white,
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
        child: ListTile(onTap: (){},
          leading: Icon(
            Icons.call,
            color: Colors.blue,
          ),
          title: Text(
            "01032262210",
            style: TextStyle(color: Colors.blue, fontSize: 20.0),
          ),
        ));
  }
}

class EmailCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white,
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
        child: ListTile(
          leading: Icon(
            Icons.email,
            color: Colors.blue,
          ),
          title: Text(
            'abdo.sf.ahmed@gmail.com',
            style: TextStyle(color: Colors.blue, fontSize: 20.0),
          ),
        ));
  }
}

class CvCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white,
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
        child: ListTile(
          title: Text(
            'CV',
            style: TextStyle(color: Colors.blue, fontSize: 20.0),
          ),
          leading: Icon(
            Icons.account_circle,
            color: Colors.blue,
          ),
        ));
  }
}

class AboutCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white,
        margin: EdgeInsets.only(left: 120.0, right: 8.0),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => About()
              ));
            },
            child: Text('About App', style: TextStyle(color: Colors.blue, fontSize: 20.0),
            ),
          ),
        ));
  }
}
