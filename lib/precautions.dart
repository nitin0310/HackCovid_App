import 'package:flutter/material.dart';

class Precautions extends StatefulWidget {
  @override
  _PrecautionsState createState() => _PrecautionsState();
}

class _PrecautionsState extends State<Precautions> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          splashColor: Colors.white,
          backgroundColor: Colors.deepPurple[800],
          child: Icon(Icons.arrow_back_ios,color: Colors.white,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.deepPurple[800],
          title: Text("Precautions",style: TextStyle(color: Colors.white),),
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10.0,left: 5.0,right: 5.0),
                height: 140.0,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(top:5.0,bottom: 5.0),
                  child: Card(
                    elevation: 6.0,
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image.asset('images/freshFood.jpg'),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("Fruits & Vegetables",style: TextStyle(fontFamily: 'Pacifico'),)
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(" Good nutrition is crucial \n"
                                    "for health, particularly in times\n"
                                    "  when the immune system might\n"
                                    " need to fight back.",style: TextStyle(fontFamily: 'Sansation',fontSize: 12.0),)
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 10.0,left: 5.0,right: 5.0),
                height: 140.0,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(top:5.0,bottom: 5.0),
                  child: Card(
                    elevation: 6.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Washing hands",style: TextStyle(fontFamily: 'Pacifico'),)
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Clean your hands regularly.\n"+
                                  "Wash your hands with soap and water.\n"+
                                  "Use alcohol-based hand Sanitizers.",style: TextStyle(fontFamily: 'Sansation',fontSize: 12.0),)
                              ],
                            )
                          ],
                        ),

                        ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image.asset('images/handwash.jpg'),
                        ),

                      ],
                    ),
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 10.0,left: 5.0,right: 5.0),
                height: 140.0,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(top:5.0,bottom: 5.0),
                  child: Card(
                    elevation: 6.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image.asset('images/mask.jpg'),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("Use masks",style: TextStyle(fontFamily: 'Pacifico'),)
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("People often wear masks \n"
                                    "to protect themselves, but we \n"
                                    "suggest a stronger public health\n"
                                    " rationale is source control to protect\n"
                                    " others from respiratory droplets.",style: TextStyle(fontFamily: 'Sansation',fontSize: 12.0),)
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 10.0,left: 5.0,right: 5.0),
                height: 140.0,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(top:5.0,bottom: 5.0),
                  child: Card(
                    elevation: 6.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Stop Hanshaking",style: TextStyle(fontFamily: 'Pacifico'),)
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("When you extend your hand,\n"
                                    " you’re extending a bioweapon.",style: TextStyle(fontFamily: 'Sansation',fontSize: 12.0),)
                              ],
                            )
                          ],
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image.asset('images/handShake.jpg'),
                        )
                      ],
                    ),
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 10.0,left: 5.0,right: 5.0),
                height: 140.0,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(top:5.0,bottom: 5.0),
                  child: Card(
                    elevation: 6.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image.asset('images/stayAtHome.jpg'),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("Stay at home",style: TextStyle(fontFamily: 'Pacifico'),)
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("Should stay home unless they\n"
                                    " need medical care. This helps \n"
                                    "prevent the illness from\n"
                                    " spreading to other people.",style: TextStyle(fontFamily: 'Sansation',fontSize: 12.0),)
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
