import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class GlobalData extends StatefulWidget {

  @override
  _GlobalDataState createState() => _GlobalDataState();
}

class _GlobalDataState extends State<GlobalData> {
  String newConfirmed,totalConfirmed,newDeaths,totalDeaths,newRecovered,totalRecovered;

  @override
  void initState() {
    fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 180,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: EdgeInsets.all(5.0),
              height: 130.0,
              width: 140.0,
              child: Card(
                elevation: 5.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.error,color: Colors.redAccent,),
                      newConfirmed==null?CircularProgressIndicator():Text("${newConfirmed}",style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w800,
                          color: Colors.redAccent
                      ),),
                      Text("New Confirmed",style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w900,
                          color: Colors.grey
                      ),)
                    ],
                  ),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0)
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.all(5.0),
              height: 130.0,
              width: 140.0,
              child: Card(
                elevation: 5.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.error,color: Colors.green[300],),
                      totalConfirmed==null?CircularProgressIndicator():Text("${totalConfirmed}",style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w800,
                          color: Colors.green[500]
                      ),),
                      Text("Total Confirmed",style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w900,
                          color: Colors.grey
                      ),)
                    ],
                  ),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0)
                ),
              ),
            ),

            GestureDetector(
              onTap: (){

              },
              child: Container(
                margin: EdgeInsets.all(5.0),
                height: 130.0,
                width: 130.0,
                child: Card(
                  elevation: 5.0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.error,color: Colors.red[800],),
                        newDeaths==null?CircularProgressIndicator():Text("${newDeaths}",style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.w800,
                            color: Colors.red[800]
                        ),),
                        Text("New Deaths",style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w900,
                            color: Colors.grey
                        ),)
                      ],
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0)
                  ),
                ),
              ),
            ),

            GestureDetector(
              onTap: (){

              },
              child: Container(
                margin: EdgeInsets.all(5.0),
                height: 130.0,
                width: 130.0,
                child: Card(
                  elevation: 5.0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.error,color: Colors.lightBlueAccent,),
                        totalDeaths==null?CircularProgressIndicator():Text("${totalDeaths}",style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.w800,
                            color: Colors.lightBlueAccent
                        ),),
                        Text("Total Deaths",style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w900,
                            color: Colors.grey
                        ),)
                      ],
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0)
                  ),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.all(5.0),
              height: 130.0,
              width: 140.0,
              child: Card(
                elevation: 5.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.error,color: Colors.redAccent,),
                      newRecovered==null?CircularProgressIndicator():Text("${newRecovered}",style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w800,
                          color: Colors.redAccent
                      ),),
                      Text("New Recovered",style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w900,
                          color: Colors.grey
                      ),)
                    ],
                  ),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0)
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.all(5.0),
              height: 130.0,
              width: 140.0,
              child: Card(
                elevation: 5.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.error,color: Colors.green[300],),
                      totalRecovered==null?CircularProgressIndicator():Text("${totalRecovered}",style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w800,
                          color: Colors.green[500]
                      ),),
                      Text("Total Recovered",style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w900,
                          color: Colors.grey
                      ),)
                    ],
                  ),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0)
                ),
              ),
            ),
          ],
        )
    );
  }

  Future fetchData() async{
    var response = await http.get(Uri.encodeFull("https://api.covid19api.com/summary"));
    var extract = json.decode(response.body);
    var data = extract['Global'];

    setState(() {
      this.newConfirmed = data['NewConfirmed'].toString();
      this.totalConfirmed = data['TotalConfirmed'].toString();
      this.newDeaths = data['NewDeaths'].toString();
      this.totalDeaths = data['TotalDeaths'].toString();
      this.newRecovered = data['NewRecovered'].toString();
      this.totalRecovered = data['TotalRecovered'].toString();
    });

  }
}
