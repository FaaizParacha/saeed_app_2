//import 'package:flutter/material.dart';
//import 'package:responsive_container/responsive_container.dart';
//import 'package:saeedapp2/Design.dart';
//class EditProfile extends StatefulWidget {
//  @override
//  _EditProfileState createState() => _EditProfileState();
//}
//
//class _EditProfileState extends State<EditProfile> {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        backgroundColor: Colors.red.shade300,
//        title: Text("Account Informations",style: TextStyle(color: Colors.black),),
//      ),
//      body: SingleChildScrollView(
//        child: Padding(
//          padding: const EdgeInsets.all(15.0),
//          child: Column(
//            children: <Widget>[
//              sizedBox,
//              Row(
//                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                children: <Widget>[
//                  ResponsiveContainer(widthPercent: 12.0, heightPercent: 7.0,
//                  child: Container(
//                    decoration: BoxDecoration(
//                      color: Colors.black,
//                      borderRadius: BorderRadius.circular(12.0)
//                    ),
//                    child: Icon(Icons.camera_enhance,color: Colors.white,),
//                  ),
//                  ),
//                  ResponsiveContainer(widthPercent: 25.0, heightPercent: 15.0,
//                    child: Container(
//                      decoration: BoxDecoration(
//
//                          borderRadius: BorderRadius.circular(12.0)
//                      ),
//                      child: Image.asset("assets/front_face.png")
//                    ),
//                  ),
//                  ResponsiveContainer(widthPercent: 12.0, heightPercent: 7.0,
//                    child: Container(
//                      decoration: BoxDecoration(
//                          color: Colors.grey.shade100,
//                          borderRadius: BorderRadius.circular(12.0)
//                      ),
//                      child: Icon(Icons.delete,color: Colors.black,),
//                    ),
//                  )
//                ],
//              ),
//              sizedBox,sizedBox,
//              Align(
//                alignment: Alignment.topLeft,
//                child: Text("Name",style: TextStyle(
//                  color: Colors.black,
//                  fontSize: 18,
//                  fontWeight: FontWeight.w900
//                ),),
//              ),
//              sizedBox,
//              TextFormField(
//                decoration: new InputDecoration(
//                  labelText: "Enter Your Name",
//                  fillColor: Colors.white,
//                  border: new OutlineInputBorder(
//                    borderRadius: new BorderRadius.circular(15.0),
//                    borderSide: new BorderSide(
//                    ),
//                  ),
//                  //fillColor: Colors.green
//                ),
//                validator: (val) {
//                  if(val.length==0) {
//                    return "Name cannot be empty";
//                  }else{
//                    return null;
//                  }
//                },
//                keyboardType: TextInputType.text,
//              ),
//              sizedBox,
//              Align(
//                alignment: Alignment.topLeft,
//                child: Text("Email",style: TextStyle(
//                    color: Colors.black,
//                    fontSize: 18,
//                    fontWeight: FontWeight.w900
//                ),),
//              ),
//              sizedBox,
//              TextFormField(
//                decoration: new InputDecoration(
//                  labelText: "Enter Your email",
//                  fillColor: Colors.white,
//                  border: new OutlineInputBorder(
//                    borderRadius: new BorderRadius.circular(15.0),
//                    borderSide: new BorderSide(
//                    ),
//                  ),
//                  //fillColor: Colors.green
//                ),
//                validator: (val) {
//                  if(val.length==0) {
//                    return "Email cannot be empty";
//                  }else{
//                    return null;
//                  }
//                },
//                keyboardType: TextInputType.emailAddress,
//              ),
//              sizedBox,
//              Align(
//                alignment: Alignment.topLeft,
//                child: Text("Birthday",style: TextStyle(
//                    color: Colors.black,
//                    fontSize: 18,
//                    fontWeight: FontWeight.w900
//                ),),
//              ),
//              sizedBox,
//              TextFormField(
//                decoration: new InputDecoration(
//                  labelText: "DD/MM/YYYY",
//                  fillColor: Colors.white,
//                  border: new OutlineInputBorder(
//                    borderRadius: new BorderRadius.circular(15.0),
//                    borderSide: new BorderSide(
//                    ),
//                  ),
//                  //fillColor: Colors.green
//                ),
////              validator: (val) {
////                if(val.length==0) {
////                  return "Email cannot be empty";
////                }else{
////                  return null;
////                }
////              },
//                keyboardType: TextInputType.datetime,
//
//              ),
//              sizedBox,sizedBox,
//              Align(
//                alignment: Alignment.topLeft,
//                child: Text("Location",style: TextStyle(
//                    color: Colors.black,
//                    fontSize: 18,
//                    fontWeight: FontWeight.w900
//                ),),
//              ),
//              sizedBox,
//              TextFormField(
//                decoration: new InputDecoration(
//                  labelText: "Enter you location",
//                  fillColor: Colors.white,
//                  border: new OutlineInputBorder(
//                    borderRadius: new BorderRadius.circular(15.0),
//                    borderSide: new BorderSide(
//                    ),
//                  ),
//                  //fillColor: Colors.green
//                ),
////              validator: (val) {
////                if(val.length==0) {
////                  return "Email cannot be empty";
////                }else{
////                  return null;
////                }
////              },
//                keyboardType: TextInputType.multiline,
//              ),
//              sizedBox,
//              ResponsiveContainer(
//                widthPercent: 70.0,
//                heightPercent: 8.0,
//                child: RaisedButton(
//                  onPressed:(){},
//                 color: Colors.purple.shade800,
//                  child: Text("save changes",style: TextStyle(
//                    color: Colors.white
//                  ),),
//                  shape: RoundedRectangleBorder(
//                    borderRadius: new BorderRadius.circular(12.0),
//                  ),
//                ),
//              ),
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//}
