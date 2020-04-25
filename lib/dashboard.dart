import 'dart:convert';
import 'package:fling/Countries.dart';
import 'package:fling/CovidLabs.dart';
import 'package:fling/Donate.dart';
import 'package:fling/FetchData.dart';
import 'package:fling/FreeFood.dart';
import 'package:fling/GlobalData.dart';
import 'package:fling/Questions.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:fling/Symptoms.dart';
import 'package:fling/precautions.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {

  bool menuTapped = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
          title: Text("Dashboard",style: TextStyle(fontWeight: FontWeight.w500),),
          leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: (){
                if(menuTapped){
                  setState(() {
                    menuTapped = false;
                  });
                }else{
                  setState(() {
                    menuTapped = true;
                  });
                }
              }
          ),
          actions: [
            IconButton(
                icon: Icon(Icons.search),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Countries()));
                }
            )
          ],
        ),
        body: Stack(
            children: <Widget>[
              SingleChildScrollView(
                child: Column(
                  children: [

                    Container(
                      margin: EdgeInsets.all(10.0),
                      height: 240.0,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Card(
                          elevation: 10.0,
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0)
                          ),
                          child: Stack(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.all(5.0),
                                      height: 230.0,
                                      width: 230.0,
                                      child: Image.asset("images/c.jpg")
                                  ),
                                ],
                              ),

                              Center(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(width: 20.0,),
                                      TyperAnimatedTextKit(
                                          text: [
                                            " Stay home,\n Stay safe",
                                          ],
                                          textStyle: TextStyle(
                                            color: Colors.deepPurple[400],
                                              fontSize: 35.0,
                                              fontFamily: "Pacifico"
                                          ),
                                          textAlign: TextAlign.start,
                                        speed: Duration(milliseconds: 200),
                                        alignment: Alignment.centerLeft,
                                      ),
                                    ],
                                  ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),


                    SizedBox(height: 20.0,),

                    Container(
                      margin: EdgeInsets.only(left: 15.0),
                      child: Row(
                        children: [
                          Text("Current Data : ",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20.0),),
                          Text("Global",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20.0,color: Colors.white),)
                        ],
                      ),
                    ),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: GlobalData()
                    ),

                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Symptoms()));
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 20.0,right: 20.0,bottom: 20.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          color: Colors.deepPurple[800],
                        ),

                        child: ListTile(
                          title: Text("Symptoms of COVID-19",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800),),
                          subtitle: Text("Tap to aware yourself.",style: TextStyle(color: Colors.white),),
                          trailing: Icon(Icons.navigate_next,color: Colors.white,),

                        ),
                      ),
                    ),

                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Precautions()));
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 20.0,right: 20.0,bottom: 20.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Colors.deepPurple[800],
                            Colors.deepPurple[300],
                          ]),

                        ),

                        child: ListTile(
                          title: Text("Precautions to take",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800),),
                          subtitle: Text("Tap to aware yourself.",style: TextStyle(color: Colors.white),),
                          trailing: Icon(Icons.navigate_next,color: Colors.white,),

                        ),
                      ),
                    ),

                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Donate()));
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 20.0,right: 20.0,bottom: 20.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          color: Colors.deepPurple[800],
                        ),

                        child: ListTile(
                          title: Text("Reference to donate",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800),),
                          subtitle: Text("Tap to donate.",style: TextStyle(color: Colors.white),),
                          trailing: Icon(Icons.navigate_next,color: Colors.white,),

                        ),
                      ),
                    ),

                    GestureDetector(
                      onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Questions()));
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 20.0,right: 20.0,bottom: 20.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Colors.deepPurple[800],
                                Colors.deepPurple[300],
                              ]),

                        ),

                        child: ListTile(
                          title: Text("Frequent questions",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800),),
                          subtitle: Text("Tap to get answered.",style: TextStyle(color: Colors.white),),
                          trailing: Icon(Icons.navigate_next,color: Colors.white,),

                        ),
                      ),
                    ),
                  ],
                ),
              ),


              Positioned(
                top: menuTapped==false?-((MediaQuery.of(context).size.width)):-4.0,

                child: SingleChildScrollView(
                  child: Container(
                      height: (MediaQuery.of(context).size.height)/3.7,
                      width: (MediaQuery.of(context).size.width),

                      child: Card(
                        elevation: 2.0,
                        color: Colors.orange[100],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(35),
                                bottomRight: Radius.circular(35),
                                topRight: Radius.circular(35)
                            )
                          ),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>FreeFood()));
                                    setState(() {
                                      menuTapped = false;
                                    });
                                  },
                                  child: CircleAvatar(
                                    radius: 55.0,
                                    backgroundColor: Colors.deepPurple[400],
                                    child: CircleAvatar(
                                      radius: 50.0,
                                      backgroundColor: Colors.deepPurple[300],
                                      backgroundImage: AssetImage("images/freeFood.jpg"),
                                    ),
                                  ),
                                ),
                                Text("Free Food Services",style: TextStyle(
                                  color: Colors.deepPurple,
                                    fontSize: 15.0
                                ),)
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>CovidLabs()));
                                    setState(() {
                                      menuTapped=false;
                                    });
                                  },
                                  child: CircleAvatar(
                                    radius: 55.0,
                                    backgroundColor: Colors.deepPurple[400],
                                    child: CircleAvatar(
                                      radius: 50.0,
                                      backgroundColor: Colors.deepPurple[300],
                                      backgroundImage: AssetImage("images/testingLab.jpg"),
                                    ),
                                  ),
                                ),
                                Text("COVID-19 Testing Lab",style: TextStyle(
                                    color: Colors.deepPurple,
                                  fontSize: 15.0
                                ),)
                              ],
                            ),
                          ],
                        ),
                        ),
                    ),
                ),
              ),
            ],
          ),
    );
  }


}
