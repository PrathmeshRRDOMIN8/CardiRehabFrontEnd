import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:HyCaRe/UI/introScreen.dart';
import 'package:flutter/services.dart';


import 'package:HyCaRe/UI/Patient/detailsdivision.dart';
import 'package:HyCaRe/UI/Patient/listOfCardiacRehab.dart';
import 'package:HyCaRe/UI/Patient/pushQuizPage.dart';
import 'package:HyCaRe/Cardiac/careOfInciRite.dart';
import 'package:HyCaRe/Cardiac/woundCare.dart';
import 'package:HyCaRe/Cardiac/bathing.dart';
import 'package:HyCaRe/Cardiac/physicalActivity.dart';
import 'package:HyCaRe/Cardiac/rest.dart';
import 'package:HyCaRe/Cardiac/stairsClimbing.dart';
import 'package:HyCaRe/Cardiac/posture.dart';
import 'package:HyCaRe/Cardiac/medications.dart';
import 'package:HyCaRe/Cardiac/exercise.dart';
import 'package:HyCaRe/Cardiac/dietForCABG.dart';
import 'package:HyCaRe/Cardiac/smoking.dart';
import 'package:HyCaRe/Cardiac/controlBloodPressure.dart';
import 'package:HyCaRe/Cardiac/controllingCholesterol.dart';
import 'package:HyCaRe/Cardiac/bloodSugarLevel.dart';
import 'package:HyCaRe/Cardiac/pyschologicalCare.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:firebase_messaging/firebase_messaging.dart';


const AndroidNotificationChannel channel = AndroidNotificationChannel(
    'high_importance_channel', // id
    'High Importance Notifications', // title
    description:
    'This channel is used for important notifications.', // description
    importance: Importance.high,
    playSound: true);

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
FlutterLocalNotificationsPlugin();

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  print('A bg message just showed up :  ${message.messageId}');
}


Future<void> main() async{

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) => runApp(MyApp()));

  await Firebase.initializeApp();
  final fcmToken = await FirebaseMessaging.instance.getToken();
  print("fcmToken: ${fcmToken}" );
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
      AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(channel);

  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  static const String id = 'Main';
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;
      if (notification != null && android != null) {
        flutterLocalNotificationsPlugin.show(
            notification.hashCode,
            notification.title,
            notification.body,
            NotificationDetails(
              android: AndroidNotificationDetails(
                channel.id,
                channel.name,
                channelDescription: channel.description,
                color: Colors.blue,
                playSound: true,
                icon: '@mipmap/ic_launcher',
              ),
            ));
      }
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      print('A new onMessageOpenedApp event was published!');
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;
      if (notification != null && android != null) {
        showDialog(
            context: context,
            builder: (_) {
              return AlertDialog(
                title: Text(notification.title!),
                content: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text(notification.body!)],
                  ),
                ),
              );
            });
      }
    });
  }


    // This widget is the root of your application.
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: IntroScreen.id,
        routes: {
          IntroScreen.id: (context) => IntroScreen(),
          // DetailDivision.id : (context) => DetailDivision(),
          ListRehab.id: (context) => ListRehab(),
          // PushQuizPage.id : (context) => PushQuizPage(),
          CareOfInciRite.id: (context) => CareOfInciRite(),
          WoundCare.id: (context) => WoundCare(),
          Bathing.id: (context) => Bathing(),
          PhysicalActivity.id: (context) => PhysicalActivity(),
          Rest.id: (context) => Rest(),
          StairsClimbing.id: (context) => StairsClimbing(),
          Posture.id: (context) => Posture(),
          Medications.id: (context) => Medications(),
          Exercise.id: (context) => Exercise(),
          DietForCABG.id: (context) => DietForCABG(),
          Smoking.id: (context) => Smoking(),
          ControlBloodPressure.id: (context) => ControlBloodPressure(),
          ControllingCholesterol.id: (context) => ControllingCholesterol(),
          BloodSugarLevel.id: (context) => BloodSugarLevel(),
          PsychologicalCare.id: (context) => PsychologicalCare(),
        },
      );
    }
  }
