import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_container/responsive_container.dart';

import 'Design.dart';

class AboutSheet extends StatefulWidget {
  const AboutSheet({
    Key key,
    @required this.height,
  }) : super(key: key);

  final double height;

  @override
  _AboutSheetState createState() => _AboutSheetState();
}

class _AboutSheetState extends State<AboutSheet> {

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
        maxChildSize: 1.0,
        minChildSize: 0.025,
        initialChildSize: 0.07,
        builder: (context, scrollableController)
        {
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            controller: scrollableController,
            child: Container(
                height: widget.height,
                decoration: BoxDecoration(
                  borderRadius: bottomsheetRadius,
                  color: Colors.blueGrey.shade50,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: <Widget>[
                      ResponsiveContainer(
                        widthPercent: 25.0,
                        heightPercent: 1.0,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("About",style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 30.0
                            )),
                            Icon(Icons.arrow_upward,color: Colors.black,size: 30.0,),
                          ],
                        ),
                      ),
                      CircleAvatar(backgroundColor: Colors.indigo,radius: 40.0,),
                      sizedBox,
                      Text("Randy wade",style: TextStyle(
                          color: Colors.indigo,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500
                      ),),
                      sizedBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          CircularProfileAvatar(
                            "", backgroundColor: Colors.grey.shade200,
                            elevation: 5.0,
                            radius: 30.0,
                            child: Center(
                              child: FaIcon(FontAwesomeIcons.facebook,color: Colors.indigo,),
                            ),
                          ),
                          CircularProfileAvatar(
                            "", backgroundColor: Colors.grey.shade200,
                            elevation: 5.0,
                            radius: 30.0,
                            child: Center(
                              child: FaIcon(FontAwesomeIcons.instagram,color: Color(0xFFE1306C),),
                            ),
                          ),
                          CircularProfileAvatar(
                            "", backgroundColor: Colors.grey.shade200,
                            elevation: 5.0,
                            radius: 30.0,
                            child: Center(
                              child: FaIcon(FontAwesomeIcons.twitter,color: Colors.blue,),
                            ),
                          ),
                          CircularProfileAvatar(
                            "", backgroundColor: Colors.grey.shade200,
                            elevation: 5.0,
                            radius: 30.0,
                            child: Center(
                              child: FaIcon(FontAwesomeIcons.whatsapp,color: Color(0xFF4FCE5D)),
                            ),
                          ),
                        ],
                      ),
                      sizedBox,
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text("Biography",style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 30.0
                        )),
                      ),
                     sizedBox,
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: <Widget>[
                         Column(
                             children: <Widget>[
                               CircularProfileAvatar(
                                 "",
                                 backgroundColor: Colors.grey.shade200,
                                 elevation: 5.0,
                                 radius: 30.0,
                                 child: Image.asset("assets/xd.png",)
                               ), sizedBox,
                               Text("XD")
                             ],
                           ),
                           Column(
                             children: <Widget>[
                               CircularProfileAvatar(
                                 "",
                                 backgroundColor: Colors.grey.shade200,
                                 elevation: 5.0,
                                 radius: 30.0,
                                   child: Image.asset("assets/illustrator.png",)
                               ), sizedBox,
                               Text("Illustrator")
                             ],
                           ),
                           Column(
                             children: <Widget>[
                               CircularProfileAvatar(
                                 "",
                                 backgroundColor: Colors.grey.shade200,
                                 elevation: 5.0,
                                 radius: 30.0,
                                   child: Image.asset("assets/photoshop.png",)
                               ), sizedBox,
                               Text("Phot shop")
                             ],
                           ),
                           Column(
                             children: <Widget>[
                               CircularProfileAvatar(
                                 "",
                                 backgroundColor: Colors.grey.shade200,
                                 elevation: 5.0,
                                 radius: 30.0,
                                   child: Image.asset("assets/xd.png",)
                               ), sizedBox,
                               Text("XD")
                             ],
                           ),
                         ],
                       ),sizedBox,
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text("Experience",style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 30.0
                        )),
                      ),sizedBox,
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left:25.0),
                                child:  CircleAvatar(
                                  radius: 5.0,
                                  backgroundColor: Colors.indigo.shade800,
                                ),
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              ResponsiveContainer(
                                widthPercent: 100.0,
                                heightPercent: 10.0,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 5.0,
                                          spreadRadius: 2.0,
                                          offset: Offset(
                                            5.0,
                                            5.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20.0),
                                        bottomLeft: Radius.circular(20.0),
                                      )
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left:25.0),
                                child:  CircleAvatar(
                                  radius: 5.0,
                                  backgroundColor: Colors.indigo.shade800,
                                ),
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              ResponsiveContainer(
                                widthPercent: 100.0,
                                heightPercent: 10.0,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 5.0,
                                          spreadRadius: 2.0,
                                          offset: Offset(
                                            5.0,
                                            5.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20.0),
                                        bottomLeft: Radius.circular(20.0),
                                      )
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
            ),
          );
        }
    );
  }
}