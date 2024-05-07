import 'package:flutter/material.dart';

class page2 extends StatefulWidget {
  const page2({super.key});

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
   final text=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          Container(height: 300,
          width:MediaQuery.of(context).size.width,
          color: Colors.grey,),
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: IconButton(icon:Icon(Icons.arrow_back), onPressed: () {   Navigator.of(context).pushReplacementNamed('/Body');

            },)
          ),

          Padding(
            padding: const EdgeInsets.only(top: 150,left: 40),
            child: Container(
              child:Text("Mantapu \n Jiwa",style:TextStyle(fontSize:30,fontWeight:FontWeight.bold,fontStyle:FontStyle.italic),
            ),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 200,top: 140),
            child: Container(
                height: 250,
                width: 200,
                decoration:BoxDecoration(image: DecorationImage(image: AssetImage("images/manjat.jpg")),boxShadow:[
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),blurRadius:30
                  )
                ])
            ),
          ),


          Padding(
            padding: const EdgeInsets.only(top: 390,left: 40),
            child: Container(
              child:Text("Synopsis",style:TextStyle(fontSize:20,fontWeight:FontWeight.bold,fontStyle:FontStyle.italic),
              ),),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 430,left: 20),
            child: Container(
              child:Text(' "So this is a math exercise book,huh ,jer?" ',style:TextStyle(fontSize:18,fontWeight:FontWeight.bold,fontStyle:FontStyle.italic),
              ),),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 470,left: 30),
            child: Container(
              child:Text("people say,as long as humans are alive, humans will contiune"
                  " to face problem after problem and thats what i am going to  tell ypu in this book"
                  " which is how i deal with every problem in my life .Starting from me begin 1998,how my family"
                  " tired to send me to schoool with limited ecomic conditions,until finally,i"
                  " managed to get a full undergraduate schorship in japan",style:TextStyle(fontSize:15,fontWeight:FontWeight.bold,fontStyle:FontStyle.italic,color:Colors.grey),
              ),),
          ),
          Padding(
            padding: const EdgeInsets.only(top:650,left: 40),
            child: Container(
              child: Expanded(
                child: Column(
                  children: [
                  Text("\u{2B50}4.8             |         25+        |         345 "  ,style:TextStyle(fontSize:20,fontWeight:FontWeight.bold,fontStyle:FontStyle.italic),
                ), Text("700+Reviws     Rateing 25+      345 sold ",style:TextStyle(fontSize:20,fontWeight:FontWeight.bold,fontStyle:FontStyle.italic,color: Colors.grey),
                    ),
              ]),

              ),
            ),
    ),
          Container(
            child: Column(
              children: [
                Expanded(child: Center(child: Padding(
                    padding: const EdgeInsets.only(right:30,top: 700,left: 40 ),
                    child:RawMaterialButton(
                      onPressed:(){
                        Navigator.of(context).pushReplacementNamed('/pdf');
                      },constraints: BoxConstraints(minHeight:50  ),fillColor:Colors.teal,shape:StadiumBorder(
                        side:BorderSide(color:Colors.teal)
                    ),child: Text("        Add to Cart         ",style: TextStyle(color:Colors.white,fontWeight:FontWeight.bold,shadows: [
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
