
import 'package:amazinh_qhoths/screen/Homepage.dart';
import 'package:amazinh_qhoths/screen/fav.dart';
import 'package:amazinh_qhoths/screen/finelscreen.dart';
import 'package:amazinh_qhoths/screen/fullscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=> HomePage(),
        '/fullscreen':(context)=>FullScreen(),
        '/final' :(context)=>FinalScreen(),
        '/faovritscreen':(context)=>FavoriteScreen(),
      },
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        textTheme: TextTheme(
          titleLarge: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),
          titleMedium: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),
          titleSmall: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),
          displayLarge: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),
        )
      ),
    ),
  );
}
