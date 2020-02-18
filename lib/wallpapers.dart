import 'package:flutter/material.dart';

class wallpapers extends StatefulWidget {
  @override
  _wallpapersState createState() => _wallpapersState();
}

class _wallpapersState extends State<wallpapers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 5, 
          crossAxisSpacing: 5,
        ),
        itemBuilder: (context, index){
          return Container(color: Colors.white,);
        }),
    );
  }
}