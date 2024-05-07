
import 'package:flutter/material.dart';
import 'package:untitled/Body.dart';
import 'package:untitled/Book.dart';
import 'package:untitled/pdf.dart';
import 'home.dart';
void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      "/":(context)=>home(),
      "/Body":(context)=>page(),
      "/Book":(context)=>page2(),
      "/pdf":(context)=>readbook(),

    },
  ));
}