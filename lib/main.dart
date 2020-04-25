import 'package:fling/dashboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main()=>runApp(MaterialApp(
  theme: ThemeData(fontFamily: 'Sansation'),
  debugShowCheckedModeBanner: false,
  home: Home(),
));


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      backgroundColor: Colors.white,
      image: Image.asset('images/mainscreen.jpg'),
      photoSize: 100.0,
      navigateAfterSeconds: MyApp(),
      title: Text("Fling welcomes you",style: TextStyle(color: Colors.deepPurple,fontSize: 20.0),),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: DashBoard(),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.deepPurple[700],
                  Colors.orange[200]
                ])
        ),
      );
  }
}
