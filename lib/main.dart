import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyFirstApp());
}

class MyFirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('My Info'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/person.png'),
                  fit: BoxFit.scaleDown
                ),
              ),
            ),
            Container(
              child: Divider(
                color: Colors.grey,
              ),
              margin: EdgeInsets.symmetric(horizontal: 20),
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 30,
                      width: 300,
                      child: Text("NAME", style: TextStyle(fontWeight: FontWeight.w300),),
                      margin: EdgeInsets.symmetric(horizontal: 20),
                    ),
                    Container(
                        height: 30,
                        width: 300,
                        child: Text("Aydın Can Dabanıyastı", style: TextStyle(color: Colors.yellow, fontSize: 24, fontWeight: FontWeight.bold)),
                        margin: EdgeInsets.symmetric(horizontal: 20),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      child: Icon(Icons.mail),
                      margin: EdgeInsets.only(left: 20, bottom: 5),
                    ),
                    Container(
                      child: Text("aydindabaniyasti@gmail.com", style: TextStyle(color: Colors.white70 ,fontSize: 18, fontWeight: FontWeight.w500)),
                      margin: EdgeInsets.only(left: 10, bottom: 5),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      child: Icon(Icons.phone),
                      margin: EdgeInsets.only(left: 20),
                    ),
                    Container(
                      child: Text("0541 344 09 43", style: TextStyle(color: Colors.white70 ,fontSize: 18, fontWeight: FontWeight.w500)),
                      margin: EdgeInsets.only(left: 10),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


