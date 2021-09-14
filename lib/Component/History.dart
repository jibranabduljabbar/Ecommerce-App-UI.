import 'dart:ui';
import 'package:flutter/material.dart';
import 'Home.dart';
import 'Profile.dart';
import 'History.dart';

class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'Ecom App UI',
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
          actions: <Widget>[
            Center(
              child: IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 4,
              ),
              Container(
                margin: EdgeInsets.all(6),
                height: MediaQuery.of(context).size.height * 0.1,
                child: TextField(
                  decoration: InputDecoration(
        
                      // Input Border:
                      border: OutlineInputBorder(),
                      labelText: "Username ",
                      labelStyle: TextStyle(
                        color: Colors.grey[600],
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      ),
                      hintText: "Username...",
                      suffixIcon: IconButton(
                        icon: Icon(Icons.search),
                        onPressed: () {},
                      ),
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.w300, color: Colors.grey)),
                ),
              ),
              SizedBox(
                height: 0,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      "History",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    )),
              ),
              SizedBox(
                height: 13,
              ),
        
              ListTileE("Iphone 12","⭐ 5.0 (23 Reviews)","\$10","media/1.jpg"),
              ListTileE("Oppo","⭐ 5.0 (23 Reviews)","\$70","media/2.jpg"),
              ListTileE("MacBook Pro","⭐ 5.0 (23 Reviews)","\$120","media/3.jpg"),
              ListTileE("Gaming PC","⭐ 5.0 (23 Reviews)","\$10","media/4.jpg"),
              ListTileE("Backlit Keyboard","⭐ 5.0 (23 Reviews)","\$10","media/5.jpg"),
              ListTileE("Lamborghani","⭐ 5.0 (23 Reviews)","\$10","media/6.jpg"),
              ListTileE("RoadSter","⭐ 5.0 (23 Reviews)","\$10","media/7.jpg"),
              ListTileE("Royal Field","⭐ 5.0 (23 Reviews)","\$10","media/8.jpg"),
              ListTileE("Laptop","⭐ 5.0 (23 Reviews)","\$10","media/9.jpg"),
              ListTileE("Tablet","⭐ 5.0 (23 Reviews)","\$10","media/10.jpg"),
              ListTileE("Computer","⭐ 5.0 (23 Reviews)","\$10","media/11.jpg"),
              ListTileE("Mobile Watch","⭐ 5.0 (23 Reviews)","\$10","media/12.jpg"),
              ListTileE("Xbox","⭐ 5.0 (23 Reviews)","\$10","media/13.jpg"),
              ListTileE("Bluetooth","⭐ 5.0 (23 Reviews)","\$10","media/14.jpg"),
              ListTileE("HeadPhones","⭐ 5.0 (23 Reviews)","\$10","media/15.jpg"),
              ListTileE("HandFree","⭐ 5.0 (23 Reviews)","\$10","media/16.jpg"),
              ListTileE("Ferari","⭐ 5.0 (23 Reviews)","\$10","media/17.jpg"),
              ListTileE("Sports Bike","⭐ 5.0 (23 Reviews)","\$10","media/18.jpg"),
              ListTileE("IOS Latest Version","⭐ 5.0 (23 Reviews)","\$10","media/19.jpg"),
        
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(icon: Icon(Icons.person), onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));  
            }),
            Spacer(),
            IconButton(icon: Icon(Icons.history), onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => History()));
            }),
            IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.home),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,);
  }
}

Widget ListTileE(title, subtitle, price, img) {
  return ListTile(
    leading: CircleAvatar(
      backgroundImage: AssetImage(img),
    ),
    title: Text(title),
    subtitle: Text(subtitle),
    trailing: Text(price),
  );
}
