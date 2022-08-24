import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:kmc_medical_app/getPatientInfo.dart';

import 'Static/url.dart';

class AllUserList extends StatefulWidget {
  const AllUserList({Key? key}) : super(key: key);

  @override
  State<AllUserList> createState() => _AllUserListState();
}

class _AllUserListState extends State<AllUserList> {
  final url = PROD_URL + "/user/getalluser";
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

      // body: FutureBuilder<List<User>>(
      //   future: getdata(),
      //   builder: (context,snapshot) {
      //     if(snapshot.connectionState==ConnectionState.none&&snapshot.hasData==null){
      //       return Container(
      //         child: Text("No internet Connection"),
      //       );
      //
      //     }
      //     else if (snapshot.hasData) {
      //       List<User> users=snapshot.data!;
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

                      return InkWell(
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.472,
                            height: MediaQuery.of(context).size.height * 0.057,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22),
                              color: Colors.blueAccent,
                            ),
                            child: Center(
                              child: Text(
                                user["name"],
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ViewProfileAdmin(user["_id"].toString())))
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
    );

    //);
  }
}
