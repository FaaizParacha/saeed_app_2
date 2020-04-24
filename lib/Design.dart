import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:responsive_container/responsive_container.dart';
import 'AboutSheet.dart';
import 'TimeLineSheet.dart';

class Design extends StatefulWidget {
  @override
  _DesignState createState() => _DesignState();
}

class _DesignState extends State<Design> with SingleTickerProviderStateMixin{

  void _showEditProfileSheet() {
    showModalBottomSheet(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(topRight: Radius.circular(30.0),topLeft: Radius.circular(30.0))
      ),
        isScrollControlled: true,
      isDismissible: true,
        context: context,
        builder: (builder) {
          return SingleChildScrollView(
            child: Column(
              children: <Widget>[
                AppBar(
                  backgroundColor: Colors.red.shade300,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(30.0),topLeft: Radius.circular(30.0))
                  ),
                  title: Text("Accounts Information"),
                  centerTitle: true,
                  leading: IconButton(
                    icon: Icon(Icons.arrow_downward,color: Colors.white,),
                    onPressed: ()
                    {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          ResponsiveContainer(widthPercent: 12.0, heightPercent: 7.0,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(12.0)
                              ),
                              child: Icon(Icons.camera_enhance,color: Colors.white,),
                            ),
                          ),
                          ResponsiveContainer(widthPercent: 25.0, heightPercent: 15.0,
                            child: Container(
                                decoration: BoxDecoration(

                                    borderRadius: BorderRadius.circular(12.0)
                                ),
                                child: Image.asset("assets/front_face.png")
                            ),
                          ),
                          ResponsiveContainer(widthPercent: 12.0, heightPercent: 7.0,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade100,
                                  borderRadius: BorderRadius.circular(12.0)
                              ),
                              child: Icon(Icons.delete,color: Colors.black,),
                            ),
                          )
                        ],
                      ),
                      sizedBox,sizedBox,
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text("Name",style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w900
                        ),),
                      ),
                      sizedBox,
                      TextFormField(
                        decoration: new InputDecoration(
                          labelText: "Enter Your Name",
                          fillColor: Colors.white,
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(15.0),
                            borderSide: new BorderSide(
                            ),
                          ),
                          //fillColor: Colors.green
                        ),
                        validator: (val) {
                          if(val.length==0) {
                            return "Name cannot be empty";
                          }else{
                            return null;
                          }
                        },
                        keyboardType: TextInputType.text,
                      ),
                      sizedBox,
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text("Email",style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w900
                        ),),
                      ),
                      sizedBox,
                      TextFormField(
                        decoration: new InputDecoration(
                          labelText: "Enter Your email",
                          fillColor: Colors.white,
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(15.0),
                            borderSide: new BorderSide(
                            ),
                          ),
                          //fillColor: Colors.green
                        ),
                        validator: (val) {
                          if(val.length==0) {
                            return "Email cannot be empty";
                          }else{
                            return null;
                          }
                        },
                        keyboardType: TextInputType.emailAddress,
                      ),
                      sizedBox,
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text("Birthday",style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w900
                        ),),
                      ),
                      sizedBox,
                      TextFormField(
                        decoration: new InputDecoration(
                          labelText: "DD/MM/YYYY",
                          fillColor: Colors.white,
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(15.0),
                            borderSide: new BorderSide(
                            ),
                          ),
                          //fillColor: Colors.green
                        ),
//              validator: (val) {
//                if(val.length==0) {
//                  return "Email cannot be empty";
//                }else{
//                  return null;
//                }
//              },
                        keyboardType: TextInputType.datetime,

                      ),
                      sizedBox,sizedBox,
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text("Location",style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w900
                        ),),
                      ),
                      sizedBox,
                      TextFormField(
                        decoration: new InputDecoration(
                          labelText: "Enter you location",
                          fillColor: Colors.white,
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(15.0),
                            borderSide: new BorderSide(
                            ),
                          ),
                          //fillColor: Colors.green
                        ),
//              validator: (val) {
//                if(val.length==0) {
//                  return "Email cannot be empty";
//                }else{
//                  return null;
//                }
//              },
                        keyboardType: TextInputType.multiline,
                      ),
                      sizedBox,
                      ResponsiveContainer(
                        widthPercent: 70.0,
                        heightPercent: 8.0,
                        child: RaisedButton(
                          onPressed:(){},
                          color: Colors.purple.shade800,
                          child: Text("save changes",style: TextStyle(
                              color: Colors.white
                          ),),
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(12.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[

                AppBar(
                  elevation: 0,
                  backgroundColor: Colors.white,
                  leading: Icon(Icons.arrow_back_ios,color: Colors.black,),
                  actions: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: RaisedButton.icon(
                        onPressed:_showEditProfileSheet,
                        icon: Icon(Icons.edit),
                        color: Colors.grey.shade100,
                        label : Text("Edit Profile",style: TextStyle(color: Colors.black),),
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                    Icon(Icons.more_vert,color: Colors.black,),
                  ],
                ),
                sizedBox,
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/Henri.jpeg"),
                  radius: 100.0,
                ),
                sizedBox,
                Text("User Name",style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 40.0
                ),),

                Text
                  ("Life is short. Break the rules.",
                    style: TextStyle(

                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 15.0,
                      decoration: TextDecoration.underline,
                    )),
                sizedBox,
                sizedBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.chat_bubble_outline,size: 25.0,),
                    SizedBox(width: 10.0,),
                    Text("Message",style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w900
                    ),),

                  ],
                ),
                sizedBox,
                sizedBox,
              ],
            ),
            bottomsheet(),
          ],)
    );
  }
}


final sizedBox = SizedBox(
  height: 10.0,
);
final sizedboxWidth = SizedBox(
  width: 8.0,
);
final BorderRadius radius = BorderRadius.circular(15.0);
final BorderRadius bottomsheetRadius = BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.circular(30.0));

class bottomsheet extends StatefulWidget {
  @override
  _bottomsheetState createState() => _bottomsheetState();
}

class _bottomsheetState extends State<bottomsheet> {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width - 10;
    double height = MediaQuery.of(context).size.height - 10;
    return Stack(
      children: <Widget>[
         AboutSheet(height: height),

        TimeLineSheet(height: height),
      ],
    );
  }
}




