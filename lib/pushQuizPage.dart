import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'Static/url.dart';

class PushQuizPage extends StatefulWidget {
  static const String id = 'PushQuiz';
  String patient_id;
  PushQuizPage(@required this.patient_id,);

  @override
  State<PushQuizPage> createState() => _PushQuizPageState();
}

class _PushQuizPageState extends State<PushQuizPage> {
  late String patient_id=widget.patient_id;
  String ?dropdownvalue1;
  String ?dropdownvalue2;
  String ?dropdownvalue3;
  String ?dropdownvalue4;
  TextEditingController item1=TextEditingController();
  TextEditingController item2=TextEditingController();
  int currentStep = 0;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    String url=PROD_URL+"/user/${patient_id}/addhealthdata";


    void postdata() async{
      var dio= Dio();
      var body=jsonEncode({
        "question1":dropdownvalue1.toString(),
        "question2":dropdownvalue2.toString(),
        "question3":dropdownvalue3.toString(),
        "question3_reason":item1.text.toString(),
        "question4":dropdownvalue4.toString(),
        "question4_reason":item2.text.toString(),
        "datetime":DateTime.now().toString(),
      });

      try {
        Response response = await dio.post(url, data: body);
        print(response.data);


      }catch(err){
        print(err);
      }
    }
    return Scaffold(
      body: SingleChildScrollView(
        child: Stepper(

          physics: ScrollPhysics(),
          type: StepperType.vertical,
          currentStep: currentStep,
          onStepContinue: () {
            if(currentStep>=0&&currentStep<3) {
              setState(() => currentStep += 1);
            }
            else if(currentStep==3){
              setState(()=>{
                postdata(),
                Navigator.of(context).pop(),
              });
            }
          },
          onStepCancel: () {
            if(currentStep!=0) {
              setState(() => currentStep -= 1);
            }
          },
          onStepTapped: (int step) {
            setState(() => null);
          },
          steps: <Step>[
            Step(
                title: Text("How do you rate your Health?"),
                content: Column(
                  children: <Widget>[
                    DropdownButton(
                      style: const TextStyle(color: Colors.black),
                       value: dropdownvalue1,
                        items: <String>['Likely', 'Average', 'Poor']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue1 = newValue!;
                          });
                        }),
                  ],
                )),
            Step(
              title: Text("Are you following daily Home-Based cardiac rehabiliation advices?",maxLines: 2,),
              content: Column(
                children:<Widget> [
                  DropdownButton(

                      style: const TextStyle(color: Colors.black),
                      value: dropdownvalue2,
                      items: <String>['Yes', 'No']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue2 = newValue!;
                        });
                      })
                ],

              )
            ),
            Step(
                title: Text("Have you felt any health issues while following the Home-based cardiac rehabilitation advices?",maxLines:3,),
                content: Column(
                  children:<Widget> [
                    DropdownButton(

                        style: const TextStyle(color: Colors.black),
                        value: dropdownvalue3,
                        items: <String>['Yes', 'No']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue3 = newValue!;
                          });
                        }),
                    TextField(
                      controller: item1,
                      keyboardType: TextInputType.text,
                      readOnly: (dropdownvalue3=="Yes")?false:true,

                      enableInteractiveSelection: true,
                      decoration: InputDecoration(
                        hintText: (dropdownvalue3=="Yes")?"Please Enter the reason":"Please proceed to next option",
                        hintStyle: TextStyle(color: Colors.grey),

                      ),
                    )
                  ],

                )
            ),
            Step(
                title: Text("Do you have any questions/doubts?",maxLines:1,),
                content: Column(
                  children:<Widget> [
                    DropdownButton(

                        style: const TextStyle(color: Colors.black),
                        value: dropdownvalue4,
                        items: <String>['Yes', 'No']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue4 = newValue!;
                          });
                        }),
                    TextField(
                      controller: item2,
                      keyboardType: TextInputType.text,
                      readOnly: (dropdownvalue4=="Yes")?false:true,
                      maxLines: 4,

                      enableInteractiveSelection: true,
                      decoration: InputDecoration(
                        hintText: (dropdownvalue4=="Yes")?"Please Enter your Question":"Please proceed to next option",
                        hintStyle: TextStyle(color: Colors.grey),

                      ),
                    )
                  ],

                )
            ),
          ],
        ),
      ),
    );
  }
}
