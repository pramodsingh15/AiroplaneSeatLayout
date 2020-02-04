import 'package:flutter/material.dart';

class SeatLayoutClass extends StatefulWidget {
  @override
  _SeatLayoutClassState createState() => _SeatLayoutClassState();
}

class _SeatLayoutClassState extends State<SeatLayoutClass> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("SeatLayout"),
        ),
        body: Container(
          child: Card(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Row(
                      children: <Widget>[
                        Text(
                          "Unqualified",
                          style: TextStyle(fontSize: 25),
                        ),
                        Icon(Icons.notifications,color: Colors.red,),
                      ],
                    )),
                    Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top:8.0,right: 0,left: 8),
                          child: Text(
                      "Your Class is not valid for the Service",
                      style: TextStyle(fontSize: 10),
                    ),
                        ))
                  ],
                ),
                Divider(
                  height: 5,
                  thickness: 0.5,
                  color: Colors.grey,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
