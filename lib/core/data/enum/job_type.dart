enum JobType {

  fullTime,
  partTime,
  contract,
  temporary,
  internship,
  volunteer

}

extension JobTypeExtension on JobType {
  String toShortString() {
    return toString().split('.').last;
  }

  static JobType fromString(String status) {
    return JobType.values.firstWhere((e) => e.toShortString() == status);
  }
}