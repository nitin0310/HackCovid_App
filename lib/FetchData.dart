import 'dart:convert';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;


class FetchData extends StatefulWidget {
  @override
  _FetchDataState createState() => _FetchDataState();
}

class _FetchDataState extends State<FetchData> {

  String selected;
  List _items,_codes;
  int length=0;
  Future<List> countries;
  @override
  void initState() {
    
    super.initState();
  }

  @override
  void dispose() {

    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(),
        ),
    );
  }
  
  
  Future<List> getData() async {
  var response =await http.get(Uri.encodeFull("https://api.printful.com/countries"));
  List data;
  var extract = json.decode(response.body);
  data = extract['result'];
  setState(() {
    length = data.length;
    _items = data;
  });
  }

  Future<List> getCity() async {
    var response =await http.get(Uri.encodeFull("https://api.printful.com/countries"));
    List data;
    var extract = json.decode(response.body);
    data = extract['result'];
    setState(() {
      _codes = data;
      print(_codes[0]['code']);
    });
  }
  
}
