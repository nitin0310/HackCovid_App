import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Symptoms extends StatefulWidget {
  @override
  _SymptomsState createState() => _SymptomsState();
}

class _SymptomsState extends State<Symptoms> {
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
          title: Text("Symptoms",style: TextStyle(color: Colors.white),),
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
                          child: Image.asset('images/sym1.jpg'),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("Nasal congestion",style: TextStyle(fontFamily: 'Pacifico'),)
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("If a person feels congestion or\n"
                                    "experiences a runny nose these \ncould"
                                    " be early symptoms of a \npossible"
                                    " COVID-19 infection.",style: TextStyle(fontFamily: 'Sansation',fontSize: 12.0),)
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
                                Text("Tiredness",style: TextStyle(fontFamily: 'Pacifico'),)
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Fatigue is a common symptom\n"
                                    " of many medical conditions\n"
                                    " that range in severity from\n"
                                    " mild to serious.",style: TextStyle(fontFamily: 'Sansation',fontSize: 12.0),)
                              ],
                            )
                          ],
                        ),

                        ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image.asset('images/tiredness.jpg'),
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
                          child: Image.asset('images/fever.jpg'),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("Fever",style: TextStyle(fontFamily: 'Pacifico'),)
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("The Centers for Disease \n"
                                    "Control and Prevention "
                                    "considers\n a reading of 100.4"
                                    " degrees\n Fahrenheit a fever.",style: TextStyle(fontFamily: 'Sansation',fontSize: 12.0),)
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
                                Text("Dry cough",style: TextStyle(fontFamily: 'Pacifico'),)
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Basically, a dry cough \n"
                                    "is one where no mucus or \n"
                                    "phlegm is produced with the cough",style: TextStyle(fontFamily: 'Sansation',fontSize: 12.0),)
                              ],
                            )
                          ],
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image.asset('images/drycough.jpg'),
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
                          child: Image.asset('images/sorethroat.jpg'),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("Sore throat",style: TextStyle(fontFamily: 'Pacifico'),)
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("A sore throat is pain"
                                    ", \nscratchiness or irritation\n"
                                    " of the throat that often\n"
                                    " worsens when you swallow.",style: TextStyle(fontFamily: 'Sansation',fontSize: 12.0),)
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
