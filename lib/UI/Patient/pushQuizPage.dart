import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:fluttertoast/fluttertoast.dart';


import '../../Static/url.dart';

class PushQuizPage extends StatefulWidget {
  static const String id = 'PushQuiz';
  String patient_id;
  PushQuizPage(@required this.patient_id,);

  @override
  State<PushQuizPage> createState() => _PushQuizPageState();
}


class _PushQuizPageState extends State<PushQuizPage> {

  void ToastMessage(){
    Fluttertoast.showToast(
        msg:"Please fill the necessary details",
      backgroundColor: Colors.grey,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      textColor: Colors.white,
      fontSize: 16.0,
    );

  }
  late String patient_id=widget.patient_id;
  String ?dropdownvalue1;
  String ?dropdownvalue2;
  String ?dropdownvalue3;
  String ?dropdownvalue4;
  TextEditingController item1=TextEditingController();
  TextEditingController item2=TextEditingController();
  int currentStep = 0;
  int index = 0;

  bool language=true;

  void initState(){
    super.initState();
    language;
  }


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
      floatingActionButton: SpeedDial(
        icon: Icons.language,
        // animatedIcon: AnimatedIcons.menu_close,
        backgroundColor: Colors.black,
        children: [
          SpeedDialChild(
              child: Icon(Icons.language),
              label: 'English',
              onTap: (){
                setState(() {
                  language = true;
                });}
          ),
          SpeedDialChild(
              child: Icon(Icons.language),
              label: 'Kannada',
              onTap: (){
                setState(() {
                  language = false;
                });
                // print(language);
              }
          ),
        ],
      ) ,
      body: SingleChildScrollView(
        child: Stepper(
         controlsBuilder: (BuildContext context,ControlsDetails controls){
           return Row(
             children: <Widget>[
               TextButton(
                 onPressed: controls.onStepContinue,
                 child: (currentStep==3)?Text(language?'SUBMIT':'ಸಲ್ಲಿಸು'):Text(language?'NEXT':'ಮುಂದೆ'),
               ),
               TextButton(
                 onPressed: controls.onStepCancel,
                 child: (currentStep==0)?Text(language?'CANCEL':'ರದ್ದುಮಾಡು'):Text(language?'GO BACK':'ಹಿಂದೆ ಹೋಗು'),
               ),
             ],
           );

         },

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
                title: Text(language?"How do you rate your Health?":'ನಿಮ್ಮ ಆರೋಗ್ಯವನ್ನು ನೀವು ಹೇಗೆ ರೇಟ್ ಮಾಡುತ್ತೀರಿ?'),
                content: Column(
                  children: <Widget>[
                    DropdownButton(
                      style: const TextStyle(color: Colors.black),
                       value: dropdownvalue1,
                        items: <String>[language?'Likely':'ಸಾಧ್ಯತೆ', language?'Average':'ಸರಾಸರಿ', language?'Poor':'ಬಡವ']
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
              title: Text(language?"Are you following daily Home-Based cardiac rehabiliation advices?":"ನೀವು ದೈನಂದಿನ ಗೃಹಾಧಾರಿತ ಹೃದಯ ಪುನರ್ವಸತಿ ಸಲಹೆಗಳನ್ನು ಅನುಸರಿಸುತ್ತಿರುವಿರಾ?",maxLines: 2,),
              content: Column(
                children:<Widget> [
                  DropdownButton(

                      style: const TextStyle(color: Colors.black),
                      value: dropdownvalue2,
                      items: <String>[language?'Yes': 'ಹೌದು', language?'No':'ಸಂ']
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
                title: Text(language?"Have you felt any health issues while following the Home-based cardiac rehabilitation advices?":"ಗೃಹಾಧಾರಿತ ಹೃದಯ ಪುನರ್ವಸತಿ ಸಲಹೆಗಳನ್ನು ಅನುಸರಿಸುವಾಗ ನೀವು ಯಾವುದೇ ಆರೋಗ್ಯ ಸಮಸ್ಯೆಗಳನ್ನು ಅನುಭವಿಸಿದ್ದೀರಾ?",maxLines:3,),
                content: Column(
                  children:<Widget> [
                    DropdownButton(

                        style: const TextStyle(color: Colors.black),
                        value: dropdownvalue3,
                        items: <String>[language?'Yes': 'ಹೌದು', language?'No':'ಸಂ']
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
                      readOnly: (dropdownvalue3=="Yes"||dropdownvalue3=="ಹೌದು")?false:true,

                      enableInteractiveSelection: true,
                      decoration: InputDecoration(
                        hintText: (dropdownvalue3=="Yes"||dropdownvalue3=="ಹೌದು")?language?"Please Enter the reason":"ದಯವಿಟ್ಟು ಕಾರಣವನ್ನು ನಮೂದಿಸಿ":language?"Please proceed to next option":"ದಯವಿಟ್ಟು ಮುಂದಿನ ಆಯ್ಕೆಗೆ ಮುಂದುವರಿಯಿರಿ",
                        hintStyle: TextStyle(color: Colors.grey),

                      ),
                    )
                  ],

                )
            ),
            Step(
                title: Text(language?"Do you have any questions/doubts?":"ನಿಮಗೆ ಯಾವುದೇ ಪ್ರಶ್ನೆಗಳು/ಅನುಮಾನಗಳಿವೆಯೇ?",maxLines:1,),
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
                      readOnly: (dropdownvalue3=="Yes"||dropdownvalue3=="ಹೌದು")?false:true,
                      maxLines: 4,

                      enableInteractiveSelection: true,
                      decoration: InputDecoration(
                        hintText: (dropdownvalue3=="Yes"||dropdownvalue3=="ಹೌದು")?language?"Please Enter the reason":"ದಯವಿಟ್ಟು ಕಾರಣವನ್ನು ನಮೂದಿಸಿ":language?"Please proceed to next option":"ದಯವಿಟ್ಟು ಮುಂದಿನ ಆಯ್ಕೆಗೆ ಮುಂದುವರಿಯಿರಿ",
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
