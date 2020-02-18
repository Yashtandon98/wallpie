import 'package:flutter/material.dart';
import 'FullImage.dart';
import 'wallpapers.dart';

void main(){
  runApp(wallPie());
}

class wallPie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: wallpapers(),
      routes: {
        'FullImage':(context)=>FullImage()
      },
    );
  }
}