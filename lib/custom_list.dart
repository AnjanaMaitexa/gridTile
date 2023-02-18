import 'package:flutter/material.dart';
import 'package:gridtile/companyStock.dart';

void main() => runApp(MyApp());

  class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() {
  // TODO: implement createState
  return _MyAppState();
  }
  }

  class _MyAppState extends State {
  List stocksList = [
  CompanyStocks(name: "Facebook",icon:"images/pic.jpg"),
  CompanyStocks(name: "A10 NETWORKS INC.",icon:"images/pic.jpg"),
  CompanyStocks(name: "Intel Corp",icon:""),
  CompanyStocks(name: "HP Inc",icon:"images/pic.jpg"),
  CompanyStocks(name: "Advanced Micro Devices Inc.,icon:"""),
  CompanyStocks(name: "Apple Inc",icon:"images/pic.jpg"),
  ];

/*
 List stockList = [ "Facebook", "A10 NETWORKS INC", "Apple", "Advanced Micro Devices Inc.","Intel Corp","Intel Corp"];
  List<String> icons = ["images/pic.jpg","images/pic.jpg","images/pic.jpg","images/pic.jpg"];

*/
/* Widget _listItem( String name ,String icon) {
    var initial = name[0].toUpperCase();
    if (icon.length > 0) {
      initial = "";
    }
  }
  return Padding(padding: EdgeInsets.all(8.0),
      child: ListTile(
        title: Text(name,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        leading: CircleAvatar(
          backgroundColor: Colors.green,
          backgroundImage:AssetImage(icon) ,
          child:Text(initial,style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20)) ,
        ),


      ),
    );*/
  var initial="";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("List View Builder"),
        ),
        body: ListView.builder(
          itemCount: stocksList.length,
          itemBuilder: (context, index) {
            return Card(
             // child:_listItem( stocksList[index].name,stocksList[index].icon),

             child: Padding(
                padding: EdgeInsets.all(10),
                child: ListTile(
                  title: Text(
                    stocksList[index].name,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                    leading: CircleAvatar(
                      backgroundColor: Colors.green,
                      backgroundImage:AssetImage(stocksList[index].icon) ,
                      // initial =stocksList[index].name[0].toUpperCase();
                      // if (icon.length > 0) {
                      //   initial = "";
                      // }
                      child:Text(initial,style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20)) ,

                    ),

                ),
              ),
            );

            },

        ),

      ),
    );

  }
  }
