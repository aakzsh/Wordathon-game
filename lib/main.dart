import 'package:flutter/material.dart';
import 'firstscreen.dart';
import 'allwords.dart';

void main()
{
runApp(myApp());
}



class myApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: "wordathon",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset('assets/bg.jpg',
        fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget> [
Text(
  "WORDATHON", style: TextStyle(fontSize: 44.0, fontWeight: FontWeight.w900, color: Colors.black),
),
              MaterialButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(       //press karne pe navigate karne ke liye
                    builder: (context) => firstscreen(),
                  ),
                  );
                },
                color: Colors.red,
                child: Text(
                  "PLAY!",
                  style: TextStyle(
                    fontSize: 45.0,
                    color: Colors.white,
                  ),
                ),
              ),


            ],
          ),
        ],
      ),
    );
  }
}


