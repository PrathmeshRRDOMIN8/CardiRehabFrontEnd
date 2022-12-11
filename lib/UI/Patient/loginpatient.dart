import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:HyCaRe/Static/url.dart';
import 'package:HyCaRe/UI/Patient/detailsdivision.dart';
//import 'package:HyCaRe/patientPortal.dart';


class LoginPatient extends StatefulWidget {
  @override
  State<LoginPatient> createState() => _LoginPatientState();
}

class _LoginPatientState extends State<LoginPatient> {
  TextEditingController codecontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();
  String ?patient_id;
  String url=PROD_URL+"/user/loginuser";


  void postdata() async{
    var dio= Dio();
    var body=jsonEncode({
      "code_no": codecontroller.text,
      "password": passwordcontroller.text.toString(),

    });

    try {
      Response response = await dio.post(url, data: body);
      print(response.data);

      setState((){
        patient_id=response.data["_id"];
        print(patient_id);
      });

      if(response.statusCode==200){
        Fluttertoast.showToast(msg: "Login Successful");

        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>DetailDivision(patient_id!)));

      }
      else if(response.statusCode==400){
        Fluttertoast.showToast(msg: "Incorrect Credentials");
      }

    }catch(err){
      print(err);
    }
  }

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                SizedBox(height: MediaQuery.of(context).size.height*0.1),
                SizedBox(height: MediaQuery.of(context).size.height*0.1),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
               padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                width: size.width*0.9,
            decoration: BoxDecoration(
              color: Color(0xFFF1E6FF),
              borderRadius: BorderRadius.circular(29),
            ),
            child: TextField(
              controller: codecontroller,
              keyboardType: TextInputType.number,
              autofocus: true,
              decoration: InputDecoration(
                icon: Icon(Icons.mail_outline_outlined,
                  color: Color(0xFF6F35A5),),
                hintText: "Enter Username",
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                border: InputBorder.none,
              ),
            ),
          ),

                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  width: size.width*0.9,
                  decoration: BoxDecoration(
                    color: Color(0xFFF1E6FF),
                    borderRadius: BorderRadius.circular(29),
                  ),
                  child: TextField(
                    controller: passwordcontroller,
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    autofocus: true,
                    decoration: InputDecoration(
                      icon: Icon(Icons.lock_open_outlined,
                        color: Color(0xFF6F35A5),),
                      hintText: "Enter Password",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.1),
                InkWell(
                    child: Container(
                      width:MediaQuery.of(context).size.width*0.472 ,
                      height: MediaQuery.of(context).size.height*0.057,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: Colors.black,

                      ),
                      child: Center(
                        child: Text("Login",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),

                    ),
                    onTap: (){postdata();}
                ),



              ],
            ),
          ),
        ),
      ),
    );
  }
}
