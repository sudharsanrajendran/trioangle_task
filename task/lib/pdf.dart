import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:flutter/material.dart';
class readbook extends StatefulWidget {
  const readbook({super.key});

  @override
  State<readbook> createState() => _readbookState();
}

class _readbookState extends State<readbook> {
  int currentPage=0;
  int totalpages=0;
  double loadingprocess=0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Center(child: Text("STORY")),
        leading:IconButton(onPressed:(){
          Navigator.of(context).pushReplacementNamed('/Book');

        },icon:Icon(Icons.arrow_back),),
        backgroundColor:Colors.tealAccent,
      ),
      body: SfPdfViewer.asset("images/story-tenali_text.pdf"),

    );
  }
}
