// import 'package:flutter/material.dart';

// class DiagnosisScreen extends StatefulWidget {
//   const DiagnosisScreen({super.key});

//   @override
//   _DiagnosisScreenState createState() => _DiagnosisScreenState();
// }

// class _DiagnosisScreenState extends State<DiagnosisScreen> {
//   // شجرة القرارات
//   Map<String, dynamic> decisionTree = {
//     'Do you have pain in your sides?': {
//       'Yes': {
//         'Do you have a fever?': {
//           'Yes': 'Pyelonephritis',
//           'No': 'Kidney Stones',
//         },
//       },
//       'No': {
//         'Do you have swelling?': {
//           'Yes': 'Chronic Kidney Disease',
//           'No': 'Healthy',
//         },
//       },
//     },
//     'Is there a change in urine color?': {
//       'Yes': {
//         'Is there blood in the urine?': {
//           'Yes': 'Kidney Infection',
//           'No': 'Dehydration',
//         },
//       },
//       'No': {
//         'Do you have a burning sensation?': {
//           'Yes': 'Urinary Tract Infection',
//           'No': 'Healthy',
//         },
//       },
//     },
//   };

//   Map<String, dynamic>? currentNode;
//   String? currentQuestion;
//   String? diagnosisResult;

//   @override
//   void initState() {
//     super.initState();
//     resetTree(); // إعادة ضبط الشجرة لبدء التشخيص
//   }

//   void resetTree() {
//     setState(() {
//       currentNode = decisionTree; // نبدأ من الجذر
//       currentQuestion = currentNode!.keys.first; // السؤال الأول
//       diagnosisResult = null; // لا يوجد نتيجة بعد
//     });
//   }

//   void nextQuestion(String answer) {
//     setState(() {
//       // ننتقل إلى العقدة التالية بناءً على إجابة المستخدم
//       currentNode = currentNode![currentQuestion]?[answer];

//       if (currentNode is String) {
//         // إذا وصلنا إلى نتيجة (ورقة الشجرة)
//         diagnosisResult = currentNode;
//         currentQuestion = null;
//       } else {
//         // استمر في طرح الأسئلة
//         currentQuestion = currentNode!.keys.first;
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Kidney Diagnosis'),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             if (currentQuestion != null)
//               Column(
//                 children: [
//                   // السؤال الحالي
//                   Text(
//                     currentQuestion!,
//                     style: const TextStyle(
//                         fontSize: 22, fontWeight: FontWeight.bold),
//                     textAlign: TextAlign.center,
//                   ),
//                   const SizedBox(height: 20),
//                   // أزرار الإجابات
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       ElevatedButton.icon(
//                         onPressed: () => nextQuestion('Yes'),
//                         icon: const Icon(Icons.check, color: Colors.green),
//                         label:
//                             const Text('Yes', style: TextStyle(fontSize: 18)),
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: Colors.green[300],
//                           padding: const EdgeInsets.symmetric(horizontal: 20),
//                         ),
//                       ),
//                       ElevatedButton.icon(
//                         onPressed: () => nextQuestion('No'),
//                         icon: const Icon(Icons.close, color: Colors.red),
//                         label: const Text('No', style: TextStyle(fontSize: 18)),
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: Colors.red[300],
//                           padding: const EdgeInsets.symmetric(horizontal: 20),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               )
//             else if (diagnosisResult != null)
//               Column(
//                 children: [
//                   // عرض النتيجة بعد الإجابة على جميع الأسئلة
//                   const Text(
//                     'Diagnosis:',
//                     style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
//                   ),
//                   const SizedBox(height: 20),
//                   Container(
//                     padding: const EdgeInsets.all(16),
//                     decoration: BoxDecoration(
//                       color: Colors.blue[100],
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     child: Text(
//                       diagnosisResult!,
//                       style: TextStyle(
//                         fontSize: 24,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.blue[800],
//                       ),
//                       textAlign: TextAlign.center,
//                     ),
//                   ),
//                   const SizedBox(height: 30),
//                   ElevatedButton(
//                     onPressed: () {
//                       resetTree(); // إعادة تعيين الأسئلة والنتيجة
//                     },
//                     child: const Text('Restart Diagnosis'),
//                   ),
//                 ],
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }
