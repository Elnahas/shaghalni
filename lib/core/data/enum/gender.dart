enum Gender {
  male,
  female,
  both,
}


extension GenderExtension on Gender {
  String toShortString() {
    return toString().split('.').last;
  }

  static Gender fromString(String status) {
    return Gender.values.firstWhere((e) => e.toShortString() == status);
  }
}