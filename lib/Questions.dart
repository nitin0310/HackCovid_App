import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Questions extends StatefulWidget {
  @override
  _QuestionsState createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {



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
          title: Text("Frequent questions..",
            style: TextStyle(color: Colors.white),
          ),
        ),

        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Wrap(
                  children: <Widget>[
                    Text(" \n"),
                    Text("What is a coronavirus?",style: TextStyle(fontSize: 20.0,color: Colors.blue[800]),),
                    Text(" \n"),
                    Text("Coronaviruses are a large family of viruses that are known to cause illness ranging from the common cold to more severe diseases such as Middle East Respiratory Syndrome (MERS) and Severe Acute Respiratory Syndrome (SARS).",style: TextStyle(fontSize: 16.0),),
                    Text(" \n"),
                    Text("What is a novel coronavirus?",style: TextStyle(fontSize: 20.0,color: Colors.blue[800]),),
                    Text(" \n"),
                    Text("A novel coronavirus (CoV) is a new strain of coronavirus that has not been previously identified in humans.",style: TextStyle(fontSize: 16.0),),
                    Text(" \n"),
                    Text("What are the symptoms of someone infected with a coronavirus?",style: TextStyle(fontSize: 20.0,color: Colors.blue[800]),),
                    Text(" \n"),
                    Text("It depends on the virus, but common signs include respiratory symptoms, fever, cough, shortness of breath, and breathing difficulties. In more severe cases, infection can cause pneumonia, severe acute respiratory syndrome, kidney failure and even death.",style: TextStyle(fontSize: 16.0),),
                    Text(" \n"),
                    Text("Can coronaviruses be transmitted from person to person?",style: TextStyle(fontSize: 20.0,color: Colors.blue[800]),),
                    Text(" \n"),
                    Text("Yes, some coronaviruses can be transmitted from person to person, usually after close contact with an infected patient, for example, in a household workplace, or health care centre.",style: TextStyle(fontSize: 16.0),),
                    Text(" \n"),
                    Text("Is there a vaccine for a novel coronavirus?",style: TextStyle(fontSize: 20.0,color: Colors.blue[800]),),
                    Text(" \n"),
                    Text("When a disease is new, there is no vaccine until one is developed. It can take a number of years for a new vaccine to be developed.",style: TextStyle(fontSize: 16.0),),
                    Text(" \n"),
                    Text("Are health workers at risk from a novel coronavirus?",style: TextStyle(fontSize: 20.0,color: Colors.blue[800]),),
                    Text(" \n"),
                    Text("Yes, they can be, as health care workers come into contact with patients more often than the general public WHO recommends that health care workers consistently apply appropriate",style: TextStyle(fontSize: 16.0),),

                  ],
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}
