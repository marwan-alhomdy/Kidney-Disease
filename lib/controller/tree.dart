import 'status_dengue.dart';

class KidneyDiagnosisTree {
  List treeDengue = [
    ["Sex", false],
    ["Age", false],
    ["Are you suffering from insufficient urine output", false],
    ["Are you suffering from anuria", false],
    ["Are you suffering from heartburn", false],
    ["Is there blood in your urine", false],
    ["Are you suffering from changes in urine color", false],
    ["Are you suffering from pain in the sides", false],
    ["Are you suffering from abdominal bloating", false],
    ["Are you suffering from a fever", false],
    ["Are you suffering from swelling", false],
    ["Are you suffering from pale skin", false]
  ];

  Map<String, dynamic> tree = {};

  // التحقق من اكتمال المدخلات
  bool isInputComplete() {
    for (int i = 2; i < treeDengue.length; i++) {
      if (tree[treeDengue[i][0]] != null) {
        return true;
      }
    }
    return false;
  }

  // دالة التشخيص بناءً على الإجابات.
  StatusDengue diagnose() {
    if (!isInputComplete()) {
      return StatusDengue.incompleteInput; // حالة توضح أن المدخلات غير مكتملة
    }

    if ((tree[treeDengue[6][0]] ?? false) == false) {
      if ((tree[treeDengue[3][0]] ?? false) == false) {
        if ((tree[treeDengue[11][0]] ?? false) == false) {
          if ((tree[treeDengue[7][0]] ?? false) == false) {
            if ((tree[treeDengue[2][0]] ?? "") == false) {
              return StatusDengue.pyelonephritis;
            } else {
              if ((tree[treeDengue[5][0]] ?? false) == false) {
                return StatusDengue.kidneyCancer;
              } else {
                return StatusDengue.pyelonephritis;
              }
            }
          } else {
            return StatusDengue.chronicKidneyDisease;
          }
        } else {
          if ((tree[treeDengue[10][0]] ?? false) == false) {
            return StatusDengue.renalCellCarcinoma;
          } else {
            return StatusDengue.pyelonephritis;
          }
        }
      } else {
        if ((tree[treeDengue[4][0]] ?? false) == false) {
          if ((tree[treeDengue[2][0]] ?? "") == false) {
            return StatusDengue.chronicKidneyDisease;
          } else {
            if ((tree[treeDengue[8][0]] ?? false) == false) {
              return StatusDengue.pyelonephritis;
            } else {
              return StatusDengue.chronicKidneyDisease;
            }
          }
        } else {
          if ((tree[treeDengue[2][0]] ?? "") == false) {
            return StatusDengue.chronicKidneyDisease;
          } else {
            return StatusDengue.kidneyInfection;
          }
        }
      }
    } else {
      if ((tree[treeDengue[2][0]] ?? false) == false) {
        if ((tree[treeDengue[7][0]] ?? false) == false) {
          if ((tree[treeDengue[9][0]] ?? false) == false) {
            return StatusDengue.kidneyStones;
          } else {
            return StatusDengue.pyelonephritis;
          }
        } else {
          return StatusDengue.chronicKidneyDisease;
        }
      } else {
        return StatusDengue.acuteKidneyFailure;
      }
    }
  }
}

  // // دالة التشخيص بناءً على الإجابات.
  // // شجرة القرار
  // StatusDengue diagnose() {
  //   if ((tree[treeDengue[6][0]] ?? false) == false) {
  //     if ((tree[treeDengue[3][0]] ?? false) == false) {
  //       if ((tree[treeDengue[11][0]] ?? false) == false) {
  //         if ((tree[treeDengue[7][0]] ?? false) == false) {
  //           if ((tree[treeDengue[2][0]] ?? "") == false) {
  //             return StatusDengue.pyelonephritis;
  //           } else {
  //             if ((tree[treeDengue[5][0]] ?? false) == false) {
  //               return StatusDengue.kidneyCancer;
  //             } else {
  //               return StatusDengue.pyelonephritis;
  //             }
  //           }
  //         } else {
  //           return StatusDengue.chronicKidneyDisease;
  //         }
  //       } else {
  //         if ((tree[treeDengue[10][0]] ?? false) == false) {
  //           return StatusDengue.renalCellCarcinoma;
  //         } else {
  //           return StatusDengue.pyelonephritis;
  //         }
  //       }
  //     } else {
  //       // فحص للحالات الأخرى في شجرة القرار
  //       if ((tree[treeDengue[4][0]] ?? false) == false) {
  //         if ((tree[treeDengue[2][0]] ?? "") == false) {
  //           return StatusDengue.chronicKidneyDisease;
  //         } else {
  //           if ((tree[treeDengue[8][0]] ?? false) == false) {
  //             return StatusDengue.pyelonephritis;
  //           } else {
  //             return StatusDengue.chronicKidneyDisease;
  //           }
  //         }
  //       } else {
  //         if ((tree[treeDengue[2][0]] ?? "") == false) {
  //           return StatusDengue.chronicKidneyDisease;
  //         } else {
  //           return StatusDengue.kidneyInfection;
  //         }
  //       }
  //     }
  //   } else {
  //     // جزء آخر من شجرة القرار
  //     if ((tree[treeDengue[2][0]] ?? false) == false) {
  //       if ((tree[treeDengue[7][0]] ?? false) == false) {
  //         if ((tree[treeDengue[9][0]] ?? false) == false) {
  //           return StatusDengue.kidneyStones;
  //         } else {
  //           return StatusDengue.pyelonephritis;
  //         }
  //       } else {
  //         return StatusDengue.chronicKidneyDisease;
  //       }
  //     } else {
  //       return StatusDengue.acuteKidneyFailure;
  //     }
  //   }
  // }
//}
