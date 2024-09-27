import 'package:flutter/material.dart';

import '../core/Animation/animation_column_widget.dart';
import '../core/constant/colors.dart';
import '../core/utils/style_text.dart';

class ReportWidget extends StatelessWidget {
  const ReportWidget(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.description});
  final String imageUrl;
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: scecondaryColor,
          foregroundColor: Colors.white,
          title: Text(
            title,
            style: mainTextStyle.copyWith(
              color: Colors.white,
            ),
            //
          ),
          centerTitle: true),
      body: SizedBox(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: AnimationColumnWidget(children: [
              Image.asset(imageUrl, width: 150, height: 150, fit: BoxFit.fill),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                child: Text(description,
                    textAlign: TextAlign.start, style: mainTextStyle),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
