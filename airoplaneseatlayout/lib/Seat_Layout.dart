import 'package:airoplaneseatlayout/seatlayout_modal.dart';
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
        body: SingleChildScrollView(
          child: Container(
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                          Icon(
                            Icons.notifications,
                            color: Colors.red,
                          ),
                        ],
                      )),
                      Expanded(
                          child: Padding(
                        padding:
                            const EdgeInsets.only(top: 8.0, right: 0, left: 8),
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
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Admin"),
                            Text("British Airways")
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Boarding Class"),
                            Text("Economic Class")
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[Text("Passengers"), Text("1")],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[Text("Source"), Text("LHR")],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[Text("Destination"), Text("JFK")],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Purchased Summary"),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Text("Premium Security Check-in"),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Image(
                          image: AssetImage("images/british-pound.png"),
                          height: 18,
                          width: 18,
                        ),
                      ),
                      Text("5")
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Total"),
                        Padding(
                          padding: const EdgeInsets.only(left: 9),
                          child: Image(
                            image: AssetImage("images/british-pound.png"),
                            height: 18,
                            width: 18,
                          ),
                        ),
                        Text("5"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Would you like to add product(s) from below?"),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    child: Column(
                      
                      children: <Widget>[
                        Expanded(
                            child: ListView.builder(
                                itemCount: list.length,
                                itemBuilder: (context, index) {
                                  return Card(
                                      child: Row(
                                    children: <Widget>[
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.max,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text("${list[index].title}"),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left:8.0,bottom: 5),
                                            child: Container(
                                              child: Text(
                                                list[index].description,
                                                style: TextStyle(fontSize: 13),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                   Row(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 9),
                                              child: Image(
                                                image: AssetImage(
                                                    "images/british-pound.png"),
                                                height: 18,
                                                width: 18,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Text("${list[index].value}"),
                                            ),
                                          ],
                                        ),
                                      
                                    ],
                                  ));
                                }))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

List<SeatLayoutModal> list = <SeatLayoutModal>[
  const SeatLayoutModal(
      title: "No1 Lounge", description: "Express - 1.5 Hours", value: "10"),
  const SeatLayoutModal(
      title: "No1 Loungs", description: "3 Hours", value: "15"),
  const SeatLayoutModal(
      title: "My Lounge", description: "Express 1.5 Hours", value: "5"),
  const SeatLayoutModal(
      title: "My Lounge", description: "3 Hours", value: "12"),
  const SeatLayoutModal(
      title: "Chubroerre", description: "No Champaigne", value: "5"),
  const SeatLayoutModal(
      title: "No1 Loungs", description: "Discount 3 Hours", value: "5"),
];
