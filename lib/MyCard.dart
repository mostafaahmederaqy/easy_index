import 'package:flutter/material.dart';
class MyCard extends StatefulWidget {
  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  int s = 0;


  @override
  Widget build(BuildContext context) {
    return
      InkWell(
        onTap: () {
          showBottomSheet(
              context: context,
              builder:
                  (context) =>
                  StatefulBuilder(
                      builder: (BuildContext context,
                          StateSetter state) {
                        return Container(
                            height: MediaQuery
                                .of(context)
                                .size
                                .height / 2,
                            width: MediaQuery
                                .of(context)
                                .size
                                .width,
                            child: Center(
                              child: Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceAround,
                                  children: <Widget>[
                                    InkWell(
                                      onTap: () {
                                        state(() {
                                          s++;
                                        });
                                      },
                                      child: Icon(
                                          Icons.add
                                      ),
                                    ),
                                    Text(
                                        s.toString()
                                    ),
                                    InkWell(
                                        onTap: () {
                                          state(() {
                                            if (s <= 0) {
                                              s = 0;
                                            } else {
                                              s--;
                                            }
                                          });
                                        },
                                        child: Icon(Icons.minimize))
                                  ],
                                ),
                              ),
                            ));
                      }

                  )

          );
        },
        child: Container(
          height: 250,
          width: MediaQuery
              .of(context)
              .size
              .width,
          child: Card(
            color: Colors.red,
          ),
        ),
      );
  }
}