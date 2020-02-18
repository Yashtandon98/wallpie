import 'dart:convert';
import 'Global.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'models/photos.dart';

class wallpapers extends StatefulWidget {
  @override
  _wallpapersState createState() => _wallpapersState();
}

class _wallpapersState extends State<wallpapers> {

  getWallpapers() async {

    await http.get("https://api.pexels.com/v1/curated?per_page=15&page=1", 
    headers: {"Authorization":"563492ad6f91700001000001877263a8d7d7406f913242928a7c5f5e"}).then((res) {
      print(res.body);
      var parsedJson = jsonDecode(res.body);
      Global.photos = (parsedJson["photos"] as List).map((data)=>Photos.fromJson(data)).toList();
    });

    setState(() {
      
    });
  }

  @override
  void initState() {
    super.initState();
    getWallpapers(); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GridView.builder(
        itemCount: Global.photos.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 5, 
          crossAxisSpacing: 5,
          childAspectRatio: 0.5
        ),
        itemBuilder: (context, index){
          return GestureDetector(onTap: () {
            Navigator.of(context).pushNamed('FullImage');
          },child: Container(decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(image: NetworkImage(Global.photos[index].src.tiny), fit: BoxFit.cover)
          ),));
        }),
    );
  }
}