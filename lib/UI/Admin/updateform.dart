import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'dart:convert';

//import '../../Static/url.dart';


class UpdateForm extends StatefulWidget {
  const UpdateForm({Key? key}) : super(key: key);

  @override
  State<UpdateForm> createState() => _UpdateFormState();
}

class _UpdateFormState extends State<UpdateForm> {
  TextEditingController namecontroller=TextEditingController();
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController phonecontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();
  TextEditingController ipcontroller=TextEditingController();
  TextEditingController opcontroller=TextEditingController();
  TextEditingController DOadmissioncontroller=TextEditingController();
  TextEditingController DOsurgerycontroller=TextEditingController();

  String url="http://localhost:8000/user/632e845f80fb7356a2b6be5a/updateuser";

  void updatedata() async{
    var dio= Dio();
    var body=jsonEncode({
      "emailid": emailcontroller.text.toString(),

      "name":namecontroller.text.toString(),
      "phone":phonecontroller.text,
      "ip_no":ipcontroller.text,
      "op_no":opcontroller.text,
      "DO_admission":DOadmissioncontroller.text.toString(),
      "DO_surgery":DOsurgerycontroller.text.toString(),
      "DO_followup":null


    });

    try {
     Response response=await dio.patch(url,data: body);
      print(response.data);



      if(response.statusCode==200){
        Fluttertoast.showToast(msg: "Patient has been successfully Updated");
        Navigator.of(context).pop();
      }

    }catch(err){
      print(err);
    }
  }






  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
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
                    controller: ipcontroller,
                    keyboardType: TextInputType.number,
                    autofocus: true,
                    decoration: const InputDecoration(

                      hintText: "Enter IP Number",
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
                    controller: opcontroller,
                    keyboardType: TextInputType.number,
                    autofocus: true,
                    decoration: const InputDecoration(

                      hintText: "Enter op Number",
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
                    controller: DOadmissioncontroller,
                    keyboardType: TextInputType.datetime,
                    autofocus: true,
                    decoration: const InputDecoration(

                      hintText: "Enter Date of Admission ",
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
                    controller: DOsurgerycontroller,
                    keyboardType: TextInputType.datetime,

                    autofocus: true,
                    decoration: const InputDecoration(

                      hintText: "Enter Date of Surgery",
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
                        child: Text("Update",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),

                    ),
                    onTap: ()=>updatedata()
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
