import 'package:flutter/material.dart';
void main (){
  runApp(About());

}

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
        )

    );
  }
}
