import 'package:flutter/material.dart';

import 'package:simple_calculator/calculatorlogic.dart';

class calculator extends StatefulWidget {
  const calculator({Key? key}) : super(key: key);

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {



  Widget calculatorbutton(btntxt1,Color btncolor, Color txtcolor){
    return Container(
     child: ElevatedButton(
         onPressed: (){ // button pressed events
           calculatorlogic(btntxt1);

           setState(() {
             text = finalResult; // prints the number and display

           });


           // adds button funtions when pressed
         },
         child: Text(btntxt1,
          style: TextStyle(
            fontSize: 35,
            color: txtcolor,

         ),
         ),
       style: ElevatedButton.styleFrom(
         shape: CircleBorder(),
         padding: EdgeInsets.all(20),
         backgroundColor: btncolor,
       ),

     ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text('Simple Calculator'),backgroundColor: Colors.black,),
      body: Padding(

        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            //screen display on app
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(child: Text(text,textAlign: TextAlign.right, style: TextStyle(color: Colors.white,fontSize: 50),)

                //Padding(padding: EdgeInsets.all(10.0),
                  //child: Text(text,textAlign: TextAlign.left, style: TextStyle(color: Colors.white,fontSize: 50),),

                )
                ],
            ),

            //1st row buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //button functions
                calculatorbutton('AC', Colors.black, Colors.deepOrangeAccent),
                calculatorbutton('<-', Colors.black, Colors.deepOrangeAccent),
                calculatorbutton('+/-', Colors.black, Colors.deepOrangeAccent),
                calculatorbutton('/', Colors.deepOrangeAccent, Colors.white),
              ],
            ),
            SizedBox(height: 10,),

            //2nd row buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //button functions
                calculatorbutton('7', Colors.black, Colors.white),
                calculatorbutton('8', Colors.black, Colors.white),
                calculatorbutton('9', Colors.black, Colors.white),
                calculatorbutton('x', Colors.deepOrangeAccent, Colors.white),
              ],
            ),
            SizedBox(height: 10,),

            //3rd row buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //button functions
                calculatorbutton('4', Colors.black, Colors.white),
                calculatorbutton('5', Colors.black, Colors.white),
                calculatorbutton('6', Colors.black, Colors.white),
                calculatorbutton('-', Colors.deepOrangeAccent, Colors.white),
              ],
            ),
            SizedBox(height: 10,),

            //4th row buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //button functions
                calculatorbutton('1', Colors.black, Colors.white),
                calculatorbutton('2', Colors.black, Colors.white),
                calculatorbutton('3', Colors.black, Colors.white),
                calculatorbutton('+', Colors.deepOrangeAccent, Colors.white),
              ],
            ),
            SizedBox(height: 10,),

            //5th row buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //button functions
                calculatorbutton('00', Colors.black, Colors.deepOrangeAccent),
                calculatorbutton('0', Colors.black, Colors.white),
                calculatorbutton('.', Colors.black, Colors.white),
                calculatorbutton('=', Colors.deepOrangeAccent, Colors.white),
              ],
            ),
            SizedBox(height: 10,),
          ],
        ),
      ),


    );
  }
}

