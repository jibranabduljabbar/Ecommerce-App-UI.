import 'package:flutter/material.dart';
import 'Home.dart';
import 'History.dart';
import 'Profile.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
                height: 10,
              ),
              Row(
                children: [
                  Positioned(
                    left: 50,
                    child: Container(
                      margin: EdgeInsets.only(
                        left: 5,
                      ),
                      height: 180,
                      width: 180,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("media/111.jpg"),
                            fit: BoxFit.fitWidth),
                        color: Colors.grey[50],
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Positioned(
                        right: 10,
                        child: Container(
                          margin: EdgeInsets.only(right: 45, bottom: 3),
                          child: Text(
                            "User",
                            style: TextStyle(
                                fontFamily: "Arial",fontSize: 27, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 10,
                        child: Container(
                          margin: EdgeInsets.only(
                            left: 8,
                          ),
                          child: Text(
                            "user@gmail.com",
                            style: TextStyle(fontFamily: "Arial",fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 10,
                        child: Container(
                          margin: EdgeInsets.only(right: 55, top: 20),
                          child: Row(
                            children: [
                              // Icon(Icons.logout,
                              // color: Colors.purple,),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "LogOut",
                                style: TextStyle(
                                    color: Colors.purple,
                                    fontWeight: FontWeight.w900),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 0,
              ),
              Positioned(
                right: 10,
                child: Container(
                  margin: EdgeInsets.only(right: 135, top: 20),
                  child: Text(
                        "ACCOUNT INFORMATION",
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                            fontFamily: "Arial",
                            fontWeight: FontWeight.bold),
                      ),
                    
                ),
              ),
              SizedBox(height: 10,),
              ListTile(
    title: Text("Full Name",style: TextStyle(fontFamily: "Arial",fontWeight: FontWeight.bold),),
    subtitle: Text("User"),
    trailing: IconButton(icon: Icon(Icons.edit,color: Colors.grey,), onPressed: () {}),),
              Info("Email","user@gmail.com"),
              Info("Phone","+0900-786 01"),
              Info("Address","New York, Random Street House No. 72"),
              Info("Gender","Male"),
              Info("Date of Birth","October 13, 1999"),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

    );
  }
}

Widget Info(title, subtitle) {
  return ListTile(
    title: Text(title,style: TextStyle(fontFamily: "Arial",fontWeight: FontWeight.bold),),
    subtitle: Text(subtitle),
  );
}
