import 'package:flutter/material.dart';
import 'package:gridtile/companyStock.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String title = 'Circle Avatar';

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: title,
    theme: ThemeData(primarySwatch: Colors.deepOrange),
    home: MainPage(title: title),
  );
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List stocksList = [
    CompanyStocks(name: "Facebook",icon:"images/pic.jpg"),
    CompanyStocks(name: "A10 NETWORKS INC.",icon:"images/pic.jpg"),
    CompanyStocks(name: "Intel Corp",icon:""),
    CompanyStocks(name: "HP Inc",icon:"images/pic.jpg"),
    CompanyStocks(name: "Advanced Micro Devices Inc.",icon:""),
    CompanyStocks(name: "Apple Inc",icon:"images/pic.jpg"),
  ];
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text(widget.title),
    ),
    body:  ListView.builder(
      itemCount: stocksList.length,
      itemBuilder: (context,index){
        return Card(
             child: buildListTile(
                title:   stocksList[index].name,
                image: AssetImage(  stocksList[index].icon,),

            ),
        );
      },


    ),
  );

  Widget buildListTile({
    required String title,
    ImageProvider? image,
  }) =>
      ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: CircleAvatar(
          backgroundColor: Colors.cyan[100],
          backgroundImage: image,
          foregroundColor: Colors.white,
          radius: 48,
  onBackgroundImageError: image != null
              ? (e, stackTrace) {
            print('e: ${e}');
          }
              : null,
         child: image == ""
              ? Text(
            title[0].toUpperCase(),
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
          )
           : Container(height: 0, width: 0),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      );

}