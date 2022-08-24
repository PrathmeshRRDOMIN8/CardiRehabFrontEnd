import 'package:flutter/material.dart';

class Posture extends StatefulWidget {
  static const String id = 'Posture';
  Posture(@required this.lang);
  final String lang;

  @override
  State<Posture> createState() => _PostureState();
}

class _PostureState extends State<Posture> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    late String language = widget.lang;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: Posture.id,
              child: SizedBox(
                height: size.height*0.40,width: double.infinity,
                child: const Image(
                  image: AssetImage('images/Posture.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Flex(direction: Axis.vertical,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: size.width*0.03),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(),
                                        child: Text(language == 'English' ?'POSTURE':'ಭಂಗಿ',
                                          style: TextStyle(
                                            decoration: TextDecoration.underline,
                                            color: Color(0xFFFFBD58),
                                            fontSize: 28.0,
                                            fontWeight: FontWeight.bold,
                                          ),),
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
                                    SizedBox(
                                      height: size.width*0.04,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: size.width*0.01, top: size.height*0.001),
                                      child:
                                          Text(language == 'English' ?'• Whether lying down, sitting or walking, be aware of your position. ':'• ಮಲಗಿರುವಾಗ, ಕುಳಿತುಕೊಳ್ಳುವಾಗ ಅಥವಾ ನಡೆಯುವಾಗ, ನಿಮ್ಮ ಸ್ಥಾನದ ಬಗ್ಗೆ ತಿಳಿದಿರಲಿ.',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                            ),
                                            textAlign: TextAlign.center,
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.width*0.04,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: size.width*0.01,top: size.height*0.01),
                                      child:
                                          Text(language == 'English' ?'• Sit with the head up and straight back.':'• ತಲೆಯನ್ನು ಮೇಲಕ್ಕೆತ್ತಿ ನೇರವಾಗಿ ಹಿಂದಕ್ಕೆ ಇಟ್ಟು ಕುಳಿತುಕೊಳ್ಳಿ.',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                            ),
                                            textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                )
                            ),
                          ],
                        ),
                    ],
                  ),
                ),
              ],)

          ],
        ),
      ),

    );
  }
}
