import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../Static/url.dart';


class RegisterPatient extends StatefulWidget {
  const RegisterPatient({Key? key}) : super(key: key);

  @override
  State<RegisterPatient> createState() => _RegisterPatientState();
}

class _RegisterPatientState extends State<RegisterPatient> {
  TextEditingController namecontroller=TextEditingController();
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController phonecontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();

  String url=PROD_URL+"/user/registeruser";


  void postdata() async{
    var dio= Dio();
    var body=jsonEncode({
      "emailid": emailcontroller.text.toString(),
      "password": passwordcontroller.text.toString(),
      "name":namecontroller.text.toString(),
      "phone":phonecontroller.text,

    });

    try {
      Response response = await dio.post(url, data: body);
      print(response.data);



      if(response.statusCode==200){

        Navigator.of(context).pop();

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
            padding: const EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
                SizedBox(height: MediaQuery.of(context).size.height*0.1),
                SizedBox(height: MediaQuery.of(context).size.height*0.1),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  width: size.width*0.9,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF1E6FF),
                    borderRadius: BorderRadius.circular(29),
                  ),
                  child: TextField(
                    controller: namecontroller,
                    keyboardType: TextInputType.name,
                    autofocus: true,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.person,
                        color: Color(0xFF6F35A5),),
                      hintText: "Enter Patient Name",
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
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  width: size.width*0.9,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF1E6FF),
                    borderRadius: BorderRadius.circular(29),
                  ),
                  child: TextField(
                    controller: phonecontroller,
                    keyboardType: TextInputType.phone,
                    autofocus: true,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.phone,
                        color: Color(0xFF6F35A5),),
                      hintText: "Enter Phone Number",
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
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  width: size.width*0.9,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF1E6FF),
                    borderRadius: BorderRadius.circular(29),
                  ),
                  child: TextField(
                    controller: emailcontroller,
                    keyboardType: TextInputType.emailAddress,
                    autofocus: true,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.mail_outline_outlined,
                        color: Color(0xFF6F35A5),),
                      hintText: "Enter Email ID",
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
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  width: size.width*0.9,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF1E6FF),
                    borderRadius: BorderRadius.circular(29),
                  ),
                  child: TextField(
                    controller: passwordcontroller,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    autofocus: true,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.password,
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
                      child: const Center(
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
