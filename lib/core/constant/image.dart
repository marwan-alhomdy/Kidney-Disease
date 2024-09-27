// ignore: constant_identifier_names
enum TypeImage {
  // ignore: constant_identifier_names
  CHECKUP("Checkup"),
  // ignore: constant_identifier_names
  PREVENTION("Prevention"),
  // ignore: constant_identifier_names
  TREATMENT("Treatment"),
  // ignore: constant_identifier_names
  CLINICAL_DIAGNOSIS("Clinical Diagnosis"),
  // ignore: constant_identifier_names
  SYMPTOMS("Symptoms");

  const TypeImage(this.name);
  final String name;
}

extension TypeImageInMarkerX on TypeImage {
  String value() {
    switch (this) {
      case TypeImage.CHECKUP:
        return "assets/icons/medical-checkup.png";
      case TypeImage.PREVENTION:
        return "assets/icons/coronavirus.png";
      case TypeImage.TREATMENT:
        return "assets/icons/syringe.png";
      case TypeImage.CLINICAL_DIAGNOSIS:
        return "assets/icons/cardiogram.png";
      case TypeImage.SYMPTOMS:
        return "assets/icons/fever.png";
    }
  }
}
