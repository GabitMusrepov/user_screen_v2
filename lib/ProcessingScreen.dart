import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProcessingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
      height: 200,
      child: Card(
        child: Column(
          children: <Widget>[
            Container(
              height: 190,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: AssetImage('images/logo.png'),
                          radius:
                              30, //INPUT IMAGE OF SUBMMITER FROM KPMG DATABASE, based on USERNAME
                        ),
                        Divider(
                          height: 45,
                        ),
                        FlatButton( //PRESSING BUTTON SHALL RETURN THE USER TO THE MAIN SCREEN OF DETAILED VIEW (which is the first screen in WAITLIST TAB
                            onPressed: () {},
                            child: Text(
                              'Click for Details',
                              style: TextStyle(
                                  fontFamily: 'Uni',
                                  fontSize: 13,
                                  color: Colors.indigo[900]),
                            ))
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          'Destination',
                          style: TextStyle(
                              fontFamily: 'Uvi',
                              fontSize: 11,
                              color: Color.fromRGBO(130, 130, 130, 100)),
                        ),
                        Divider(
                          height: 10,
                        ),
                        Text(
                          'Alma-Ata', //INPUT DESTINATION FROM RAKETA
                          style: TextStyle(
                              fontFamily: 'Uvi',
                              fontSize: 15,
                              color: Colors.black),
                        ),
                        Divider(
                          height: 20,
                        ),
                        Text(
                          'Total Spent',
                          style: TextStyle(
                              fontFamily: 'Uvi',
                              fontSize: 11,
                              color: Color.fromRGBO(130, 130, 130, 100)),
                        ),
                        Divider(
                          height: 10,
                        ),
                        Text(
                          '1 500 000', //INPUT TOTAL SUM FROM RAKETA
                          style: TextStyle(
                              fontFamily: 'Uvi',
                              fontSize: 15,
                              color: Colors.black),
                        ),
                        Divider(
                          height: 20,
                        ),
                        Text(
                          'Submitted by',
                          style: TextStyle(
                              fontFamily: 'Uvi',
                              fontSize: 11,
                              color: Color.fromRGBO(130, 130, 130, 100)),
                        ),
                        Divider(
                          height: 10,
                        ),
                        Text(
                          'GMusrepov', //INPUT USERNAME OF SUBMITTER FROM RAKETA
                          style: TextStyle(
                              fontFamily: 'Uvi',
                              fontSize: 15,
                              color: Colors.black),
                        )
                      ],
                    ),
                    Container(
                      height: 200,
                      child: VerticalDivider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          'Project Code',
                          style: TextStyle(
                              fontFamily: 'Uvi',
                              fontSize: 11,
                              color: Color.fromRGBO(130, 130, 130, 100)),
                        ),
                        Divider(
                          height: 10,
                        ),
                        Text(
                          'PCA400600', //INPUT PROJECT CODE FROM RAKETA
                          style: TextStyle(
                              fontFamily: 'Uvi',
                              fontSize: 15,
                              color: Colors.black),
                        ),
                        Divider(
                          height: 20,
                        ),
                        Text(
                          'Recoverable',
                          style: TextStyle(
                              fontFamily: 'Uvi',
                              fontSize: 11,
                              color: Color.fromRGBO(130, 130, 130, 100)),
                        ),
                        Divider(
                          height: 10,
                        ),
                        Text(
                          '(56 000)', //INPUT SUM TO BE RECOVERED (in green color without (), or TO BE DEDUCTED (in red with () FROM RAKETA
                          style: TextStyle(
                              fontFamily: 'Uvi',
                              fontSize: 15,
                              color: Colors.red),
                        ),
                        Divider(
                          height: 20,
                        ),
                        Text(
                          'Approver',
                          style: TextStyle(
                              fontFamily: 'Uvi',
                              fontSize: 11,
                              color: Color.fromRGBO(130, 130, 130, 100)),
                        ),
                        Divider(
                          height: 10,
                        ),
                        Text(
                          'SZhumashev', //INPUT USERNAME OF APPROVER FROM RAKETA
                          style: TextStyle(
                              fontFamily: 'Uvi',
                              fontSize: 15,
                              color: Colors.black),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
