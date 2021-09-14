import 'package:ecommerceapp/Component/History.dart';
import 'package:ecommerceapp/Component/Profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:ecommerceapp/Component/Home.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
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
        body: MyCard(),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Product("Iphone 12", "\$90", "media/1.jpg",context),
            SizedBox(
              height: 10,
            ),
            Product("Oppo", "\$70", "media/2.jpg",context),
            SizedBox(
              height: 10,
            ),Product("MacBook Pro", "\$150", "media/3.jpg",context),
            SizedBox(
              height: 10,
            ),Product("Gaming PC", "\$190", "media/4.jpg",context),
            SizedBox(
              height: 10,
            ),Product("Backlit Keyboard", "\$10", "media/5.jpg",context),
            SizedBox(
              height: 10,
            ),Product("Lamborghani", "\$1110", "media/6.jpg",context),
            SizedBox(
              height: 10,
            ),Product("RoadSter", "\$720", "media/7.jpg",context),
            SizedBox(
              height: 10,
            ),Product("Royal Field", "\$400", "media/8.jpg",context),
            SizedBox(
              height: 10,
            ),Product("Laptop", "\$400", "media/9.jpg",context),
            SizedBox(
              height: 10,
            ),
            Product("Tablet", "\$170", "media/10.jpg",context),
            SizedBox(
              height: 10,
            ),Product("Computer", "\$350", "media/11.jpg",context),
            SizedBox(
              height: 10,
            ),Product("Mobile Watch", "\$190", "media/12.jpg",context),
            SizedBox(
              height: 10,
            ),Product("XBox", "\$500", "media/13.jpg",context),
            SizedBox(
              height: 10,
            ),Product("Bluetooth", "\$370", "media/14.jpg",context),
            SizedBox(
              height: 10,
            ),Product("Head Phones", "\$32", "media/15.jpg",context),
            SizedBox(
              height: 10,
            ),Product("Hand Free", "\$10", "media/16.jpg",context),
            SizedBox(
              height: 10,
            ),
            Product("Ferrari", "\$1200", "media/17.jpg",context),
            SizedBox(
              height: 10,
            ),Product("Sports Bike", "\$730", "media/18.jpg",context),
            SizedBox(
              height: 10,
            ),Product("IOS Latest Version", "\$480", "media/19.jpg",context),
            SizedBox(
              height: 10,
            ),



            SizedBox(
              height: 20,
            ),
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

Widget Product(name,price,img,BuildContext context){
  return Container(
              margin: EdgeInsets.all(3),
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 11,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.bottomLeft,
                    height: 150,
                    width: 140,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(img),
                          fit: BoxFit.fitWidth),
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10, right: 12),
                          child: Text(
                            name,
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 13, right: 0, top: 10),
                          child: Text(
                            "⭐ 5.0 (23 Review)",
                            style: TextStyle(
                                color: Colors.grey[600], fontSize: 13),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10, right: 0, left: 6),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                child: Text(
                                  "20 Pieces",
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                child: Text(
                                  price,
                                  style: TextStyle(
                                      color: Colors.deepPurple,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 0, top: 8, right: 25),
                          child: Text(
                            "Quantity: 1",
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
}