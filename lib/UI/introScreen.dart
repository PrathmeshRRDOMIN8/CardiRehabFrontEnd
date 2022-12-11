import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:HyCaRe/UI/Admin/adminLgin.dart';
import 'package:HyCaRe/UI/Patient/loginpatient.dart';
import 'package:lottie/lottie.dart';



class IntroScreen extends StatefulWidget {
  static const String id = 'Intro';
  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  bool language=true;

  void initState(){
    super.initState();
    language;
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
      body:
          Padding(
            padding: EdgeInsets.symmetric(vertical: size.height*0.02, horizontal: size.width*0.02),
            child: Column(
              children: [
                SizedBox(
                  width: size.width,
                  height: size.height*0.6,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Lottie.network('https://assets5.lottiefiles.com/packages/lf20_ecvwbhww.json'),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  width: size.width*0.8,
                  decoration: BoxDecoration(
                    color: const Color(0xFFCA6CE5),
                    borderRadius: BorderRadius.circular(29),
                  ),
                  child: TextButton(
                    onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AdminLogin())),
                    child: Text(language?'Admin Portal':'ನಿರ್ವಾಹಕ ಪೋರ್ಟಲ್',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),),),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  width: size.width*0.8,
                  decoration: BoxDecoration(
                    color: const Color(0xFFCA6CE5),
                    borderRadius: BorderRadius.circular(29),
                  ),
                  child: TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPatient()));
                  }, child: Text(language? 'Patient Portal':'ರೋಗಿಯ ಪೋರ್ಟಲ್',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),),),
                ),
            SizedBox(height: size.height*0.02,),
            Text("Made with ❤️ by ",style: TextStyle(color: Colors.grey)),
                        Text( "Apple Developers' Group,Manipal",style: TextStyle(fontWeight: FontWeight.bold)),


              ],
            ),
          ),


    );
  }
}
