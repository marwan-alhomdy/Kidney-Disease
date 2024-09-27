import 'package:dengue_fever/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrographHeaderPonint extends StatelessWidget {
  final String typeText;
  final dynamic value;
  const PrographHeaderPonint(
      {super.key, required this.typeText, required this.value});
  @override
  Widget build(BuildContext context) {
    if (typeText.contains("Header")) {
      return Header(dataHeadrt: value);
    } else if (typeText.contains("Prograph")) {
      return Prograph(dataPrograph: value);
    } else if (typeText.contains("Points")) {
      return Points(dataPonint: value);
    } else {
      return const SizedBox();
    }
  }
}

class Prograph extends StatelessWidget {
  final String dataPrograph;
  const Prograph({super.key, required this.dataPrograph});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      width: Get.width,
      child: Text(
        dataPrograph,
        textAlign: TextAlign.justify,
        strutStyle: const StrutStyle(
          fontSize: 16,
        ),
        style: const TextStyle(
          fontSize: 14,
          color: Colors.blueGrey,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  final String dataHeadrt;
  const Header({super.key, required this.dataHeadrt});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(10),
      width: Get.width,
      color: scecondaryColor,
      child: Text(
        dataHeadrt,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class Points extends StatelessWidget {
  final List<String> dataPonint;
  const Points({super.key, required this.dataPonint});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          ...List.generate(
              dataPonint.length,
              (index) => Container(
                  margin: const EdgeInsets.only(bottom: 0, left: 20, right: 20),
                  width: Get.width,
                  child: Text.rich(
                    TextSpan(
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          const TextSpan(
                            text: ". ",
                            style: TextStyle(
                              fontSize: 40,
                              color: scecondaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: dataPonint[index],
                          ),
                        ]),
                    textAlign: TextAlign.start,
                  )))
        ],
      ),
    );
  }
}
