import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root
  // of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "My Favorite Music",
        theme: new ThemeData(primarySwatch: Colors.green),
        debugShowCheckedModeBanner: false,
        home: new ListViewBuilder());
  }
}

class ListViewBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List name = [
      "IDOL",
      "Some soyou",
      "DAINAMAI",
      "Why แทยอน",
      "Wings BTS"
    ];
    final List star = [5, 4, 3, 4, 5];
    final List star_String = ["5", "4", "3", "4", "5"];
    return Scaffold(
        appBar: AppBar(title: Text("My Favorite Music")),
        body: Container(
          child: ListView.builder(
            itemCount: 5,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                margin: EdgeInsets.symmetric(vertical: 1),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name[index],
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          for (var i = 0; i < star[index]; i++)
                            new IconTheme(
                              data: new IconThemeData(
                                  color: Color.fromARGB(255, 255, 74, 74)),
                              child: new Icon(
                                Icons.star,
                                size: 30,
                              ), // I want to iterate this "star icon" for reviews.ratings.length times
                            ),
                          SizedBox(width: 50),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                star_String[index],
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                ' / 5',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.grey[500],
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ));
  }
}
