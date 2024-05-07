
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class page extends StatefulWidget {
  const page({super.key});

  @override
  State<page> createState() => _pageState();
}

class _pageState extends State<page> {
  @override
  late Timer timer;
  int _seconds=0;
  @override
  void initState(){
    super.initState();
    startTimer();
  }
  void startTimer(){
    const  oneSec =Duration(seconds: 1);
    timer = Timer.periodic(oneSec, ( Timer timer) { setState(() {
      _seconds++;
    });

    });
  }

  void dispose(){
    timer.cancel();
    super.dispose();
  }

  String get timerString{
    Duration duration =Duration(seconds: _seconds);
    return '${duration.inHours}:${(duration.inMinutes % 60).toString().padLeft(2,"0")}:${(duration.inSeconds %60).toString().padLeft(2,"0")}';
  }


  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Column(
              children: [
                Expanded(child: Center(child: Padding(
                  padding: const EdgeInsets.only(right:250,bottom: 700,left: 10 ),
                  child: Text("Gramedia pandiaan ^",style: TextStyle(color:Colors.grey,fontSize: 15,fontStyle:FontStyle.italic,fontWeight:FontWeight.bold),
                  ),
                ),)),
              ],),),
          Container(
            child: Column(
              children: [
                Expanded(child: Center(child: Padding(
                  padding: const EdgeInsets.only(right:250,bottom: 630,left:10 ),
                  child: Text("Hi,Fariz AI",style: TextStyle(color:Colors.black,fontSize: 30,fontStyle:FontStyle.italic,fontWeight:FontWeight.bold),
                  ),
                ),)),
              ],),),

          Container(
            child: Column(
              children: [
                Expanded(child: Center(child: Padding(
                    padding: const EdgeInsets.only(bottom: 645,left:300 ),
                    child: CircleAvatar(radius: 35,backgroundImage:AssetImage('images/child.jpeg'),)
                ),)),
              ],),),

          Padding(
            padding: const EdgeInsets.only(bottom:380),
            child: Center(
              child: Container(
                height: 180,
                width: 400,
                decoration:BoxDecoration(color:Colors.teal,borderRadius:BorderRadius.circular(10),),
                child: Column(
                  children: [
                    Expanded(child: Center(child: Padding(
                      padding: const EdgeInsets.only(bottom:50,right: 240),
                      child: Text("Study time today",style: TextStyle(color:Colors.white30,
                          fontSize: 15,
                          fontStyle:FontStyle.italic,
                          fontWeight:FontWeight.bold),
                      ),
                    ),)),
                  ],),),
            ),
          ),

          Container(
            child: Column(
              children: [
                Expanded(child: Center(child:Padding(
                  padding: const EdgeInsets.only(bottom: 390 ,left: 220,right: 10,top: 10),
                  child: Container(
                    height:200,
                    width: 200,
                    decoration:BoxDecoration(
                        image: DecorationImage(image: AssetImage('images/teacher.jpeg'
                        )),boxShadow:[BoxShadow(color:Colors.white.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 70,
                        offset:Offset(0,3))]
                    ),
                  ),
                ),)),
              ],),),
          Container(
            child: Column(
              children: [
                Expanded(child: Center(
                  child: Container(
                    child:Padding(
                      padding: const EdgeInsets.only(bottom: 350,right:240),
                      child: Text(timerString,style: TextStyle(fontWeight:FontWeight.bold,fontStyle:FontStyle.italic,fontSize:30,color:Colors.white70),
                      ),
                    ),
                  ),
                ))
              ],
            ),
          ),
          Container(
            child:Center(child: Padding(
              padding: const EdgeInsets.only(right: 230,bottom:80),
              child: Text("Best Seller",style:TextStyle(fontSize:25,fontWeight:FontWeight.bold),),
            )),
          ),
          Container(
            child:Center(child: Padding(
              padding: const EdgeInsets.only(left:260,bottom:80),
              child: Text("See more",style:TextStyle(fontSize:15,fontWeight:FontWeight.bold,color:Colors.teal),),
            )),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:450,right:50,left: 80),
                child: Container(
                  height: 350,
                  width: 250,
                  decoration:BoxDecoration(borderRadius:BorderRadius.circular(20),border:Border.all(color:Colors.grey,width:2)
                  ),

                ),
              ),
            ],
          ),
          Container(
            child: Column(
              children: [
                Expanded(child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 200,right: 5),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushReplacementNamed('/Book');
                      },
                      child: Container(
                          height: 250,
                          width: 200,
                          decoration:BoxDecoration(image: DecorationImage(image: AssetImage("images/manjat.jpg")),boxShadow: [
                            BoxShadow( color: Colors.black.withOpacity(0.1),blurRadius:70)
                          ])

                      ),
                    ),
                  ),
                ))
              ],
            ),
          ),
          GestureDetector(
            child:Center(child: Padding(
              padding: const EdgeInsets.only(top: 500,right: 30),
              child: Text("Mantapu jiwa",style:TextStyle(fontSize:25,fontWeight:FontWeight.bold,color:Colors.black),),
            )),
          ),
          Container(
            child:Center(child: Padding(
              padding: const EdgeInsets.only(top: 550,right: 30),
              child: Text("By jeromi Polin Sijabat",style:TextStyle(fontSize:15,fontWeight:FontWeight.bold,color:Colors.grey),),
            )),
          ),
          Container(
            child:Center(child: Padding(
              padding: const EdgeInsets.only(top: 640,right: 150),
              child: Text("\u{2B50}4.8",style:TextStyle(fontSize:20,fontWeight:FontWeight.bold,color:Colors.grey),),
            )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 820),
            child: IconButton(onPressed: (){}, icon:Icon(Icons.mail_outline_outlined)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 820,left: 80),
            child: IconButton(onPressed: (){}, icon:Icon(Icons.message_rounded)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 820,left: 260),
            child: IconButton(onPressed: (){}, icon:Icon(Icons.calendar_month_outlined)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 820,left: 350),
            child: IconButton(onPressed: (){}, icon:Icon(Icons.badge)),
          ),
          Padding(
            padding: const EdgeInsets.only(top:740,left:240),
            child: Container(
              child: CircularPercentIndicator(radius: 20,lineWidth:7, percent: 0.2,progressColor:Colors.orange,center:Text("30%",style:TextStyle(fontSize: 12,fontWeight:FontWeight.bold),),),
            ),
          )

        ],
      ),

      floatingActionButton:Padding(
        padding: const EdgeInsets.only(right: 160,top:50),
        child: FloatingActionButton(onPressed: (){},child:Icon(Icons.document_scanner_rounded),),
      ),
    );
  }
}
