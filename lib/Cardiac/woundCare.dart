import 'package:flutter/material.dart';

class WoundCare extends StatefulWidget {
  static const String id = 'Wound care';
  WoundCare(@required this.lang);
  final String lang;

  @override
  State<WoundCare> createState() => _WoundCareState();
}

class _WoundCareState extends State<WoundCare> {
  @override
  Widget build(BuildContext context) {
    late String language = widget.lang;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: WoundCare.id,
              child: SizedBox(
                height: size.height*0.40,
                width: double.infinity,
                child: const Image(
                  image: AssetImage('images/WoundCare.jpg'),
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
                                    children:[
                                      Padding(
                                        padding: EdgeInsets.only(),
                                        child: Text(language == 'English'?'WOUND CARE':'ಗಾಯದ ಕಾಳಜಿ',
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
                                      child: Text(language == 'English'?'• Before touching the incision site wash hands with soap and water to prevent infection of the incision site.': '• ಛೇದನದ ಸ್ಥಳವನ್ನು ಸ್ಪರ್ಶಿಸುವ ಮೊದಲು, ಛೇದನದ ಸ್ಥಳದ ಸೋಂಕನ್ನು ತಡೆಗಟ್ಟಲು ಸೋಪ್ ಮತ್ತು ನೀರಿನಿಂದ ಕೈಗಳನ್ನು ತೊಳೆಯಿರಿ.',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                            ),
                                      textAlign: TextAlign.center,),
                                    ),
                                    SizedBox(
                                      height: size.width*0.04,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: size.width*0.01,top: size.height*0.01),
                                      child:
                                          Text(language == 'English'?'• Usually there is no drainage from the incision site. Do not cover the bandage with bandage. If discharge present call the surgeon. Keep the incision site clean and dry.': '• ಸಾಮಾನ್ಯವಾಗಿ ಛೇದನದ ಸ್ಥಳದಿಂದ ಯಾವುದೇ ಒಳಚರಂಡಿ ಇಲ್ಲ. ಬ್ಯಾಂಡೇಜ್ನೊಂದಿಗೆ ಬ್ಯಾಂಡೇಜ್ ಅನ್ನು ಮುಚ್ಚಬೇಡಿ. ಡಿಸ್ಚಾರ್ಜ್ ಇದ್ದರೆ ಶಸ್ತ್ರಚಿಕಿತ್ಸಕನನ್ನು ಕರೆ ಮಾಡಿ. ಛೇದನದ ಸ್ಥಳವನ್ನು ಸ್ವಚ್ಛವಾಗಿ ಮತ್ತು ಒಣಗಿಸಿ.',
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
                                      padding: EdgeInsets.only(right: size.width*0.01),
                                      child:
                                          Text(language == 'English'?'• During healing of incision site it is normal to feel itching numbness and tingling.':'• ಛೇದನದ ಸ್ಥಳವನ್ನು ಗುಣಪಡಿಸುವಾಗ ತುರಿಕೆ ಮರಗಟ್ಟುವಿಕೆ ಮತ್ತು ಜುಮ್ಮೆನಿಸುವಿಕೆ ಅನುಭವಿಸುವುದು ಸಹಜ.',
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
                                      padding: EdgeInsets.only(right: size.width*0.01),
                                      child:
                                          Text(language == 'English'?'• Check for symptoms of infection in the chest incision.':'• ಎದೆಯ ಛೇದನದಲ್ಲಿ ಸೋಂಕಿನ ಲಕ್ಷಣಗಳನ್ನು ಪರಿಶೀಲಿಸಿ.',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                            ),
                                            textAlign: TextAlign.center,
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.width*0.55,
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
