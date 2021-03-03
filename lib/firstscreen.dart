
import 'package:random_string/random_string.dart';
import 'dart:math' show Random;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'allwords.dart';

class firstscreen extends StatefulWidget {
  @override
  _firstscreenState createState() => _firstscreenState();
}
int rand = randomBetween(0, 9000);
var texty = all_words[2];
class _firstscreenState extends State<firstscreen> {
  String words = "";
  String guessword;
  String ttd = ""; int res = 0;
  String finaltext = "";
  int marksnum;
  int rank = 9;
  int a=0, count =1;
  double percentile = 0.0,percent;

  var x = randomBetween(1, 9000);
  String b="press go";

  void rankcal(String guessword)
  {    count = count +1;

a=a+1;
{
  if (allwords.contains("$guessword") == true) {
    finaltext = "Lets move on to next level, yay";
  }
  else if (allwords.contains("$guessword") == false) {
    res  = count-2;
    count = 1;
    finaltext = "Good game, your final score is $res";
  }

}




  String m = all_words[randomBetween(2, 9000)];
  String shuffle = "yo";

    setState(() {
      b = m;
      res = res;
      count = count;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text(
          "wordathon",
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
      Image.asset('assets/preview.jpg',
        fit: BoxFit.cover,
      ),

         Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(30.0),
                child: Text(
                  "Level $count",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Times New Roman',
                    fontSize: 60.0,
                  ),

                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(
                "Make a meaningful word using $texty $x",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 17.0,
                ),

              ),
              ),


              Padding(
                padding: EdgeInsets.all(1.0),
                child: Text(
                  "$b",
                  style: TextStyle(
                    fontFamily: 'Times New Roman',
                    fontWeight: FontWeight.w700,
                    fontSize: 40.0,
                  ),

                ),
              ),
             Padding(
               padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 50.0),
               child:  TextField(

                 onChanged: (guess){
                   guessword = guess;

                 },
                 maxLength: 15,
                 maxLines: 1,
                 keyboardType: TextInputType.text,
                 decoration: InputDecoration(
                   hintText: '',
                   border: OutlineInputBorder(),
                   prefixIcon: Icon(Icons.arrow_forward_ios),

                 ),
                 style: TextStyle(
                   color: Colors.black,
                   fontSize: 30.0,
                 ),
               ),
             ),
              Padding (
               padding: EdgeInsets.all(10.0),
                child:  FlatButton(

                    onPressed: () => rankcal(guessword), //yeh paranthesis daalne se button reply nahi karta
                    color: Colors.green,
                    textColor: Colors.white,

                    child: Text(
                      "GO",
                      style: TextStyle(
                        fontSize: 25.0,
                      ),
                      //ab jo styles wagerah add karna hai kar sakde ho :)
                    )
                ),

              ),
Text("$finaltext",
style: TextStyle(
  fontSize: 20.0,
),),
          ],
        ),
    ],
      ),

    );
  }
}
