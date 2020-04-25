import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class FreeFood extends StatefulWidget {
  @override
  _FreeFoodState createState() => _FreeFoodState();
}

class _FreeFoodState extends State<FreeFood> {

  Future states;
  List stateData;

  @override
  void initState() {
    states = getData();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
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
          backgroundColor: Colors.deepPurple[800],
          elevation: 5.0,
          centerTitle: true,
          title: Text("Free Food",style: TextStyle(color: Colors.white),),
        ),
        body: FutureBuilder(
          future: states,
          builder: (BuildContext context,AsyncSnapshot snapshot){
            if(snapshot.connectionState==ConnectionState.waiting){
              return Center(child: CircularProgressIndicator());
            }
            return Stack(
              children: <Widget>[
                SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('images/testingLab.jpg'),
                      Image.asset('images/e.jpg'),
                      Image.asset('images/b.jpg')
                    ],
                  ),
                ),

                Container(
                  child: ListView.builder(
                    itemCount: stateData.length,
                    itemBuilder: (context,index){
                      return Container(
                        margin: EdgeInsets.all(10.0),
                        height: 120.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.orange[200],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: <Widget>[
                                    Text("State : ",style: TextStyle(fontWeight: FontWeight.w800),),
                                    Text("${snapshot.data[index]['state']}",style: TextStyle(fontWeight: FontWeight.w800),),
                                  ],
                                ),
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: <Widget>[
                                    Text("City : ",style: TextStyle(fontWeight: FontWeight.w800),),
                                    Text("${snapshot.data[index]['city']}"),
                                  ],
                                ),
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: <Widget>[
                                    Text("Contact : ",style: TextStyle(fontWeight: FontWeight.w800),),
                                    Text("${snapshot.data[index]['contact']}"),
                                  ],
                                ),
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: <Widget>[
                                    Text("Organisation : ",style: TextStyle(fontWeight: FontWeight.w800),),
                                    Text("${snapshot.data[index]['nameoftheorganisation']}"),
                                  ],
                                ),
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: <Widget>[
                                    Text("Phone no. : ",style: TextStyle(fontWeight: FontWeight.w800),),
                                    Text("${snapshot.data[index]['phonenumber']}"),
                                  ],
                                ),
                              ),

                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Future getData() async {
    var response = await http.get(Uri.parse("https://api.covid19india.org/resources/resources.json"));
    var extract = json.decode(response.body);
    List data;
    data = extract['resources'];
    setState(() {
      stateData = data;
    });
    print(data);
    return data;
  }
}
