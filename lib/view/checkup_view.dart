import 'package:kidney_disease/core/Animation/animation_column_widget.dart';
import 'package:kidney_disease/core/constant/image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/constant/colors.dart';
import '../core/utils/style_text.dart';
import '../controller/tree.dart';
import '../widget/checkup/button_checkup_widget.dart';

class CheckupView extends StatefulWidget {
  static const routeName = "/CheckupView";

  const CheckupView({super.key});

  @override
  State<CheckupView> createState() => _CheckupViewState();
}

class _CheckupViewState extends State<CheckupView> {
  final kidneyDiagnosisTree = KidneyDiagnosisTree();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: scecondaryColor,
          foregroundColor: Colors.white,
          title: Text(
            TypeImage.CHECKUP.name.tr,
            style: mainTextStyle.copyWith(
              color: Colors.white,
            ),
          ),
          centerTitle: true),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: AnimationColumnWidget(
              children: [
                const SizedBox(height: 20),
                Image.asset("assets/icons/examination.png",
                    width: 120, height: 120, fit: BoxFit.fill),
                const SizedBox(height: 20),
                ListView.separated(
                  itemCount: kidneyDiagnosisTree.treeDengue.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => Column(
                    children: [
                      CheckboxListTile(
                        title: Text(
                          kidneyDiagnosisTree.treeDengue[index][0]
                              .toString()
                              .tr,
                          style: scecondaryTextStyle,
                        ),
                        secondary: Image.asset(
                          TypeImage.CHECKUP.value(),
                          // color: scecondaryColor,
                        ),
                        activeColor: scecondaryColor,
                        value: kidneyDiagnosisTree.tree[
                                kidneyDiagnosisTree.treeDengue[index][0]] ??
                            false,
                        onChanged: (value) => setState(() {
                          kidneyDiagnosisTree.tree[
                              kidneyDiagnosisTree.treeDengue[index][0]] = value;
                        }),
                      ),
                    ],
                  ),
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider(color: mainColor),
                ),
                ButtonCheckupWidget(treeDengue: kidneyDiagnosisTree),
                const SizedBox(height: 20)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class CheckupView44 extends StatefulWidget {
//   static const routeName = "/CheckupView";
//   const CheckupView44({super.key});

//   @override
//   State<CheckupView44> createState() => _DiagnosisScreenState();
// }

// class _DiagnosisScreenState extends State<CheckupView44> {
//   // Symptoms selected by the user
//   Map<String, bool> symptoms = {
//     'changeInUrineColor': false,
//     'interruptionOfUrine': false,
//     'paleSkin': false,
//     'painInSides': false,
//     'lackOfSufficientUrine': false,
//     'bloodInUrine': false,
//     'swelling': false,
//     'heartburn': false,
//     'abdominalBlockage': false,
//     'fever': false,
//   };

//   String diagnosis = '';

//   // Decision Tree stored as a list of maps
//   List<Map<String, dynamic>> decisionTree = [
//     {
//       'changeInUrineColor': false,
//       'interruptionOfUrine': false,
//       'paleSkin': false,
//       'painInSides': false,
//       'lackOfSufficientUrine': false,
//       'diagnosis': 'Pyelonephritis',
//     },
//     {
//       'changeInUrineColor': false,
//       'interruptionOfUrine': false,
//       'paleSkin': false,
//       'painInSides': false,
//       'lackOfSufficientUrine': true,
//       'bloodInUrine': false,
//       'diagnosis': 'Kidney Cancer',
//     },
//     {
//       'changeInUrineColor': false,
//       'interruptionOfUrine': false,
//       'paleSkin': false,
//       'painInSides': true,
//       'diagnosis': 'Chronic Kidney',
//     },
//     {
//       'changeInUrineColor': true,
//       'interruptionOfUrine': false,
//       'paleSkin': false,
//       'painInSides': false,
//       'fever': false,
//       'diagnosis': 'Kidney Stones',
//     }, // Add more conditions as needed
//   ];

// // Function to get diagnosis based on symptoms
//   String getDiagnosis(Map<String, bool> symptoms) {
//     for (var condition in decisionTree) {
//       bool match = true;
//       condition.forEach((key, value) {
//         if (key != 'diagnosis' &&
//             symptoms.containsKey(key) &&
//             symptoms[key] != value) {
//           match = false;
//         }
//       });
//       if (match) {
//         return condition['diagnosis'] as String;
//       }
//     }
//     return 'Unknown Diagnosis';
//   }

//   @override
//   Widget build(BuildContext context) {
//     return const DiagnosisForm();
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Medical Diagnosis'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             Expanded(
//               child: ListView(
//                 children: symptoms.keys.map((symptom) {
//                   return CheckboxListTile(
//                     title: Text(symptom.replaceAll(RegExp(r'([a-z])([A-Z])'),
//                         r'$1 $2')), // To make the symptom names more
//                     value: symptoms[symptom],
//                     onChanged: (bool? value) {
//                       setState(() {
//                         symptoms[symptom] = value ?? false;
//                       });
//                     },
//                   );
//                 }).toList(),
//               ),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   diagnosis = getDiagnosis(symptoms);
//                 });
//               },
//               child: const Text('Diagnose'),
//             ),
//             const SizedBox(height: 20),
//             Text(
//               'Diagnosis: $diagnosis',
//               style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class CheckupView3 extends StatefulWidget {
//   const CheckupView3({super.key});
//   static const routeName = "/CheckupView";
//   @override
//   State<CheckupView3> createState() => _DecisionTreeScreenState();
// }

// class _DecisionTreeScreenState extends State<CheckupView3> {
//   // Variables to store user input
//   bool changeInUrineColor = false;
//   bool interruptionOfUrine = false;
//   bool paleSkin = false;
//   bool painInSides = false;
//   bool lackOfSufficientUrine = false;
//   bool bloodInUrine = false;
//   bool swelling = false;
//   bool heartburn = false;
//   bool fever = false;
//   bool abdominalBlockage = false;

//   String diagnosis = '';

//   // Decision Tree Function
//   void runDecisionTree() {
//     if (!changeInUrineColor) {
//       if (!interruptionOfUrine) {
//         if (!paleSkin) {
//           if (!painInSides) {
//             if (!lackOfSufficientUrine) {
//               diagnosis = 'Pyelonephritis';
//             } else {
//               if (!bloodInUrine) {
//                 diagnosis = 'Kidney Cancer';
//               } else {
//                 diagnosis = 'Pyelonephritis';
//               }
//             }
//           } else {
//             diagnosis = 'Chronic Kidney';
//           }
//         } else {
//           if (!swelling) {
//             diagnosis = 'Renal Cell';
//           } else {
//             diagnosis = 'Pyelonephritis';
//           }
//         }
//       } else {
//         if (!paleSkin) {
//           if (!heartburn) {
//             if (!lackOfSufficientUrine) {
//               diagnosis = 'Chronic Kidney';
//             } else {
//               if (!abdominalBlockage) {
//                 diagnosis = 'Pyelonephritis';
//               } else {
//                 diagnosis = 'Chronic Kidney';
//               }
//             }
//           } else {
//             if (!lackOfSufficientUrine) {
//               diagnosis = 'Chronic Kidney';
//             } else {
//               diagnosis = 'Kidney Infection';
//             }
//           }
//         } else {
//           if (!heartburn) {
//             diagnosis = 'Kidney Infection';
//           } else {
//             diagnosis = 'Pyelonephritis';
//           }
//         }
//       }
//     } else {
//       if (!lackOfSufficientUrine) {
//         if (!painInSides) {
//           if (!fever) {
//             if (!heartburn) {
//               diagnosis = 'Kidney Stones';
//             } else {
//               diagnosis = 'Pyelonephritis';
//             }
//           } else {
//             if (!swelling) {
//               if (!heartburn) {
//                 if (!paleSkin) {
//                   diagnosis = 'Pyelonephritis';
//                 } else {
//                   diagnosis = 'Kidney Stones';
//                 }
//               } else {
//                 diagnosis = 'Bladder Infection';
//               }
//             } else {
//               if (!interruptionOfUrine) {
//                 diagnosis = 'Chronic Kidney';
//               } else {
//                 diagnosis = 'Kidney Inflammation';
//               }
//             }
//           }
//         } else {
//           if (!swelling) {
//             if (!interruptionOfUrine) {
//               if (!fever) {
//                 diagnosis = 'Chronic Kidney';
//               } else {
//                 diagnosis = 'Renal Cell';
//               }
//             } else {
//               if (!paleSkin) {
//                 diagnosis = 'Chronic Kidney';
//               } else {
//                 diagnosis = 'Kidney Stones';
//               }
//             }
//           } else {
//             if (!interruptionOfUrine) {
//               if (!heartburn) {
//                 diagnosis = 'Kidney Stones';
//               } else {
//                 diagnosis = 'Urinary Tract';
//               }
//             } else {
//               diagnosis = 'Urinary Tract';
//             }
//           }
//         }
//       } else {
//         if (!abdominalBlockage) {
//           if (!bloodInUrine) {
//             if (!heartburn) {
//               diagnosis = 'Pyelonephritis';
//             } else {
//               if (!interruptionOfUrine) {
//                 diagnosis = 'Kidney Cancer';
//               } else {
//                 diagnosis = 'Kidney Inflammation';
//               }
//             }
//           } else {
//             if (!heartburn) {
//               diagnosis = 'Pyelonephritis';
//             } else {
//               diagnosis = 'Chronic Kidney';
//             }
//           }
//         } else {
//           if (!fever) {
//             if (!bloodInUrine) {
//               diagnosis = 'Pyelonephritis';
//             } else {
//               if (!paleSkin) {
//                 diagnosis = 'Pyelonephritis';
//               } else {
//                 diagnosis = 'Kidney Stones';
//               }
//             }
//           } else {
//             if (!painInSides) {
//               if (!interruptionOfUrine) {
//                 if (!swelling) {
//                   diagnosis = 'Kidney Stones';
//                 } else {
//                   diagnosis = 'Pyelonephritis';
//                 }
//               } else {
//                 if (!heartburn) {
//                   if (!paleSkin) {
//                     diagnosis = 'Acute Kidney Failure';
//                   } else {
//                     diagnosis = 'Chronic Kidney';
//                   }
//                 } else {
//                   diagnosis = 'Kidney Infection';
//                 }
//               }
//             } else {
//               if (!swelling) {
//                 diagnosis = 'Kidney Stones';
//               } else {
//                 if (!heartburn) {
//                   diagnosis = 'Chronic Kidney';
//                 } else {
//                   if (!bloodInUrine) {
//                     diagnosis = 'Bladder Infection';
//                   } else {
//                     diagnosis = 'Chronic Kidney';
//                   }
//                 }
//               }
//             }
//           }
//         }
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Decision Tree Diagnosis'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             SwitchListTile(
//               title: const Text('Change in Urine Color'),
//               value: changeInUrineColor,
//               onChanged: (bool value) {
//                 setState(() {
//                   changeInUrineColor = value;
//                 });
//               },
//             ),
//             // Repeat for other symptoms...
//             ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   runDecisionTree();
//                 });
//               },
//               child: const Text('Diagnose'),
//             ),
//             const SizedBox(height: 20),
//             Text('Diagnosis: $diagnosis',
//                 style:
//                     const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class DiagnosisForm extends StatefulWidget {
//   const DiagnosisForm({super.key});

//   @override
//   _DiagnosisFormState createState() => _DiagnosisFormState();
// }

// class _DiagnosisFormState extends State<DiagnosisForm> {
//   List treeDengue = [
//     ["Sex", false],
//     ["Age", false],
//     ["Are you suffering from insufficient urine output", false],
//     ["Are you suffering from anuria", false],
//     ["Are you suffering from heartburn", false],
//     ["Is there blood in your urine", false],
//     ["Are you suffering from changes in urine color", false],
//     ["Are you suffering from pain in the sides", false],
//     ["Are you suffering from abdominal bloating", false],
//     ["Are you suffering from a fever", false],
//     ["Are you suffering from swelling", false],
//     ["Are you suffering from pale skin", false],
//     ["Types of Dengue fever", false],
//   ];

//   Map<String, dynamic> userInput = {};

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Medical Diagnosis"),
//       ),
//       body: ListView.builder(
//         itemCount: treeDengue.length,
//         itemBuilder: (context, index) {
//           return CheckboxListTile(
//             title: Text((treeDengue[index][0]).toString().tr),
//             value: userInput[treeDengue[index][0]] ?? false,
//             onChanged: (value) {
//               setState(() {
//                 userInput[treeDengue[index][0]] = value;
//               });
//             },
//           );
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           String diagnosis = diagnose(userInput);
//           showDialog(
//             context: context,
//             builder: (context) {
//               return AlertDialog(
//                 title: const Text("Diagnosis Result"),
//                 content: Text(diagnosis),
//                 actions: [
//                   TextButton(
//                     onPressed: () {
//                       Navigator.of(context).pop();
//                     },
//                     child: const Text("OK"),
//                   ),
//                 ],
//               );
//             },
//           );
//         },
//         child: const Icon(Icons.check),
//       ),
//     );
//   }

//   // شجرة القرار
//   String diagnose(Map<String, dynamic> input) {
//     if ((input["Are you suffering from changes in urine color"] ?? false) ==
//         false) {
//       if ((input["Are you suffering from anuria"] ?? false) == false) {
//         if ((input["Are you suffering from pale skin"] ?? false) == false) {
//           if ((input["Are you suffering from pain in the sides"] ?? false) ==
//               false) {
//             if ((input["Are you suffering from insufficient urine output"] ??
//                     "") ==
//                 false) {
//               return "Pyelonephritis";
//             } else {
//               if ((input["Is there blood in your urine"] ?? false) == false) {
//                 return "Kidney Cancer";
//               } else {
//                 return "Pyelonephritis";
//               }
//             }
//           } else {
//             return "Chronic Kidney Disease";
//           }
//         } else {
//           if ((input["Are you suffering from swelling"] ?? false) == false) {
//             return "Renal Cell Carcinoma";
//           } else {
//             return "Pyelonephritis";
//           }
//         }
//       } else {
//         // فحص للحالات الأخرى في شجرة القرار
//         if ((input["Are you suffering from heartburn"] ?? false) == false) {
//           if ((input["Are you suffering from insufficient urine output"] ??
//                   "") ==
//               false) {
//             return "Chronic Kidney Disease";
//           } else {
//             if ((input["Are you suffering from abdominal bloating"] ?? false) ==
//                 false) {
//               return "Pyelonephritis";
//             } else {
//               return "Chronic Kidney Disease";
//             }
//           }
//         } else {
//           if ((input["Are you suffering from insufficient urine output"] ??
//                   "") ==
//               false) {
//             return "Chronic Kidney Disease";
//           } else {
//             return "Kidney Infection";
//           }
//         }
//       }
//     } else {
//       // جزء آخر من شجرة القرار
//       if ((input["Are you suffering from insufficient urine output"] ??
//               false) ==
//           false) {
//         if ((input["Are you suffering from pain in the sides"] ?? false) ==
//             false) {
//           if ((input["Are you suffering from a fever"] ?? false) == false) {
//             return "Kidney Stones";
//           } else {
//             return "Pyelonephritis";
//           }
//         } else {
//           return "Chronic Kidney Disease";
//         }
//       } else {
//         return "Acute Kidney Failure";
//       }
//     }
//   }
// }




// import 'package:flutter/material.dart';
// import 'package:kidney_disease/core/Animation/animation_column_widget.dart';
// import 'package:kidney_disease/core/constant/image.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../core/constant/colors.dart';
// import '../core/utils/style_text.dart';
// import '../model/tree.dart';
// import '../widget/checkup/button_checkup_widget.dart';

// class KidneyDiagnosisTree {
//   Map<String, dynamic> tree = {
//     "Change in Urine Color": {
//       "No": {
//         "Interruption of Urine": {
//           "No": {
//             "Pale Skin": {
//               "No": {
//                 "Pain in Sides": {
//                   "No": {
//                     "Lack of Sufficient Urine": {
//                       "No":
//                           "Pyelonephritis {Chronic Kidney=0, Pyelonephritis=2, Kidney Inflammation=0, Kidney Infection=0, Kidney Cancer=0, Renal Cell=0, Kidney Stones=0, Bladder Infection=0, Acute Kidney Failure=0, Urinary Tract=0}",
//                       "Yes": {
//                         "Blood in Urine": {
//                           "No":
//                               "Kidney Cancer {Chronic Kidney=0, Pyelonephritis=0, Kidney Inflammation=0, Kidney Infection=0, Kidney Cancer=2, Renal Cell=0, Kidney Stones=0, Bladder Infection=0, Acute Kidney Failure=0, Urinary Tract=0}",
//                           "Yes":
//                               "Pyelonephritis {Chronic Kidney=0, Pyelonephritis=1, Kidney Inflammation=0, Kidney Infection=0, Kidney Cancer=1, Renal Cell=0, Kidney Stones=0, Bladder Infection=0, Acute Kidney Failure=0, Urinary Tract=0}",
//                         }
//                       }
//                     }
//                   },
//                   "Yes":
//                       "Chronic Kidney {Chronic Kidney=1, Pyelonephritis=0, Kidney Inflammation=0, Kidney Infection=0, Kidney Cancer=0, Renal Cell=0, Kidney Stones=0, Bladder Infection=1, Acute Kidney Failure=1, Urinary Tract=0}"
//                 }
//               },
//               "Yes": {
//                 "Swelling": {
//                   "No":
//                       "Renal Cell {Chronic Kidney=0, Pyelonephritis=0, Kidney Inflammation=0, Kidney Infection=0, Kidney Cancer=0, Renal Cell=3, Kidney Stones=0, Bladder Infection=0, Acute Kidney Failure=1, Urinary Tract=0}",
//                   "Yes":
//                       "Pyelonephritis {Chronic Kidney=0, Pyelonephritis=2, Kidney Inflammation=0, Kidney Infection=0, Kidney Cancer=0, Renal Cell=0, Kidney Stones=0, Bladder Infection=1, Acute Kidney Failure=0, Urinary Tract=0}"
//                 }
//               }
//             }
//           },
//           "Yes": {
//             "Pale Skin": {
//               "No": {
//                 "Heartburn": {
//                   "No": {
//                     "Lack of Sufficient Urine": {
//                       "No":
//                           "Chronic Kidney {Chronic Kidney=3, Pyelonephritis=0, Kidney Inflammation=0, Kidney Infection=0, Kidney Cancer=0, Renal Cell=1, Kidney Stones=0, Bladder Infection=0, Acute Kidney Failure=0, Urinary Tract=0}",
//                       "Yes": {
//                         "Abdominal Blockage": {
//                           "No":
//                               "Pyelonephritis {Chronic Kidney=0, Pyelonephritis=1, Kidney Inflammation=0, Kidney Infection=0, Kidney Cancer=0, Renal Cell=0, Kidney Stones=0, Bladder Infection=0, Acute Kidney Failure=1, Urinary Tract=0}",
//                           "Yes":
//                               "Chronic Kidney {Chronic Kidney=1, Pyelonephritis=0, Kidney Inflammation=0, Kidney Infection=0, Kidney Cancer=0, Renal Cell=0, Kidney Stones=0, Bladder Infection=0, Acute Kidney Failure=0, Urinary Tract=1}"
//                         }
//                       }
//                     }
//                   },
//                   "Yes": {
//                     "Lack of Sufficient Urine": {
//                       "No":
//                           "Chronic Kidney {Chronic Kidney=1, Pyelonephritis=0, Kidney Inflammation=0, Kidney Infection=1, Kidney Cancer=0, Renal Cell=0, Kidney Stones=0, Bladder Infection=0, Acute Kidney Failure=0, Urinary Tract=1}",
//                       "Yes":
//                           "Kidney Infection {Chronic Kidney=0, Pyelonephritis=0, Kidney Inflammation=0, Kidney Infection=1, Kidney Cancer=0, Renal Cell=0, Kidney Stones=0, Bladder Infection=1, Acute Kidney Failure=0, Urinary Tract=0}"
//                     }
//                   }
//                 }
//               },
//               "Yes": {
//                 "Heartburn": {
//                   "No":
//                       "Kidney Infection {Chronic Kidney=0, Pyelonephritis=0, Kidney Inflammation=1, Kidney Infection=2, Kidney Cancer=0, Renal Cell=0, Kidney Stones=0, Bladder Infection=0, Acute Kidney Failure=0, Urinary Tract=0}",
//                   "Yes":
//                       "Pyelonephritis {Chronic Kidney=0, Pyelonephritis=1, Kidney Inflammation=0, Kidney Infection=0, Kidney Cancer=1, Renal Cell=0, Kidney Stones=0, Bladder Infection=1, Acute Kidney Failure=0, Urinary Tract=0}"
//                 }
//               }
//             }
//           }
//         }
//       },
//       "Yes": {
//         "Lack of Sufficient Urine": {
//           "No": {
//             "Pain in Sides": {
//               "No": {
//                 "Fever": {
//                   "No": {
//                     "Heartburn": {
//                       "No":
//                           "Kidney Stones {Chronic Kidney=0, Pyelonephritis=0, Kidney Inflammation=0, Kidney Infection=0, Kidney Cancer=0, Renal Cell=0, Kidney Stones=1, Bladder Infection=0, Acute Kidney Failure=1, Urinary Tract=0}",
//                       "Yes":
//                           "Pyelonephritis {Chronic Kidney=0, Pyelonephritis=1, Kidney Inflammation=0, Kidney Infection=0, Kidney Cancer=0, Renal Cell=0, Kidney Stones=1, Bladder Infection=0, Acute Kidney Failure=0, Urinary Tract=0}"
//                     }
//                   },
//                   "Yes": {
//                     "Swelling": {
//                       "No": {
//                         "Heartburn": {
//                           "No": {
//                             "Pale Skin": {
//                               "No":
//                                   "Pyelonephritis {Chronic Kidney=0, Pyelonephritis=1, Kidney Inflammation=0, Kidney Infection=0, Kidney Cancer=1, Renal Cell=0, Kidney Stones=1, Bladder Infection=0, Acute Kidney Failure=0, Urinary Tract=0}",
//                               "Yes":
//                                   "Kidney Stones {Chronic Kidney=0, Pyelonephritis=0, Kidney Inflammation=0, Kidney Infection=0, Kidney Cancer=0, Renal Cell=0, Kidney Stones=2, Bladder Infection=1, Acute Kidney Failure=0, Urinary Tract=0}"
//                             }
//                           },
//                           "Yes":
//                               "Bladder Infection {Chronic Kidney=1, Pyelonephritis=0, Kidney Inflammation=0, Kidney Infection=0, Kidney Cancer=0, Renal Cell=0, Kidney Stones=0, Bladder Infection=2, Acute Kidney Failure=0, Urinary Tract=0}"
//                         }
//                       },
//                       "Yes": {
//                         "Interruption of Urine": {
//                           "No":
//                               "Chronic Kidney {Chronic Kidney=1, Pyelonephritis=0, Kidney Inflammation=0, Kidney Infection=0, Kidney Cancer=0, Renal Cell=1, Kidney Stones=0, Bladder Infection=0, Acute Kidney Failure=0, Urinary Tract=0}",
//                           "Yes":
//                               "Kidney Inflammation {Chronic Kidney=0, Pyelonephritis=0, Kidney Inflammation=1, Kidney Infection=0, Kidney Cancer=0, Renal Cell=0, Kidney Stones=0, Bladder Infection=1, Acute Kidney Failure=0, Urinary Tract=0}"
//                         }
//                       }
//                     }
//                   }
//                 }
//               },
//               "Yes": {
//                 "Swelling": {
//                   "No": {
//                     "Interruption of Urine": {
//                       "No": {
//                         "Fever": {
//                           "No":
//                               "Chronic Kidney {Chronic Kidney=1, Pyelonephritis=0, Kidney Inflammation=0, Kidney Infection=0, Kidney Cancer=0, Renal Cell=1, Kidney Stones=0, Bladder Infection=0, Acute Kidney Failure=0, Urinary Tract=0}",
//                           "Yes":
//                               "Renal Cell {Chronic Kidney=0, Pyelonephritis=0, Kidney Inflammation=0, Kidney Infection=0, Kidney Cancer=0, Renal Cell=1, Kidney Stones=0, Bladder Infection=0, Acute Kidney Failure=1, Urinary Tract=0}"
//                         }
//                       },
//                       "Yes": {
//                         "Pale Skin": {
//                           "No":
//                               "Chronic Kidney {Chronic Kidney=2, Pyelonephritis=0, Kidney Inflammation=0, Kidney Infection=0, Kidney Cancer=0, Renal Cell=0, Kidney Stones=0, Bladder Infection=0, Acute Kidney Failure=0, Urinary Tract=0}",
//                           "Yes":
//                               "Kidney Stones {Chronic Kidney=0, Pyelonephritis=0, Kidney Inflammation=0, Kidney Infection=0, Kidney Cancer=0, Renal Cell=0, Kidney Stones=2, Bladder Infection=1, Acute Kidney Failure=0, Urinary Tract=0}"
//                         }
//                       }
//                     }
//                   },
//                   "Yes": {
//                     "Heartburn": {
//                       "No":
//                           "Kidney Stones {Chronic Kidney=0, Pyelonephritis=0, Kidney Inflammation=0, Kidney Infection=0, Kidney Cancer=0, Renal Cell=0, Kidney Stones=2, Bladder Infection=0, Acute Kidney Failure=0, Urinary Tract=0}",
//                       "Yes":
//                           "Urinary Tract {Chronic Kidney=0, Pyelonephritis=0, Kidney Inflammation=0, Kidney Infection=0, Kidney Cancer=0, Renal Cell=0, Kidney Stones=1, Bladder Infection=0, Acute Kidney Failure=0, Urinary Tract=2}"
//                     }
//                   }
//                 }
//               }
//             }
//           }
//         }
//       }
//     }
//   };

//   // دالة التشخيص بناءً على الإجابات.
//   String diagnose(Map<String, String> responses) {
//     Map<String, dynamic> currentNode = tree;

//     for (String question in responses.keys) {
//       String answer = responses[question]!;
//       if (currentNode.containsKey(question)) {
//         if (currentNode[question].containsKey(answer)) {
//           currentNode = currentNode[question][answer];
//         } else {
//           return "Unknown condition!";
//         }
//       }
//       if (currentNode is String) {
//         return currentNode.toString();
//       }
//     }
//     return "Diagnosis not found!";
//   }

//   // استخرج الأسئلة من الشجرة
//   List<String> extractQuestions() {
//     List<String> questions = [];
//     dynamic currentNode = tree;

//     while (currentNode is Map<String, dynamic>) {
//       String question = currentNode.keys.first;
//       questions.add(question);
//       currentNode = currentNode[question];
//     }
//     return questions;
//   }
// }

// class CheckupView extends StatefulWidget {
//   const CheckupView({super.key});
//   static const routeName = "/CheckupView";
//   @override
//   _DiagnosisScreenState createState() => _DiagnosisScreenState();
// }

// class _DiagnosisScreenState extends State<CheckupView> {
//   // الأسئلة التي سيتم عرضها
//   final List<String> questions = [
//     "Change in Urine Color",
//     "Interruption of Urine",
//     "Pale Skin",
//     "Pain in Sides",
//     "Lack of Sufficient Urine",
//     "Blood in Urine",
//     "Swelling",
//     "Heartburn",
//     "Abdominal Blockage",
//     "Fever",
//   ];

//   // تخزين الإجابات
//   Map<String, String> responses = {};

//   // نتيجة التشخيص
//   String? diagnosisResult;

//   // شجرة القرار للتشخيص (تحتاج إلى الشجرة الفعلية)

//   // دالة التشخيص بناءً على الإجابات
//   String diagnose(Map<String, String> responses) {
//     Map<String, dynamic> currentNode = KidneyDiagnosisTree().tree;

//     for (String question in responses.keys) {
//       print(question);
//       String answer = responses[question]!;
//       if (currentNode.containsKey(question)) {
//         if (currentNode[question].containsKey(answer)) {
//           currentNode = currentNode[question][answer];
//         } else {
//           return "Unknown condition!";
//         }
//       }
//       if (currentNode is String) {
//         return currentNode.toString();
//       }
//     }
//     return "Diagnosis not found!";
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Kidney Diagnosis'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             Expanded(
//               child: ListView.builder(
//                 itemCount: questions.length,
//                 itemBuilder: (context, index) {
//                   String question = questions[index];
//                   return Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         question,
//                         style: const TextStyle(
//                             fontSize: 18, fontWeight: FontWeight.bold),
//                       ),
//                       RadioListTile<String>(
//                         title: const Text('Yes'),
//                         value: 'Yes',
//                         groupValue: responses[question],
//                         onChanged: (value) {
//                           setState(() {
//                             responses[question] = value!;
//                           });
//                         },
//                       ),
//                       RadioListTile<String>(
//                         title: const Text('No'),
//                         value: 'No',
//                         groupValue: responses[question],
//                         onChanged: (value) {
//                           setState(() {
//                             responses[question] = value!;
//                           });
//                         },
//                       ),
//                     ],
//                   );
//                 },
//               ),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 // إجراء التشخيص بناءً على الإجابات
//                 setState(() {
//                   diagnosisResult = diagnose(responses);
//                 });
//               },
//               child: const Text('تشخيص'),
//             ),
//             if (diagnosisResult != null)
//               Padding(
//                 padding: const EdgeInsets.only(top: 16.0),
//                 child: Text(
//                   'نتيجة التشخيص: $diagnosisResult',
//                   style: const TextStyle(
//                       fontSize: 18, fontWeight: FontWeight.bold),
//                 ),
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class CheckupView extends StatefulWidget {
//   const CheckupView({super.key});
//   static const routeName = "/CheckupView";
//   @override
//   _QuestionnaireScreenState createState() => _QuestionnaireScreenState();
// }

// class _QuestionnaireScreenState extends State<CheckupView> {
//   int currentQuestionIndex = 0;

//   List<Question> questions = [
//     Question('Interruption of Urine?', ['No', 'Yes']),
//     Question('Pale Skin?', ['No', 'Yes']),
//     Question('Pain in Sides?', ['No', 'Yes']),
//     Question('Lack of Sufficient Urine?', ['No', 'Yes']),
//     // Add more questions based on the diagram
//   ];

//   Map<String, int> results = {
//     'Chronic Kidney': 0,
//     'Pyelonephritis': 0,
//     'Kidney Inflammation': 0,
//     'Kidney Infection': 0,
//     'Kidney Cancer': 0,
//     'Renal Cell': 0,
//     'Kidney Stones': 0,
//     'Bladder Infection': 0,
//     'Acute Kidney Failure': 0,
//     'Urinary Tract': 0
//   };

//   void _onAnswerSelected(String answer) {
//     // Update results based on the question and answer
//     setState(() {
//       if (questions[currentQuestionIndex].questionText ==
//               'Interruption of Urine?' &&
//           answer == 'No') {
//         results['Pyelonephritis'] = (results['Pyelonephritis'] ?? 0) + 2;
//       }
//       if (questions[currentQuestionIndex].questionText == 'Pale Skin?' &&
//           answer == 'Yes') {
//         results['Renal Cell'] = (results['Renal Cell'] ?? 0) + 3;
//       }
//       // Add other conditions here

//       // Move to next question
//       if (currentQuestionIndex < questions.length - 1) {
//         currentQuestionIndex++;
//       } else {
//         // All questions answered, show result
//         _showResult();
//       }
//     });
//   }

//   void _showResult() {
//     String finalResult =
//         results.entries.reduce((a, b) => a.value > b.value ? a : b).key;

//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         title: const Text('Diagnosis Result'),
//         content: Text('The most likely condition is: $finalResult'),
//         actions: [
//           TextButton(
//             child: const Text('OK'),
//             onPressed: () {
//               Navigator.of(context).pop();
//               setState(() {
//                 currentQuestionIndex = 0;
//                 results.updateAll((key, value) => 0); // Reset results
//               });
//             },
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Health Questionnaire'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Text(
//               questions[currentQuestionIndex].questionText,
//               style: const TextStyle(fontSize: 20.0),
//             ),
//             const SizedBox(height: 20),
//             ...questions[currentQuestionIndex]
//                 .answers
//                 .map((answer) => ElevatedButton(
//                       onPressed: () => _onAnswerSelected(answer),
//                       child: Text(answer),
//                     ))
//                 .toList(),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class Question {
//   final String questionText;
//   final List<String> answers;

//   Question(this.questionText, this.answers);
// }
