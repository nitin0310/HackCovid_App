import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Countries extends StatefulWidget {
  @override
  _CountriesState createState() => _CountriesState();
}

class _CountriesState extends State<Countries> {

  List countriesList;
  String selectedCountry,selectedState;
  bool showCountryList=false,showStateList=false;
  Future<List> countries;
  String newConfirmed,totalConfirmed,newDeaths,totalDeaths,newRecovered,totalRecovered;
  String newConfirmedS,totalConfirmedS,newDeathsS,totalDeathsS,newRecoveredS,totalRecoveredS;

  @override
  void initState() {
    countries = getCountryList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white70,
        floatingActionButton: FloatingActionButton.extended(
          splashColor: Colors.white,
        backgroundColor: Colors.deepPurple[800],
        onPressed: (){
            if(showCountryList==true){
              setState(() {
                showCountryList=false;
              });
            }else{
              setState(() {
                showCountryList=true;
              });
            }
        },
        label: Text("Select Country")
        ),
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[800],
          title: Text("Check Data"),
          centerTitle: true,
        ),

        body: Stack(
          children: [
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
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
                                  Text("${newConfirmed}",style: TextStyle(
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
                                  Text("${totalConfirmed}",style: TextStyle(
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
                                    Text("${newDeaths}",style: TextStyle(
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
                                    Text("${totalDeaths}",style: TextStyle(
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
                                  Text("${newRecovered}",style: TextStyle(
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
                                  Text("${totalRecovered}",style: TextStyle(
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
                 ),

                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0.0,left: 10.0),
                    child: Row(
                      children: <Widget>[
                        Text("Country : ",style: TextStyle(fontFamily: 'Sansation',fontSize: 25.0),),
                        Text("${selectedCountry}",style: TextStyle(fontFamily: 'Sansation',fontSize: 23.0,color: Colors.white),),
                      ],
                    ),
                  ),
                  ///////////////////////////////////////////////////////////////////////////////////////////////////
                ],
              ),

            Positioned(
              top: showCountryList?1.0:-400,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(25.0),bottomLeft: Radius.circular(25.0)),
                  color: Colors.white,
                ),
                width: (MediaQuery.of(context).size.width),
                height: 400.0,
                child: FutureBuilder(
                  future: countries,
                    builder: (BuildContext context,AsyncSnapshot<List> snapshot){
                      if(snapshot.connectionState == ConnectionState.waiting){
                        return Center(child: CircularProgressIndicator());
                      }
                      return ListView.builder(
                        itemCount: snapshot.data.length,
                        itemBuilder: (context,index){
                          return Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: GestureDetector(
                              onTap: (){
                                selectedCountry = snapshot.data[index]['country'].toString();
                                fetchData(selectedCountry);
                                print(selectedCountry);
                                setState(() {
                                  showCountryList=false;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.orange[100],
                                  borderRadius: BorderRadius.circular(25.0)
                                ),
                                height: 60.0,
                                child: Center(
                                  child: Text("${snapshot.data[index]['country']}"),
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                ),
              ),
            ),
            

          ],
        )
      ),
    );
  }


  Future<List> getCountryList() async {
    var response = await http.get(Uri.encodeFull("https://gist.githubusercontent.com/ebaranov/41bf38fdb1a2cb19a781/raw/fb097a60427717b262d5058633590749f366bd80/gistfile1.json"));
    var extract = json.decode(response.body);
    countriesList = extract['countries'];
    print(countriesList);
    return countriesList;
  }


  Future fetchData(String value) async{
    var response = await http.get(Uri.encodeFull("https://api.covid19api.com/summary"));
    var extract = json.decode(response.body);
    int index;
    for(int i=0;i<countriesList.length;i++){
      if(extract['Countries'][i]['Country']==value){
        index = i;
      }
    }
    print(index.toString());
    var data = extract['Countries'];
    print(data[index].toString());

    setState(() {
      this.newConfirmed = data[index]['NewConfirmed'].toString();
      this.totalConfirmed = data[index]['TotalConfirmed'].toString();
      this.newDeaths = data[index]['NewDeaths'].toString();
      this.totalDeaths = data[index]['TotalDeaths'].toString();
      this.newRecovered = data[index]['NewRecovered'].toString();
      this.totalRecovered = data[index]['TotalRecovered'].toString();
    });

  }

}

