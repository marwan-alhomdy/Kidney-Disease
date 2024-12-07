import 'package:kidney_disease/core/Animation/animation_column_widget.dart';
import 'package:kidney_disease/core/constant/image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../core/constant/cache.dart';
import '../core/utils/style_text.dart';
import '../controller/tree.dart';
import '../helper/cache_helper.dart';
import 'prevention.view.dart';

class CheckupView extends StatefulWidget {
  static const routeName = "/CheckupView";

  const CheckupView({super.key});

  @override
  State<CheckupView> createState() => _CheckupViewState();
}

class _CheckupViewState extends State<CheckupView> {
  final kidneyDiagnosisTree = KidneyDiagnosisTree();
  int indexPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(TypeImage.CHECKUP.name.tr, style: mainTextStyle),
          centerTitle: true),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: (indexPage == kidneyDiagnosisTree.treeDengue.length)
              ? getReuslt(kidneyDiagnosisTree)
              : AnimationColumnWidget(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    Center(
                      child: Image.asset("assets/icons/examination.png",
                          width: 120, height: 120, fit: BoxFit.fill),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      kidneyDiagnosisTree.treeDengue[indexPage][0]
                          .toString()
                          .tr,
                      style: mainTextStyle.copyWith(fontSize: 18),
                    ),
                    RadioListTile(
                      title: Text("Yes".tr, style: mainTextStyle),
                      value: true,
                      groupValue: kidneyDiagnosisTree
                          .tree[kidneyDiagnosisTree.treeDengue[indexPage][0]],
                      onChanged: (value) => setState(() {
                        kidneyDiagnosisTree.tree[kidneyDiagnosisTree
                            .treeDengue[indexPage][0]] = value;
                      }),
                    ),
                    RadioListTile(
                      title: Text("No".tr, style: mainTextStyle),
                      value: false,
                      groupValue: kidneyDiagnosisTree
                          .tree[kidneyDiagnosisTree.treeDengue[indexPage][0]],
                      onChanged: (value) => setState(() {
                        kidneyDiagnosisTree.tree[kidneyDiagnosisTree
                            .treeDengue[indexPage][0]] = value;
                      }),
                    ),
                    ElevatedButton(
                      onPressed: (kidneyDiagnosisTree.tree[kidneyDiagnosisTree
                                  .treeDengue[indexPage][0]] ==
                              null)
                          ? () {}
                          : () => setState(() => indexPage++),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                      ),
                      child: Text('Next'.tr, style: mainTextStyle),
                    ),
                  ],
                ),
        ),
      ),
    );
  }

  Widget getReuslt(KidneyDiagnosisTree tree) {
    final statusDengue = tree.diagnose();
    final reuslt = (CacheHelper.getString(LANGUAGE) == 'ar')
        ? statusDengue.arabicTitle
        : statusDengue.title;

    return Column(
      children: [
        Text(
          "Types of Dengue fever".tr.toUpperCase(),
          style: mainTextStyle.copyWith(fontSize: 20),
        ),
        Image.asset(
          "assets/icons/dengue2.png",
          color: statusDengue.color,
        ),
        Text(reuslt, style: mainTextStyle),
        const SizedBox(height: 10),
        Text("Please visit a specialist doctor.".tr, style: mainTextStyle),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () => Get.to(() => const PreventionView()),
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 20),
          ),
          child: Text("Prevention".tr, style: mainTextStyle),
        ),
      ],
    );
  }
}
