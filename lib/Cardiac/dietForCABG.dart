import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class DietForCABG extends StatefulWidget {
  static const String id = 'Diet for CABG';


  @override
  State<DietForCABG> createState() => _DietForCABGState();
}

class _DietForCABGState extends State<DietForCABG> {
  bool language=true;

  void initState(){
    super.initState();
    language;
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
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
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: DietForCABG.id,
              child: SizedBox(
                height: size.height*0.40,width: double.infinity,
                child: const Image(
                  image: AssetImage('images/DietsForCABG.jpg'),
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
                                        child: Text(language?'FOODS TO AVOID':'• ತಪ್ಪಿಸಬೇಕಾದ ಆಹಾರಗಳು',
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
                                          Text(language?'• Sugar, honey, glucose, jam ,jellies, jiggery.':'• ಸಕ್ಕರೆ, ಜೇನು, ಗ್ಲೂಕೋಸ್, ಜಾಮ್, ಜೆಲ್ಲಿಗಳು, ಜಿಗ್ಗೆರಿ',

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
                                      padding: EdgeInsets.only(right: size.width*0.01,top: size.height*0.01),
                                      child:
                                          Text(language?'• Fats like butter, ghee, dalda':'• ಬೆಣ್ಣೆ, ತುಪ್ಪ, ಡಾಲ್ಡಾದಂತಹ ಕೊಬ್ಬುಗಳು',

                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                            ),
                                            textAlign: TextAlign.center,
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height*0.02,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: size.width*0.01,top: size.height*0.01),
                                      child:
                                          Text(language?'• All sweets':'• ಎಲ್ಲಾ ಸಿಹಿತಿಂಡಿಗಳು',

                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                            ),
                                            textAlign: TextAlign.center,
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height*0.02,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: size.width*0.01),
                                      child:
                                          Text(language?'• All fried foods':'• ಎಲ್ಲಾ ಕರಿದ ಆಹಾರಗಳು',

                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                            ),
                                            textAlign: TextAlign.center,
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height*0.02,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: size.width*0.01),
                                      child:
                                          Text(language?'• Potato, tapioca':'• ಆಲೂಗಡ್ಡೆ, ಟಪಿಯೋಕಾ',

                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                            ),
                                            textAlign: TextAlign.center,
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height*0.02,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: size.width*0.01),
                                      child:
                                          Text(language?'• Pickles, oily gravies':' •ಉಪ್ಪಿನಕಾಯಿ, ಎಣ್ಣೆಯುಕ್ತ ಗ್ರೇವಿಗಳು',

                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                            ),
                                            textAlign: TextAlign.center,
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height*0.02,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: size.width*0.01),
                                      child:
                                      Text(language?'• Fats like butter, ghee, dalda, coconut oil':'• ಬೆಣ್ಣೆ, ತುಪ್ಪ, ಡಾಲ್ಡಾ, ತೆಂಗಿನ ಎಣ್ಣೆಯಂತಹ ಕೊಬ್ಬುಗಳು',

                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height*0.02,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: size.width*0.01),
                                      child:
                                      Text(language?'• Mutton, beef, pork and egg yolk':'• ಮಟನ್, ಗೋಮಾಂಸ, ಹಂದಿಮಾಂಸ ಮತ್ತು ಮೊಟ್ಟೆಯ ಹಳದಿ ಲೋಳೆ',

                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height*0.02,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: size.width*0.01),
                                      child:
                                      Text(language?'• Concentrated milks products like khoa, cream ':'• ಸಾಂದ್ರೀಕೃತ ಹಾಲಿನ ಉತ್ಪನ್ನಗಳು ಖೋವಾ, ಕೆನೆ',

                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height*0.02,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: size.width*0.01),
                                      child:
                                      Text(language?'• Bakery products like cakes and pastries':'• ಕೇಕ್ ಮತ್ತು ಪೇಸ್ಟ್ರಿಗಳಂತಹ ಬೇಕರಿ ಉತ್ಪನ್ನಗಳು',

                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height*0.02,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: size.width*0.01),
                                      child:
                                      Text(language?'• Aerated drinks':'• ಗಾಳಿ ತುಂಬಿದ ಪಾನೀಯಗಳು',

                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height*0.02,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: size.width*0.03),
                                      child:
                                          Column(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(),
                                                child: Text(language?'Follow the instructions given below:':'• ಕೆಳಗೆ ನೀಡಲಾದ ಸೂಚನೆಗಳನ್ನು ಅನುಸರಿಸಿ:',

                                                  style: TextStyle(
                                                    decoration: TextDecoration.underline,
                                                    color: Color(0xFFFFBD58),
                                                    fontSize: 22.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),),
                                              ),
                                            ],
                                          ),
                                    ),
                                    SizedBox(
                                      height: size.height*0.02,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: size.width*0.01),
                                      child:
                                      Text(language?'• Use only refined oil for cooking. Only 3 to 4 teaspoon (15-20 ml) oil id used per day':'• ಅಡುಗೆಗೆ ಕೇವಲ ಸಂಸ್ಕರಿಸಿದ ಎಣ್ಣೆಯನ್ನು ಬಳಸಿ. ದಿನಕ್ಕೆ 3 ರಿಂದ 4 ಟೀಚಮಚ (15-20 ಮಿಲಿ) ತೈಲ ಐಡಿ ಮಾತ್ರ ಬಳಸಲಾಗುತ್ತದೆ',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height*0.02,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: size.width*0.01),
                                      child:
                                      Text(language?'• Avoid adding any table salt to the foods. Avoid salty foods and adding extra salt at the table. Anything that tastes salty probably has too much salt (such as papad, pickle, soy sauce, tomato sauce, canned soups). Spice things up with lemon juice or herbs, instead of salt. ':'• ಆಹಾರಗಳಿಗೆ ಯಾವುದೇ ಟೇಬಲ್ ಉಪ್ಪನ್ನು ಸೇರಿಸುವುದನ್ನು ತಪ್ಪಿಸಿ. ಉಪ್ಪುಸಹಿತ ಆಹಾರವನ್ನು ತಪ್ಪಿಸಿ ಮತ್ತು ಮೇಜಿನ ಬಳಿ ಹೆಚ್ಚುವರಿ ಉಪ್ಪನ್ನು ಸೇರಿಸಿ. ಖಾರದ ರುಚಿಯಿರುವ ಯಾವುದೇ ವಸ್ತುವು ಹೆಚ್ಚು ಉಪ್ಪನ್ನು ಹೊಂದಿರುತ್ತದೆ (ಉದಾಹರಣೆಗೆ ಪಾಪಡ್, ಉಪ್ಪಿನಕಾಯಿ, ಸೋಯಾ ಸಾಸ್, ಟೊಮೆಟೊ ಸಾಸ್, ಪೂರ್ವಸಿದ್ಧ ಸೂಪ್‌ಗಳು). ಉಪ್ಪಿನ ಬದಲು ನಿಂಬೆ ರಸ ಅಥವಾ ಗಿಡಮೂಲಿಕೆಗಳೊಂದಿಗೆ ಮಸಾಲೆ ಪದಾರ್ಥಗಳನ್ನು ಸೇರಿಸಿ.',

                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height*0.02,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: size.width*0.01),
                                      child:
                                      Text(language?'• Fresh foods usually are better than processed foods.':'• ತಾಜಾ ಆಹಾರಗಳು ಸಾಮಾನ್ಯವಾಗಿ ಸಂಸ್ಕರಿಸಿದ ಆಹಾರಗಳಿಗಿಂತ ಉತ್ತಮವಾಗಿರುತ್ತವೆ.',

                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height*0.02,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: size.width*0.01),
                                      child:
                                      Text(language?'• Whole milk intake (including milk preparations) should be limited to 300 ml per day. If skimmed milk is used, allowance per day can be increased to 500 ml.':'• ಸಂಪೂರ್ಣ ಹಾಲಿನ ಸೇವನೆಯು (ಹಾಲಿನ ಸಿದ್ಧತೆಗಳನ್ನು ಒಳಗೊಂಡಂತೆ) ದಿನಕ್ಕೆ 300 ಮಿಲಿಗೆ ಸೀಮಿತವಾಗಿರಬೇಕು. ಕೆನೆರಹಿತ ಹಾಲನ್ನು ಬಳಸಿದರೆ, ದಿನಕ್ಕೆ ಭತ್ಯೆಯನ್ನು 500 ಮಿಲಿಗೆ ಹೆಚ್ಚಿಸಬಹುದು.',

                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height*0.02,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: size.width*0.01),
                                      child:
                                      Text(language?'• When shopping read food labels. Check the labels for the amount of sodium in the foods (1500mg to 2000mg) you are buying.':'ಶಾಪಿಂಗ್ ಮಾಡುವಾಗ ಆಹಾರ ಲೇಬಲ್‌ಗಳನ್ನು ಓದಿ. ನೀವು ಖರೀದಿಸುತ್ತಿರುವ ಆಹಾರಗಳಲ್ಲಿ (1500mg ನಿಂದ 2000mg) ಸೋಡಿಯಂ ಪ್ರಮಾಣಕ್ಕಾಗಿ ಲೇಬಲ್‌ಗಳನ್ನು ಪರಿಶೀಲಿಸಿ.',

                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height*0.02,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: size.width*0.01),
                                      child:
                                      Text(language?'• Non-vegetarian food permitted in the diet is only skin out chicken &fish. Allowance per day 50 to 75 grams of meat or two egg black is permitted in the diet every day':'• ಆಹಾರದಲ್ಲಿ ಅನುಮತಿಸಲಾದ ಮಾಂಸಾಹಾರಿ ಆಹಾರವು ಕೋಳಿ ಮತ್ತು ಮೀನುಗಳನ್ನು ಮಾತ್ರ ಚರ್ಮದಿಂದ ಹೊರಹಾಕುತ್ತದೆ. ದಿನಕ್ಕೆ ಭತ್ಯೆ 50 ರಿಂದ 75 ಗ್ರಾಂ ಮಾಂಸ ಅಥವಾ ಎರಡು ಮೊಟ್ಟೆಯ ಬಿಳಿಭಾಗವನ್ನು ಪ್ರತಿದಿನ ಆಹಾರದಲ್ಲಿ ಅನುಮತಿಸಲಾಗಿದೆ',

                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height*0.02,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: size.width*0.01),
                                      child:
                                      Text(language?'• Avoid processed foods and fast-food restaurants. These have very high in sodium.':'• ಸಂಸ್ಕರಿಸಿದ ಆಹಾರಗಳು ಮತ್ತು ಫಾಸ್ಟ್ ಫುಡ್ ರೆಸ್ಟೋರೆಂಟ್‌ಗಳನ್ನು ತಪ್ಪಿಸಿ. ಇವುಗಳಲ್ಲಿ ಸೋಡಿಯಂ ಅತಿ ಹೆಚ್ಚು.',

                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height*0.02,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: size.width*0.01),
                                      child:
                                      Text(language?'• To enhance fibre intake in the diet, whole grains, whole pulses, and whole wheat flour preparations should be included generously in the diet.':'• ಆಹಾರದಲ್ಲಿ ಫೈಬರ್ ಸೇವನೆಯನ್ನು ಹೆಚ್ಚಿಸಲು, ಧಾನ್ಯಗಳು, ಧಾನ್ಯಗಳು ಮತ್ತು ಸಂಪೂರ್ಣ ಗೋಧಿ ಹಿಟ್ಟಿನ ಸಿದ್ಧತೆಗಳನ್ನು ಆಹಾರದಲ್ಲಿ ಧಾರಾಳವಾಗಿ ಸೇರಿಸಿಕೊಳ್ಳಬೇಕು.',

                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height*0.02,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: size.width*0.01),
                                      child:
                                      Text(language?'• Underground vegetables like carrot, beetroot can be included in the diet once a week.':'• ಕ್ಯಾರೆಟ್, ಬೀಟ್ರೂಟ್ ಮುಂತಾದ ಭೂಗತ ತರಕಾರಿಗಳನ್ನು ವಾರಕ್ಕೊಮ್ಮೆ ಆಹಾರದಲ್ಲಿ ಸೇರಿಸಿಕೊಳ್ಳಬಹುದು.',

                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height*0.02,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: size.width*0.01),
                                      child:
                                      Text(language?'• Dal can be included in the diet twice daily.':'• ಢಲ್ ಅನ್ನು ದಿನಕ್ಕೆ ಎರಡು ಬಾರಿ ಆಹಾರದಲ್ಲಿ ಸೇರಿಸಿಕೊಳ್ಳಬಹುದು.',

                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height*0.02,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: size.width*0.01),
                                      child:
                                      Text(language?'• Raw vegetables, salads should be compulsory included in both the meals.':'• ಎರಡೂ ಊಟದಲ್ಲಿ ಹಸಿ ತರಕಾರಿಗಳು, ಸಲಾಡ್‌ಗಳನ್ನು ಕಡ್ಡಾಯವಾಗಿ ಸೇರಿಸಬೇಕು.',

                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height*0.02,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: size.width*0.01),
                                      child:
                                      Text(language?'• Only 100 gram of fruit is permitted per day. Fruit to be taken such as  Guava, apple, orange & sweet lime.  Take small and frequent meals at regular time.':'• ದಿನಕ್ಕೆ 100 ಗ್ರಾಂ ಹಣ್ಣುಗಳನ್ನು ಮಾತ್ರ ಅನುಮತಿಸಲಾಗಿದೆ. ಪೇರಲ, ಸೇಬು, ಕಿತ್ತಳೆ ಮತ್ತು ಸಿಹಿ ಸುಣ್ಣದಂತಹ ಹಣ್ಣುಗಳನ್ನು ತೆಗೆದುಕೊಳ್ಳಬೇಕು. ನಿಯಮಿತ ಸಮಯದಲ್ಲಿ ಸಣ್ಣ ಮತ್ತು ಆಗಾಗ್ಗೆ ಊಟ ತೆಗೆದುಕೊಳ್ಳಿ.',

                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height*0.02,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: size.width*0.01),
                                      child:
                                      Text(language?'• Do not skip meals.':'• ಊಟವನ್ನು ಬಿಡಬೇಡಿ.',

                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height*0.02,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: size.width*0.01),
                                      child:
                                      Text(language?'• Avoid salt substitutes that have potassium chloride in the ingredient list as it may cause other health problems':'• ಪದಾರ್ಥಗಳ ಪಟ್ಟಿಯಲ್ಲಿ ಪೊಟ್ಯಾಸಿಯಮ್ ಕ್ಲೋರೈಡ್ ಹೊಂದಿರುವ ಉಪ್ಪು ಬದಲಿಗಳನ್ನು ತಪ್ಪಿಸಿ ಏಕೆಂದರೆ ಇದು ಇತರ ಆರೋಗ್ಯ ಸಮಸ್ಯೆಗಳನ್ನು ಉಂಟುಮಾಡಬಹುದು',

                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height*0.4,
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
