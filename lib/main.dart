import 'package:flutter/material.dart';
import 'wallpapers.dart';

void main(){
  runApp(wallPie());
}

class wallPie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: wallpapers(),
    );
  }
}