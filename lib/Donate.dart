import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Donate extends StatefulWidget {
  @override
  _DonateState createState() => _DonateState();
}

class _DonateState extends State<Donate> {
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
          backgroundColor: Colors.deepPurple[800],
          centerTitle: true,
          title: Text("Donate",
            style: TextStyle(color: Colors.white),
          ),
        ),

        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [

                Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10.0 ),
                      height: 200,
                        width: 200.0,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Card(
                            elevation: 5.0,
                              child: Image.asset("images/a.jpg")
                          ),
                        )
                    ),
                  ],
                ),

                SizedBox(
                  height: 20.0,
                ),
                
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    initialValue: "https://covid19responsefund.org/",
                    readOnly: true,
                    decoration: InputDecoration(
                      helperText: "Copy the WHO link",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 10.0,
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    initialValue: "https://www.pmcares.gov.in/en/",
                    readOnly: true,
                    decoration: InputDecoration(
                      helperText: "India : PM Cares Fund link",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 10.0,
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    initialValue: "https://razorpay.com/links/covid19",
                    readOnly: true,
                    decoration: InputDecoration(
                      helperText: "Copy RazorPay link",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
