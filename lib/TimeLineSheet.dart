import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_container/responsive_container.dart';

import 'Design.dart';

class TimeLineSheet extends StatefulWidget {
  const TimeLineSheet({
    Key key,
    @required this.height,
  }) : super(key: key);

  final double height;

  @override
  _TimeLineSheetState createState() => _TimeLineSheetState();
}

class _TimeLineSheetState extends State<TimeLineSheet> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
        maxChildSize: 1.0,
        minChildSize: 0.02,
        initialChildSize: 0.03,
        builder: (context, scrollableController) {
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            controller: scrollableController,
            child: Container(
              height: widget.height,
              decoration: BoxDecoration(
                  borderRadius: bottomsheetRadius,
                  color: Colors.black
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: <Widget>[
                    Center(
                        child: ResponsiveContainer(
                          widthPercent: 25.0,
                          heightPercent: 1.0,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: Colors.white,

                            ),
                          ),
                        )
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("TimeLine",style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 30.0,
                              color: Colors.white
                          )),
                          Icon(Icons.arrow_upward,color: Colors.white,size: 30.0,),
                        ],
                      ),
                    ),
                    sizedBox,
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              CircleAvatar(
                                backgroundColor: Colors.indigo.shade800,
                                radius: 10.0,
                                child: Center(
                                  child: Text("1",style: TextStyle(
                                      color: Colors.white
                                  ),),
                                ),
                              ),
                              sizedboxWidth,
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: <Widget>[
                                  Text("Buy Tickets",style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w900
                                  ),),
                                  Text("Buy Airplan tickets",style: TextStyle(
                                    color: Colors.grey,

                                  ),),
                                  Text("For €559 ",style: TextStyle(
                                    color: Colors.grey,
                                  ),),
                                ],
                              ),
                            ],
                          ),
                          Text("8:25",style: TextStyle(color: Colors.grey),)
                        ],
                      ),
                    ),
                    sizedBox,
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                        Row(
                          children: <Widget>[
                            ResponsiveContainer(
                              heightPercent: 30.0,
                              widthPercent: 5.0,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                  color: Colors.indigo.shade800,
                                ),
                                padding: EdgeInsets.only(top:10.0,bottom: 10.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text("2",style: TextStyle(
                                        color: Colors.white
                                    ),),
                                    Text("3",style: TextStyle(
                                        color: Colors.white
                                    ),),
                                  ],
                                ),
                              ),
                            ),sizedboxWidth,
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: <Widget>[
                                Text("Products",style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w900
                                ),),sizedBox,
                                Text("Take the product\nfrom my list",style: TextStyle(
                                  color: Colors.grey,
                                ),),sizedBox,
                                ResponsiveContainer(
                                  widthPercent: 60.0,
                                  heightPercent: 20.0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20.0),
                                        color: Colors.grey.shade200
                                    ),
                                    padding: EdgeInsets.all(10.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment: CrossAxisAlignment.baseline,
                                      textBaseline: TextBaseline.alphabetic,
                                      children: <Widget>[
                                        Text("1.Orange",style: TextStyle(
                                          color: Colors.grey,
                                        ),),
                                        Text("2. Watermelon",style: TextStyle(
                                          color: Colors.grey,
                                        ),),
                                        Text("3. Grapefruit",style: TextStyle(
                                          color: Colors.grey,
                                        ),),
                                        Text("4. Chocolate",style: TextStyle(
                                          color: Colors.grey,
                                        ),),
                                      ],),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                          Text("9:25",style: TextStyle(color: Colors.grey),)
                        ],
                      ),
                    ),
                    sizedBox,
                    Padding(
                      padding: const EdgeInsets.only(left:30.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("Dont forget to take\nthe monet",style: TextStyle(
                          color: Colors.grey,
                        ),),
                      ),
                    ),
                    sizedBox,
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              CircleAvatar(
                                backgroundColor: Colors.indigo.shade800,
                                radius: 10.0,
                                child: Center(
                                  child: Text("4",style: TextStyle(
                                      color: Colors.white
                                  ),),
                                ),
                              ),
                              sizedboxWidth,
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: <Widget>[
                                  Text("Walk with dog",style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w900
                                  ),),
                                  Text("Walk on the street\nwith my favourite dog.",style: TextStyle(
                                    color: Colors.grey,

                                  ),),

                                ],
                              ),
                            ],
                          ),
                          Text("8:25",style: TextStyle(color: Colors.grey),)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }
    );
  }
}