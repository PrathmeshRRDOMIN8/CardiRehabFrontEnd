import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class CareOfInciRite extends StatefulWidget {
  static const String id = 'Care of incision site';
  @override
  State<CareOfInciRite> createState() => _CareOfInciRiteState();
}

class _CareOfInciRiteState extends State<CareOfInciRite> {
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
        backgroundColor: Colors.white,
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
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
          child: Column(
            children: [
              Hero(
                tag: CareOfInciRite.id,
                child: SizedBox(
                  height: size.height*0.40,width: double.infinity,
                  child: const Image(
                    image: AssetImage('images/CareOfIncision.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
          Flex(
                direction: Axis.vertical,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        SizedBox(
                          height: size.height*0.65,
                          width: double.infinity,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: size.width*0.03),
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(),
                                          child: language ?Text( 'CARE OF INCISION SITE: ',
                                            style: TextStyle(
                                              decoration: TextDecoration.underline,
                                              color: Color(0xFFFFBD58),
                                              fontSize: 28.0,
                                              fontWeight: FontWeight.bold,
                                            ),):Text('??????????????? ??????????????? ???????????????: ',style: TextStyle(
                                            decoration: TextDecoration.underline,
                                            color: Color(0xFFFFBD58),
                                            fontSize: 28.0,
                                            fontWeight: FontWeight.bold,),
                                            ),
                                         ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: size.height*0.01,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(left: size.width* 0.025, right: size.width*0.015),
                                  child: Column(
                                    children: [
                                      Text(language?'Care of incision site: you might have an incision on centre of the chest.': '??????????????? ??????????????? ???????????????: ???????????? ???????????? ???????????????????????????????????? ??????????????????????????? ?????????????????????????????????.',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 22
                                        ),
                                        textAlign: TextAlign.center,),
                                      SizedBox(
                                        height: size.width*0.04,
                                      ),
                                      Text(language? 'Check for the signs of infection in the incision site Those signs includes: ': '??????????????? ??????????????????????????? ?????????????????? ???????????????????????????????????? ??????????????????????????? ??? ??????????????????????????? ??????????????????.',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 22
                                        ),
                                        textAlign: TextAlign.center,),
                                      SizedBox(
                                        height: size.width*0.04,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(right: size.width*0.01, top: size.height*0.001),
                                        child:Text(language? '??? Increased discharge from incision.': '??? ???????????????????????? ????????????????????? ????????????????????????',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      SizedBox(
                                        height: size.height*0.01,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(right: size.width*0.01,top: size.height*0.01),
                                        child: Text(language ? '??? The incision line might be open. ': '??? ??????????????? ?????????????????? ????????????????????????????????????',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),
                                      SizedBox(
                                        height: size.height*0.01,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(right: size.width*0.01,top: size.height*0.01),
                                        child: Text(language? '??? The colour changes in the incision site such as redness.': '??? ??????????????? ???????????????????????? ??????????????? ??????????????????????????? ?????????????????? ?????????????????????????????????.',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      SizedBox(
                                        height: size.height*0.01,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(right: size.width*0.01),
                                        child: Text(language ? '??? The incision line may feel warm.': '??? ??????????????? ?????????????????? ??????????????????????????????????????????.',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      SizedBox(
                                        height: size.height*0.01,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(right: size.width*0.01),
                                        child: Text(language ? '??? Fever, worsening incision pain rapid the heart rate, or bleeding from the wound.': '??? ????????????, ??????????????????????????????????????? ??????????????? ???????????? ???????????? ??????????????????????????? ?????????????????????????????????????????? ???????????? ????????????????????? ??????????????????????????????????????????????????????.',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      SizedBox(
                                        height: size.height*0.035,
                                      ),
                                    ],
                                  )
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],),
            ],
          ),
        ),
    );
  }
}
