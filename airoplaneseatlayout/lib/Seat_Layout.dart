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
          child: Scrollbar(
            child: Container(
              color: Colors.white,
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
                          padding: const EdgeInsets.only(
                              top: 8.0, right: 0, left: 8),
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
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Admin",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 14)),
                                Text("British Airways",
                                    style: TextStyle(
                                        color: Colors.blue, fontSize: 16))
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Boarding Class",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 14)),
                              Text("Economic Class",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18))
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Passengers",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 14)),
                                Text("1",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14))
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Source",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 14)),
                                Text("LHR",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14))
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Destination",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 14)),
                                Text("JFK",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Purchased Summary",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14)),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Text("Premium Security Check-in",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14)),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Image(
                            image: AssetImage("images/british-pound.png"),
                            height: 18,
                            width: 18,
                          ),
                        ),
                        Text("5",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14))
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
                          Text("Total",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14)),
                          Padding(
                            padding: const EdgeInsets.only(left: 14),
                            child: Image(
                              image: AssetImage("images/british-pound.png"),
                              height: 18,
                              width: 18,
                            ),
                          ),
                          Text("5",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14)),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          "Would you like to add product(s) from below?",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15)),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.5,
                      child: Column(
                        children: <Widget>[
                          Expanded(
                              child: ListView.builder(
                                  itemCount: list.length,
                                  itemBuilder: (context, index) {
                                    return Card(
                                        elevation: 2,
                                        child: Row(
                                          children: <Widget>[
                                            Expanded(
                                              flex: 4,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.max,
                                                children: <Widget>[
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 12, top: 0),
                                                    child: Text(
                                                        "${list[index].title}",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 16)),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 12,
                                                            bottom: 12,
                                                            top: 5),
                                                    child: Container(
                                                      child: Text(
                                                        list[index].description,
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 16),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 8.0, bottom:30,top: 5),
                                                child: Container(
                                                  alignment: Alignment.topRight,
                                                  decoration: BoxDecoration(
                                                      color: Colors.grey[200],
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  40))),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 0.0,
                                                            right: 15,
                                                            top: 5,
                                                            bottom: 5),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: <Widget>[
                                                        Image(
                                                          image: AssetImage(
                                                              "images/british-pound.png"),
                                                          height: 18,
                                                          width: 18,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  top: 0.0),
                                                          child: Text(
                                                              "${list[index].value}"),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
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
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _showModal();
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  _showModal() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            color: Color(0xFF737373),
            child: Container(
              height: 260,
              decoration: BoxDecoration(
                  color: Theme.of(context).canvasColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Text(
                          "Select Payment Options",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                    ),
                    Container(
                      width: 200,
                      child: FlatButton(
                          color: Colors.black,
                          onPressed: () {},
                          child: Text("CARD",
                              style: TextStyle(
                                color: Colors.white,
                              )),
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                style: BorderStyle.solid,
                              ),
                              borderRadius: BorderRadius.circular(5))),
                    ),
                    Container(
                      width: 200,
                      child: FlatButton(
                          color: Colors.black,
                          onPressed: () {},
                          child: Text("STAFF OVERRIDE",
                              style: TextStyle(
                                color: Colors.white,
                              )),
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                style: BorderStyle.solid,
                              ),
                              borderRadius: BorderRadius.circular(5))),
                    ),
                    Container(
                      width: 200,
                      child: FlatButton(
                          color: Colors.black,
                          onPressed: () {},
                          child: Text("PRIVILEGE CARD",
                              style: TextStyle(
                                color: Colors.white,
                              )),
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                style: BorderStyle.solid,
                              ),
                              borderRadius: BorderRadius.circular(5))),
                    ),
                    Container(
                      width: 200,
                      child: FlatButton(
                          color: Colors.black,
                          onPressed: () {},
                          child: Text("COUPON CODE",
                              style: TextStyle(
                                color: Colors.white,
                              )),
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                style: BorderStyle.solid,
                              ),
                              borderRadius: BorderRadius.circular(5))),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}

List<SeatLayoutModal> list = <SeatLayoutModal>[
  const SeatLayoutModal(
      title: "No1 Lounge", description: "Express - 1.5 Hours", value: "10"),
  const SeatLayoutModal(
      title: "No1 Loungs", description: "-3 Hours", value: "15"),
  const SeatLayoutModal(
      title: "My Lounge", description: "Express 1.5 Hours", value: "5"),
  const SeatLayoutModal(
      title: "My Lounge", description: "-3 Hours", value: "12"),
  const SeatLayoutModal(
      title: "Chubroerre", description: "-No Champaigne", value: "5"),
  const SeatLayoutModal(
      title: "No1 Loungs", description: "-Discount 3 Hours", value: "5"),
];
