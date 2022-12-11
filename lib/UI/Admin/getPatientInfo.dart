import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:HyCaRe/UI/Admin/updateform.dart';
import 'dart:convert';

import '../../Static/url.dart';

class ViewProfileAdmin extends StatefulWidget {
  String patient_id;
  ViewProfileAdmin(@required this.patient_id);

  @override
  State<ViewProfileAdmin> createState() => _ViewProfileAdminState();
}

class _ViewProfileAdminState extends State<ViewProfileAdmin> {
  var name;
  var emailid;
  var phoneno;
  var reportdetail;

  Future<void> getpatientdetail() async {
    var url = PROD_URL + "/user/getuser/" + widget.patient_id;
    var response = await get(Uri.parse(url));
    var jsondata = await jsonDecode(response.body);

    setState(() {
      name = jsondata['user']['name'].toString();
      emailid = jsondata['user']['emailid'].toString();
      phoneno = jsondata['user']['phone'].toString();
      reportdetail = jsondata['user']['health_report'] as List;

    });
  }

  @override
  void initState() {
    super.initState();
    getpatientdetail();
  }

  @override
  Widget build(BuildContext context) {
    getpatientdetail();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          TextButton(
              onPressed:()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=>UpdateForm(widget.patient_id))),
              child: Text("Edit"))
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Name: " + name.toString(),
                          style: TextStyle(
                            fontSize: 14,
                          ),
                          maxLines: 1,
                        ),
                        Text(
                          "Email id: " + emailid.toString(),
                          style: TextStyle(
                            fontSize: 14,
                          ),
                          maxLines: 3,
                        ),
                        Text(
                          "Phone Number: " + phoneno.toString(),
                          style: TextStyle(
                            fontSize: 14,
                          ),
                          maxLines: 3,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.027,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Date",
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                    ),
                    Text(
                      "Time",
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 2,
              ),
              ListView.separated(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  final report = reportdetail[index];
                  final date = report['datetime'].toString();
                  final question1 = report['question1'].toString();
                  final question2 = report['question2'].toString();
                  final question3 = report['question3'].toString();
                  final question3_response =
                      report['question3_reason'].toString();
                  final question4 = report['question4'].toString();
                  final question4_response =
                      report['question4_reason'].toString();
                  final question5 = report['question5'].toString();
                  final question6 = report['question6'].toString();
                  final question7 = report['question7'].toString();
                  final question6_response=report['question6_response'].toString();
                  final question7_response=report['question7_response'].toString();

                  return Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.06),
                      child: ExpansionTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Text>[
                            Text(date.substring(0, 10)),
                            Text(date.substring(11, 16))
                          ],
                        ),
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Question 1"),
                                    Text(question1),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Question 2"),
                                    Text(question2),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Question 3"),
                                    Text(question3),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Question 3 Response"),
                                    Text(
                                      question3_response,
                                      maxLines: 3,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Question 4"),
                                    Text(
                                      question4,
                                      maxLines: 3,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Question 4 Response"),
                                    Text(question4_response),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Question 5"),
                                    Text(question5),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Question 6"),
                                    Text(question6),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Question 6 Response"),
                                    Text(question6_response),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Question 7"),
                                    Text(question7),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Question 7 Time"),
                                    Text(question7_response),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ));
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Divider(
                    color: Colors.black,
                  );
                },
                itemCount: reportdetail.length,
              )
            ],
          ),
        ),
      ),
    );
  }
}
