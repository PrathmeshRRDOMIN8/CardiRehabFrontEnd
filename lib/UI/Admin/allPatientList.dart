import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:HyCaRe/UI/Admin/RegisterPatient.dart';
import 'package:HyCaRe/UI/Admin/getPatientInfo.dart';

import '../../Static/url.dart';

class AllUserList extends StatefulWidget {
  const AllUserList({Key? key}) : super(key: key);

  @override
  State<AllUserList> createState() => _AllUserListState();
}

class _AllUserListState extends State<AllUserList> {
  final url = PROD_URL + "/user/getalluser";
  var uid;

  var _postjson = [];
  TextEditingController searchcontroller = TextEditingController();

  void fetchdata() async {
    try {
      final response = await get(Uri.parse(url));
      final jsondata = jsonDecode(response.body) as List;

      setState(() {
        _postjson = jsondata;
      });
    } catch (err) {
      print(err);
    }
  }

  // Future<List<User>> getdata() async{
  //   final url=PROD_URL+"/user/getalluser";
  //
  //     final response = await get(Uri.parse(url));
  //     final jsondata = jsonDecode(response.body) as List ;
  //     print(jsondata);
  //
  //
  //
  //     List<User> users=[];
  //     for(var element in jsondata){
  //       User user=User(id: element["_id"], name: element["name"], underprofessor: element["underprofessor"], emailid: element["emailid"], phone: element["phone"], password: element["password"], role: element["role"], internship: element["internship"]);
  //       users.add(user);
  //
  //     }
  //     print(users);
  //     return users;
  //
  //
  // }

  @override
  void initstate() {
    super.initState();
    fetchdata();
  }

  @override
  Widget build(BuildContext context) {
    fetchdata();

    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Expanded(
                child: ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      var user = _postjson[index];

                      return Dismissible(
                        key: Key(_postjson[index].toString()),
                        background: Container(
                          padding: EdgeInsets.all(0),
                          child: Icon(Icons.delete),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            color: Colors.red,
                          ),
                        ),
                        onDismissed: (direction) async {
                          showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                    title: Text(
                                        "Are you sure you want to delete the Patient Credentials"),
                                    content: Text(
                                        "If you confirm, then the patient credentials can't be recovered"),
                                    actions: <Widget>[
                                      TextButton(
                                          onPressed: (){Navigator.of(context).pop();}, child: Text("Cancel")),
                                      TextButton(

                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: GestureDetector(
                                          onTap: () async {
                                            setState(() async {
                                              try {
                                                final response = await delete(
                                                    Uri.parse(PROD_URL +
                                                        "/user/" +
                                                        user["_id"].toString() +
                                                        "/delete"));
                                                if (response.statusCode ==
                                                    200) {

                                                  print("Deleted Successfully");
                                                  Navigator.of(context).pop();
                                                }
                                              } catch (error) {
                                                print(error);
                                              }
                                            });
                                          },
                                          child: Container(
                                            color: Colors.red,
                                            padding: const EdgeInsets.all(14),
                                            child: const Text("Delete"),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ));
                        },
                        child: Center(
                          child: InkWell(
                              child: Container(
                                //width: MediaQuery.of(context).size.width * 0.472,
                                height:
                                    MediaQuery.of(context).size.height * 0.057,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.purpleAccent,
                                ),
                                child: Center(
                                  child: Text(
                                    user["code_no"].toString(),
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              onTap: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => ViewProfileAdmin(
                                          user["_id"].toString())))),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                          height: MediaQuery.of(context).size.height * 0.0284);
                    },
                    itemCount: _postjson.length),
              ),
            ],
          ),
        ),
      ),
      //}
      //  else if(snapshot.hasError){
      //    return Center(child: Text(snapshot.error.toString(),style: TextStyle(color: Colors.white),),);
      //   }
      //  return Center(child: CircularProgressIndicator());
      // }
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.purpleAccent,
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => RegisterPatient())),
          label: Text("+ Add Patient")),
    );

    //);
  }
}
