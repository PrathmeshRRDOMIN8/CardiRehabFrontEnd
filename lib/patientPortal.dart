// // import 'package:flutter/material.dart';
// // import 'package:kmc_medical_app/detailsdivision.dart';
// //
// //
// // class PatientPortal extends StatefulWidget {
// //   static const String id = 'Patient';
// //   String patient_id;
// //   PatientPortal(@required this.patient_id);
// //
// //   @override
// //   State<PatientPortal> createState() => _PatientPortalState();
// // }
// //
// // class _PatientPortalState extends State<PatientPortal> {
// //   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       body: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Center(
//             child:  Container(
//               margin: EdgeInsets.symmetric(vertical: 10),
//               padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
//               width: size.width*0.8,
//               decoration: BoxDecoration(
//                 color: Color(0xFFCA6CE5),
//                 borderRadius: BorderRadius.circular(29),
//               ),
//               child: TextButton(onPressed: (){
//                 Navigator.pushNamed(context, DetailDivision.id);
//               }, child: Text('Choose Language',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 20.0,
//                 ),),),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
