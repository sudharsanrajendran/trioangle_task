import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body:Stack(
  children: [
    Container(
      height:700,
      width:400,
      decoration:BoxDecoration(
        image: DecorationImage(image: AssetImage('images/Little-Boy-Reading-Book-PNG-Photos.png'
        )),boxShadow:[BoxShadow(color:Colors.white.withOpacity(0.2),
          spreadRadius: 2,
          blurRadius: 70,
          offset:Offset(0,3))]
      )
    ),
    Container(
      child: Column(
        children: [
          Expanded(child: Center(child: Padding(
            padding: const EdgeInsets.only(right: 200,top: 320 ),
            child: Text("Reading Book ",style: TextStyle(color:Colors.teal,fontSize: 23,fontWeight: FontWeight.bold),),
          ),)),

        ],

      ),
    ),
    Container(
      child: Column(
        children: [
          Expanded(child: Center(child: Padding(
            padding: const EdgeInsets.only(right: 200,top: 450 ),
            child: Text("Reading is \nMore fun",style: TextStyle(color:Colors.black,fontSize: 30,fontStyle:FontStyle.italic,fontWeight:FontWeight.bold),
            ),
          ),)),

        ],

      ),
    ),
    Container(
      child: Column(
        children: [
          Expanded(child: Center(child: Padding(
            padding: const EdgeInsets.only(right: 100,top: 570,left: 30 ),
            child: Text("Your project management so that the results are maximized",style: TextStyle(color:Colors.grey,fontSize: 15,fontStyle:FontStyle.italic,fontWeight:FontWeight.bold),
            ),
          ),)),



        ],

      ),
    ),

    Container(
      child: Column(
        children: [
          Expanded(child: Center(child: Padding(
            padding: const EdgeInsets.only(right: 200,top: 700, ),
            child:RawMaterialButton(
              onPressed:(){
                Navigator.of(context).pushReplacementNamed('/Body');
              },constraints: BoxConstraints(minHeight:50  ),fillColor:Colors.teal,shape:StadiumBorder(
              side:BorderSide(color:Colors.teal)
            ),child: Text("        Get started         ",style: TextStyle(color:Colors.white,fontWeight:FontWeight.bold,shadows: [
              Shadow(
                color:Colors.white.withOpacity(0.5),blurRadius:5,
              )
            ])),
            )
          ),)),
        ],),)

  ],
),
    );
  }
}
