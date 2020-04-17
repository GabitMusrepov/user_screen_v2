import 'package:flutter/material.dart';

class WaitScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Align(
                child: Image.asset(
                  'images/Card4.png',
//                  width: 450.5,
                  height: 250,
                ),
//                alignment: Alignment.topCenter,
              ),
              Container(
                margin: EdgeInsets.only(left: 25, top: 24),
                child: Icon(
                  Icons.flight_takeoff,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 85, top: 30),
                child: Text(
                  "ALMA-ATA",
                  style: TextStyle(
                      fontFamily: 'KPMG_Light',
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 25, top: 125),
                child: Text(
                  "Total:",
                  style: TextStyle(
                      fontFamily: 'KPMG_Light',
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 80, top: 123),
                child: Text(
                  "*545 789* **** ****", //THIS SHOULD BE changed according to TOTAL AMOUNT
                  style: TextStyle(
                      fontFamily: 'Bahn', fontSize: 25, color: Colors.white),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 28, top: 153),
                child: Text(
                  "KZT", //THIS SHOULD BE changed according to TOTAL AMOUNT
                  style: TextStyle(
                      fontFamily: 'KPMG_Light',
                      fontSize: 20,
                      color: Colors.white),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 25, top: 220),
                child: Text(
                  "Trip start:",
                  style: TextStyle(
                      fontFamily: 'KPMG_Light',
                      fontSize: 20,
                      color: Colors.white),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 75, top: 217),
                child: Text(
                  "01/01", //THIS SHOULD BE changed according to DATE
                  style: TextStyle(
                      fontFamily: 'Bahn', fontSize: 20, color: Colors.white),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 142, top: 220),
                child: Text(
                  "Trip end:",
                  style: TextStyle(
                      fontFamily: 'KPMG_Light',
                      fontSize: 20,
                      color: Colors.white),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 190, top: 217),
                child: Text(
                  "31/12", //THIS SHOULD BE changed according to DATE
                  style: TextStyle(
                      fontFamily: 'Bahn', fontSize: 20, color: Colors.white),
                ),
              ),
            ],
          ),
          Flexible(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[100],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(18))),
                            child: Icon(
                              Icons.credit_card,
                              color: Colors.black,
                            ),
                            padding: EdgeInsets.all(12),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Per Diem",
                                style: TextStyle(
                                  fontFamily: 'Uni',
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              )
                            ],
                          )),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                '45 000',
                                style: TextStyle(
                                  fontFamily: 'Bahn',
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ), //This SHOULD BE CHANGED TO RAKETA
                            ],
                          ),
                        ],
                      ),
                      Divider(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[100],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(18))),
                            child: Icon(
                              Icons.hotel,
                              color: Colors.black,
                            ),
                            padding: EdgeInsets.all(12),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Accomodation',
                                style: TextStyle(
                                  fontFamily: 'Uni',
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              )
                            ],
                          )),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                '168 000',
                                style: TextStyle(
                                  fontFamily: 'Bahn',
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ), //This SHOULD BE CHANGED TO RAKETA
                            ],
                          ),
                        ],
                      ),
                      Divider(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[100],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(18))),
                            child: Icon(
                              Icons.flight,
                              color: Colors.black,
                            ),
                            padding: EdgeInsets.all(12),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Travel',
                                style: TextStyle(
                                  fontFamily: 'Uni',
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              )
                            ],
                          )),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                '258 930',
                                style: TextStyle(
                                  fontFamily: 'Bahn',
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ), //This SHOULD BE CHANGED TO RAKETA
                            ],
                          ),
                        ],
                      ),
                      Divider(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[100],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(18))),
                            child: Icon(
                              Icons.monetization_on,
                              color: Colors.green,
                            ),
                            padding: EdgeInsets.all(12),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Out of Pocket',
                                style: TextStyle(
                                  fontFamily: 'Uni',
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              )
                            ],
                          )),
                          Flexible(
                            child: TextFormField(
                              //THIS AMOUNT MUST BE INCLUDED IN TOTAL CALCULATION
                              decoration: InputDecoration(
                                labelText: 'Add Amount (if any)',
                                labelStyle: TextStyle(
                                  //if the field is not FILLED, its OK
                                  fontFamily: 'Uni',
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                                fillColor: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                      Divider(
                        height: 10,
                      ),
                    ],
                  ),
                );
              },
              shrinkWrap: true,
              itemCount: 1,
              padding: EdgeInsets.all(0),
              controller: ScrollController(keepScrollOffset: false),
            ),
          ),
        ],
      ),
    );
  }
}
